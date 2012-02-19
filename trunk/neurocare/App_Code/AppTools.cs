using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;

namespace Neurocare
{
	public class AppTools
	{
		public static string AppSettings(string key)
		{
			return System.Configuration.ConfigurationManager.AppSettings[key];
		}

		//Get the url of the current request(including get params, excluding protocol and server name)
		public static string RequestedUrl()
		{
			string getParams = "";

			if (Request.QueryString.Count > 0)
				getParams = "?";

			for (int i = 0; i < Request.QueryString.Count; i++)
			{
				if (i != 0) getParams += "&";
				getParams += (Request.QueryString.GetKey(i) + "=" + Request.QueryString[i]);
			}
			return Server.UrlEncode(Request.ServerVariables["URL"] + getParams);
		}

		public static HttpServerUtility Server
		{
			get { return HttpContext.Current.Server; }
		}

		public static HttpSessionState Session
		{
			get { return HttpContext.Current.Session; }
		}

		public static HttpApplicationState Application
		{
			get { return HttpContext.Current.Application; }
		}

		public static HttpRequest Request
		{
			get { return HttpContext.Current.Request; }
		}

		public static HttpResponse Response
		{
			get { return HttpContext.Current.Response; }
		}

		public static Page Page
		{
			get { return (Page)HttpContext.Current.Handler; }
		}
	}
}
