using SmartPixie.Net;
using System;
using System.Data;

public class Blog
{
	private static DataTable list(DateTime? startDate, DateTime? endDate)
	{
		string sql = "SELECT * FROM Blog";
		
		if (startDate != null)
			sql += " WHERE DateAdded >= @startDate AND DateAdded < @endDate";
		
		sql += " ORDER BY DateAdded DESC";

		return new SqlTools().GetTable(sql, "@startDate", startDate, "@endDate", endDate);
	}

	public static DataTable List()
	{
		return list(null, null);
	}

	public static DataTable List(DateTime startDate, DateTime endDate)
	{
		return list(startDate, endDate);
	}

	public static int Add(string title, string text)
	{
		return (int)new SqlTools().GetScalar(@"
			INSERT INTO Blog(Title, Text, DateAdded) VALUES(@title, @text, @dateAdded)
			SELECT CAST(SCOPE_IDENTITY() AS int)",
			"@title", title, "@text", text, "@dateAdded", DateTimeTools.Now);
	}

}
