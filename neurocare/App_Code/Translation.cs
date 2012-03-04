using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Xml;
using System.Xml.Linq;
using System.IO;

namespace Neurocare
{
	/*
	void Application_Start(object sender, EventArgs e)
	{
		Translation.Customize(Ui.CountryIdsForTranslation, Url.Translation, Url.Translation, App.Logic.User.GetCurrentUiCountryId);
		Translation.Reload();
	}
	*/ 

	public static class Translation
	{
		private static string defaultSection;

		private static Dictionary<int, XDocument> translations = new Dictionary<int, XDocument>();
		private static int[] fallbackLanguageIds;
		private static Dictionary<int, XDocument> translationsSubLanguages = new Dictionary<int, XDocument>();

		public delegate int[] GetLanguageIds();
		public delegate int GetCurrentLanguageId();
		public delegate string GetDefaultPath(int languageId);
		public delegate string GetNamedPath(int languageId, string name);

		public delegate int? GetCurrentSubLanguageId();
		public delegate string GetSubLanguageDefaultPath(int languageId,int subLanguageId);
		public delegate string GetSubLanguageNamedPath(int languageId,int subLanguageId, string name);
		public delegate int[] GetSubLanguageIds();

		private static GetLanguageIds getLanguageIds;
		private static GetLanguageIds getFallbackLanguageIds;
		private static GetCurrentLanguageId getCurrentLanguageId;
		private static GetDefaultPath getDefaultPath;
		private static GetNamedPath getNamedPath;

		private static GetCurrentSubLanguageId getCurrentSubLanguageId;
		private static GetSubLanguageIds getSubLanguageIds;
		private static GetSubLanguageDefaultPath getSubLanguageDefaultPath;
		private static GetSubLanguageNamedPath getSubLanguageNamedPath;

		private static string referenceSystemPathToDir;
		private static bool saveReferences;


		public static void Customize(GetLanguageIds getLanguageIds, GetLanguageIds getFallbackLanguageIds, GetDefaultPath getDefaultPath, GetNamedPath getNamedPath, GetCurrentLanguageId getCurrentLanguageId)
		{
			Customize("Common", getLanguageIds, getFallbackLanguageIds, getDefaultPath, getNamedPath, getCurrentLanguageId);
		}

		public static void Customize(string defaultSection, GetLanguageIds getLanguageIds, GetLanguageIds getFallbackLanguageIds, GetDefaultPath getDefaultPath, GetNamedPath getNamedPath, GetCurrentLanguageId getCurrentLanguageId)
		{
			Translation.defaultSection = defaultSection;

			Translation.getLanguageIds = getLanguageIds;
			Translation.getFallbackLanguageIds = getFallbackLanguageIds;
			Translation.getCurrentLanguageId = getCurrentLanguageId;
			Translation.getDefaultPath = getDefaultPath;
			Translation.getNamedPath = getNamedPath;
		}

		public static void Customize(GetLanguageIds getLanguageIds, GetLanguageIds getFallbackLanguageIds, GetDefaultPath getDefaultPath, GetNamedPath getNamedPath, GetCurrentLanguageId getCurrentLanguageId,
			GetSubLanguageIds getSubLanguageIds, GetCurrentSubLanguageId getCurrentSubLanguageId, 
			GetSubLanguageDefaultPath getSubLanguageDefaultPath, GetSubLanguageNamedPath getSubLanguageNamedPath)
		{
			Customize("Common", getLanguageIds, getFallbackLanguageIds,
				getDefaultPath, getNamedPath, getCurrentLanguageId,
				getSubLanguageIds, getCurrentSubLanguageId, getSubLanguageDefaultPath, getSubLanguageNamedPath);
		}

		public static void Customize(string defaultSection, GetLanguageIds getLanguageIds, GetLanguageIds getFallbackLanguageIds, GetDefaultPath getDefaultPath, GetNamedPath getNamedPath, GetCurrentLanguageId getCurrentLanguageId,
			GetSubLanguageIds getSubLanguageIds, GetCurrentSubLanguageId getCurrentSubLanguageId, 
			GetSubLanguageDefaultPath getSubLanguageDefaultPath, GetSubLanguageNamedPath getSubLanguageNamedPath)
		{
			Customize(defaultSection, getLanguageIds, getFallbackLanguageIds, 
				getDefaultPath,getNamedPath, getCurrentLanguageId);
			
			Translation.getSubLanguageIds = getSubLanguageIds;
			Translation.getCurrentSubLanguageId = getCurrentSubLanguageId;
			Translation.getSubLanguageDefaultPath = getSubLanguageDefaultPath;
			Translation.getSubLanguageNamedPath = getSubLanguageNamedPath;
		}

		public static void CustomizeReferences(string systemPathToDir)
		{
			referenceSystemPathToDir = systemPathToDir;
		}

		public static void CustomizeReferences(bool saveReferences)
		{
			Translation.saveReferences = saveReferences ;
		}

		public static void SaveReference(string text, string section,string name)
		{
			if (!saveReferences)
				return;

			try
			{
				XDocument xdoc = ReferenceNamedXDoc(name);

				if (xdoc.Root.Element(section) == null)
					xdoc.Root.Add(new XElement(section));

				var url = AppTools.Request.Path.Replace(AppTools.Request.ApplicationPath, "");
				if (xdoc.Root.Element(section).Element(text) == null)
					xdoc.Root.Element(section).Add(new XElement(text));

				if (xdoc.Root.Element(section).Element(text).Elements("url")
					.Where(w => ((XCData)w.FirstNode).Value == url).Count() == 0)
					xdoc.Root.Element(section).Element(text).Add(new XElement("url", new XCData(url)));

				if (section.ToLower() != "common")
				{
					section = "Common";
					if (xdoc.Root.Element(section) == null)
						xdoc.Root.Add(new XElement(section));

					url = AppTools.Request.Path.Replace(AppTools.Request.ApplicationPath, "");
					if (xdoc.Root.Element(section).Element(text) == null)
						xdoc.Root.Element(section).Add(new XElement(text));

					if (xdoc.Root.Element(section).Element(text).Elements("url")
						.Where(w => ((XCData)w.FirstNode).Value == url).Count() == 0)
						xdoc.Root.Element(section).Element(text).Add(new XElement("url", new XCData(url)));
				}

				xdoc.Save(ReferenceNamedSystemPath(name));
			}
			catch { }
		}

		public static void Reload()
		{
			translations.Clear();

			fallbackLanguageIds = null;

			foreach (int id in getLanguageIds())
				translations[id] = XDoc(id);

			if(getSubLanguageIds != null)
				foreach (int subLanguageId in getSubLanguageIds())
					foreach (int languageId in getLanguageIds())
					{
						var xdoc = XDoc(languageId, subLanguageId);
						if(xdoc!=null)
							translationsSubLanguages[subLanguageId] = xdoc;
					}
		}

		public static string T(this XElement text, params object[] parameters)
		{
			return injectParameters(text.Value, parameters);
		}

		public static string T(this string text, string section, params object[] parameters)
		{
			return t(text, section, null, parameters);
		}
		public static string T(this string text, string section, int languageId, params object[] parameters)
		{
			return t(text, section, languageId, parameters);
		}
		public static string T(this string text, string section, XDocument xDoc, params object[] parameters)
		{
			return t(text, section, xDoc, parameters);
		}
		private static string t(string text, string section, object source, params object[] parameters)
		{
			return injectParameters(t(text, section, source), parameters);
		}
		private static string injectParameters(string text, object[] parameters)
		{
			if (parameters.Length % 2 != 0)
				throw new Exception("Parameters count must be even.");

			for (int i = 0; i < parameters.Length; i++)
				text = text.Replace("##" + parameters[i].ToString() + "##", parameters[++i].ToString());

			return text;
		}


		public static string T(this string text)
		{
			return T(text, null);
		}
		public static string T(this string text, string section)
		{
			return t(text, section, null);
		}
		public static string T(this string text, string section, int languageId)
		{
			return t(text, section, languageId);
		}
		public static string T(this string text, string section, XDocument xDoc)
		{
			return t(text, section, xDoc);
		}
		private static string t(string text, string section, object source)
		{
			if (string.IsNullOrEmpty(text))
				return null;

			SaveReference(text, section, null);

			try
			{
				return TText(text, tSectionSubLanguage(section, source));
			}
			catch { }

			try
			{
				return TText(text, tSectionSubLanguage(defaultSection, source));
			}
			catch { }
			
			try
			{
				return TText(text, tSection(section, source));
			}
			catch { }

			try
			{
				return TText(text, tSection(defaultSection, source));
			}
			catch { }

			return Placeholder(section, text);
		}

		public static XElement TSection(this string section)
		{
			return tSection(section, null);
		}
		public static XElement TSection(this string section, int languageId)
		{
			return tSection(section, languageId);
		}
		
		public static XElement TSection(this string section, XDocument xDoc)
		{
			return tSection(section, xDoc);
		}

		private static XElement tSection(this string section, object source)
		{
			XDocument xDoc = null;

			if(source == null)
				xDoc = translations[getCurrentLanguageId()];

			if(source is int)
				xDoc = translations[(int)source];

			if(source is XDocument)
				xDoc = (XDocument)source;

			if (xDoc == null)
				throw new Exception("source is not valid");

			try
			{
				return xDoc.Root.Element(section);
			}
			catch
			{
				return null;
			}
		}

		private static XElement tSectionSubLanguage(this string section, object source)
		{
			XDocument xDoc = null;

			if (getSubLanguageIds != null && getCurrentSubLanguageId().HasValue)
			{
				if (source == null)
					xDoc = translationsSubLanguages[getCurrentSubLanguageId().Value];

				if (source is int)
					xDoc = translationsSubLanguages[(int)source];

				try
				{
					return xDoc.Root.Element(section);
				}
				catch
				{
					return null;
				}
			}

			return null;
		}

		public static string TText(this string text, XElement section)
		{
			string ret = section.Element(text).Value;
			
			ret = ret.Replace("##app_root##", AppTools.Request.ApplicationPath);
			
			return ret;
		}
		
		public static string TText(this string text, XElement section, params object[] parameters)
		{
			return injectParameters(section.Element(text).Value, parameters);
		}

		public static XDocument NamedXDoc(string name)
		{
			return NamedXDoc(getCurrentLanguageId(), name);
		}
		public static XDocument NamedXDoc(int languageId, string name)
		{
			return XDoc(getNamedPath(languageId, name));
		}

		public static XDocument NamedXDoc(int languageId, int subLanguageId, string name)
		{
			return XDoc(getSubLanguageNamedPath(languageId,subLanguageId, name));
		}

		public static XDocument SubLanguageNamedXDoc(string name)
		{
			return XDoc(getSubLanguageNamedPath(getCurrentLanguageId(), getCurrentSubLanguageId().Value, name));
		}

		public static XDocument XDoc(int languageId)
		{
			return XDoc(languageId, true);
		}
		
		public static XDocument XDoc(int languageId, bool fallback)
		{
			try
			{
				return XDoc(getDefaultPath(languageId));
			}
			catch
			{ }

			if (fallback)
			{
				if (fallbackLanguageIds == null)
					fallbackLanguageIds = getFallbackLanguageIds();

				foreach (int id in fallbackLanguageIds)
					try
					{
						return XDoc(getDefaultPath(id));
					}
					catch
					{ }
			}

			return new XDocument();
		}
		
		public static XDocument XDoc(int languageId,int subLanguageId)
		{

			try
			{
				return XDoc(getSubLanguageDefaultPath(languageId, subLanguageId));
			}
			catch
			{ }

			return null;
		}

		public static XDocument XDoc(string path)
		{
			return XDocument.Load(AppTools.Server.MapPath(path));
		}

		public static void CreateXDocIfNotExists(int languageId, int subLanguageId)
		{
			CreateXDocIfNotExists(languageId, subLanguageId, string.Empty);
		}

		public static void CreateXDocIfNotExists(int languageId, int subLanguageId, string name)
		{
			try
			{
				XDocument.Load(AppTools.Server.MapPath(string.IsNullOrEmpty(name) ? getSubLanguageDefaultPath(languageId, subLanguageId) :
				   getSubLanguageNamedPath(languageId, subLanguageId, name)));
				return;
			}
			catch
			{
			}

			XDocument xdoc = new XDocument();
			xdoc.Add(new XElement("translations"));
			xdoc.Save(AppTools.Server.MapPath(string.IsNullOrEmpty(name)?getSubLanguageDefaultPath(languageId,subLanguageId):
				getSubLanguageNamedPath(languageId,subLanguageId,name)));
		}


		public static XDocument ReferenceXDoc()
		{
			return ReferenceNamedXDoc(null);
		}

		public static XDocument ReferenceNamedXDoc(string name)
		{
			return XDocument.Load(ReferenceNamedSystemPath(name));
		}

		private static string ReferenceNamedSystemPath(string name)
		{
			name = string.IsNullOrEmpty(name) ? "" : "." + name;
			return string.Format("{0}/reference{1}.xml", referenceSystemPathToDir, name);
		}


		public static string Placeholder(object section, object text)
		{
			return "{" + section + "." + text + "}";
		}

		public static bool IsPlaceholder(string s)
		{
			return s.StartsWith("{") && s.EndsWith("}") && s.Contains(".");
		}

		public static void CopyLanguage(string copyFromPath, string saveToPath, bool overrideIfExists)
		{
			if (new FileInfo(AppTools.Server.MapPath(saveToPath)).Exists && !overrideIfExists)
				throw new ArgumentException(saveToPath + " already exists");

			if (!(new FileInfo(AppTools.Server.MapPath(copyFromPath)).Exists))
				throw new ArgumentException(copyFromPath + " doesn't exists");

			XDocument doc = Translation.XDoc(copyFromPath);

			foreach (var el in doc.Root.Elements().Descendants())
			{
				el.SetAttributeValue("notTranslated", "");
			}

			doc.Save(AppTools.Server.MapPath(saveToPath));
		}
		

	}
}