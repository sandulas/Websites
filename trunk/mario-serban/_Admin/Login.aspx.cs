using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SmartPixie.Net;

public partial class _Admin_Login : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
  }

	protected void SubmitButton_Click(object sender, EventArgs e)
	{
		if (UsernameTextBox.Text.Trim().ToLower() == AppTools.AppSettings("AdminUsername").ToLower() &&
				PasswordTextBox.Text == AppTools.AppSettings("AdminPassword"))
		{
			Session["Authenticated"] = "yes";
			Response.Redirect("~/_admin/manageblog.aspx");
		}
		else
		{
			ErrorHolder.Visible = true;
		}
	}
}
