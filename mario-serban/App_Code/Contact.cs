using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SmartPixie.Net;
using System.Net.Mail;

public class Contact
{
	public static int Add(string name, string email, string message)
	{
		return (int)new SqlTools().GetScalar(@"
			INSERT INTO Contact(Name, Email, Message, DateAdded) VALUES(@name, @email, @message, @dateAdded)
			SELECT CAST(SCOPE_IDENTITY() AS int)",
			"@name", name, "@email", email, "@message", message, "@dateAdded", DateTimeTools.Now);
	}

	public static void Send(string name, string email, string message)
	{
		string subject = "Mario Serban Therapy - New Contact Message - " + name;
		string body = @"
			<div style=""font-family: Arial, Verdana, Tahoma; font-size: 12px;"">" +
			"	<b>Name:</b> " + name + "<br />" +
			"	<b>Email:</b> " + email + "<br />" +
			"	<b>Message:<br/></b>" + message+ "<br /><br />" +
			"	<b>Date/Time:</b> " + DateTimeTools.Now.ToDateTimeString() + "<br />" +
			"</div>";

		SendMail(AppTools.AppSettings("ContactEmail"), subject, body);
	}

	public static void SendMail(string to, string subject, string body)
	{
		SmtpClient smtp = new SmtpClient();
		MailMessage message = new MailMessage();
		message.To.Add(new MailAddress(to));
		message.Subject = subject;
		message.Body = body;

		message.IsBodyHtml = true;
		message.BodyEncoding = System.Text.Encoding.UTF8;
		message.SubjectEncoding = System.Text.Encoding.UTF8;

		smtp.Send(message);
	}
}
