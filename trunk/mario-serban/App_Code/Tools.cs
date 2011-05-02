using System;
using System.Text.RegularExpressions;
using SmartPixie.Net;

public static class Tools
{
	public static string ParagraphFormat(this object text)
	{
		string t = "<p>" + text;
		
		t = t.Replace("\r\n\r\n", "</p><p>").Replace("\r\r", "</p><p>").Replace("\n\n", "</p><p>");
		t = t.Replace("\r\n", "<br />").Replace("\r", "<br />").Replace("\n", "<br />");

		t += "</p>";

		return t;
	}

	public static string StripTags(this object html)
	{
		//http://www.4guysfromrolla.com/webtech/042501-1.shtml
		//suffers the bug: 5 < 8 and 9 > 3 => 5  3
		//suffers the bug: <img src="<%=Request("Value")%>"> => 5  3
		if (html == null)
			return String.Empty;
		Regex r = new Regex("<[^>]*>", RegexOptions.Compiled);

		return r.Replace(html.ToString(), string.Empty).Replace("<", "&lt;").Replace(">", "&gt;");
	}
	
	public static string CutToFit(this object source, int length)
	{
		string sourceString = AppTools.Server.HtmlDecode(source.StripTags());

		if (sourceString.Length > length)
			sourceString = sourceString.Substring(0, length).Trim() + "...";

		return AppTools.Server.HtmlEncode(sourceString);
	}

	public static string ToDateString(this object date)
	{
		return DateTimeTools.ToString(date, "MMMM d, yyyy");
	}
	
	public static string ToDateTimeString(this object date)
	{
		return DateTimeTools.ToString(date, "MMMM d, yyyy HH:mm");
	}
}
