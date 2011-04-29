using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Admin_AddBlog : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
	}

	protected void AddButton_Click(object sender, EventArgs e)
	{
		if (Master.IsRefresh) return;
		
		Blog.Add(TitleTextBox.Text.Trim(), TextTextBox.Text.Trim());

		Response.Redirect("~/_admin/manageblog.aspx");
	}

}
