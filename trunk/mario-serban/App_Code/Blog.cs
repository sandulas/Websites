using SmartPixie.Net;
using System;
using System.Data;

public class Blog
{
	private static DataTable list(DateTime? startDate, DateTime? endDate, int? count)
	{
		string sql = "";
		if (count != null)
			sql += "SET ROWCOUNT " + count.ToString() +  " ";

		sql += "SELECT * FROM Blog ";
		
		if (startDate != null)
			sql += "WHERE DateAdded >= @startDate AND DateAdded < @endDate ";
		
		sql += "ORDER BY DateAdded DESC ";

		return new SqlTools().GetTable(sql, "@startDate", startDate, "@endDate", endDate);
	}

	public static DataTable List()
	{
		return list(null, null, null);
	}

	public static DataTable List(int count)
	{
		return list(null, null, count);
	}

	public static DataTable List(DateTime startDate, DateTime endDate)
	{
		return list(startDate, endDate, null);
	}

	public static DataRow Get(int id)
	{
		return new SqlTools().GetRow("SELECT * FROM Blog WHERE Id = @id", "@id", id);
	}

	public static int Add(string title, string text)
	{
		return (int)new SqlTools().GetScalar(@"
			INSERT INTO Blog(Title, Text, DateAdded) VALUES(@title, @text, @dateAdded)
			SELECT CAST(SCOPE_IDENTITY() AS int)",
			"@title", title, "@text", text, "@dateAdded", DateTimeTools.Now);
	}

	public static void Update(int id, string title, string text)
	{
		new SqlTools().Execute(@"
			UPDATE Blog SET Title=@title, Text = @text
			WHERE Id = @id",
			"@title", title, "@text", text, "@id", id);
	}

	public static void Delete(int id)
	{
		new SqlTools().Execute(@"
			DELETE FROM Blog WHERE Id = @id",
			"@id", id);
	}
}
