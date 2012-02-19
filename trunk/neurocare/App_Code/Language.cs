using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Globalization;

namespace Neurocare
{
	public class Language
	{
		public static int[] GetAllLanguages()
		{
			return (int[])Enum.GetValues(typeof(Languages));
		}

		public static int[] GetFallbackLanguage()
		{
			int[] fall = new int[1];
			fall[0] = (int)Languages.Romanian;
			return fall;
		}

		public static int GetCurrent()
		{
			return (int)Languages.Romanian;
		}

		public static string GetPath(int languageId)
		{
			string path = "~/App/Translations/";

			return path + languageId + ".xml";
		}

		public static string GetNamedPath(int languageId, string name)
		{
			string path = "~/App/Translations/";

			return path + languageId + name + ".xml";
		}
	}

	public enum Languages : int
	{
		Romanian = 1,
		English = 2
	}
}
