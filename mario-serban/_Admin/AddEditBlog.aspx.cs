using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Admin_AddEditBlog : System.Web.UI.Page
{
	int? id;
	protected DataRow BlogDataRow;

	protected void Page_Load(object sender, EventArgs e)
	{
		try { id = int.Parse(Request.QueryString["id"]); }
		catch { id = null; }

		if (!IsPostBack)
		{
			if (id != null)
			{
				TitleLiteral.Text = "Edit Blog Post";
				AddUpdateButton.Text = "Update";
				DeleteButton.Visible = true;

				BlogDataRow = Blog.Get((int)id);
				TitleTextBox.Text = BlogDataRow["Title"].ToString();
				TextTextBox.Text = BlogDataRow["Text"].ToString();
				DateLiteral.Text = "Date: " + BlogDataRow["DateAdded"].ToDateString() + "<br /><br/>";
			}
			else
			{
				TitleLiteral.Text = "Add Blog Post";
				AddUpdateButton.Text = "Add";
			}
		}
	}

	protected void AddUpdateButton_Click(object sender, EventArgs e)
	{
		if (Master.IsRefresh) return;

		if (TitleTextBox.Text.Trim() == string.Empty || TextTextBox.Text.Trim() == string.Empty)
		{
			ErrorLabel.Visible = true;
			return;
		}
		if (id == null)
			Blog.Add(TitleTextBox.Text.Trim(), TextTextBox.Text.Trim());
		else
			Blog.Update((int)id, TitleTextBox.Text.Trim(), TextTextBox.Text.Trim());

		Response.Redirect("~/_admin/manageblog.aspx");
	}

	protected void CancelButton_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/_admin/manageblog.aspx");
	}

	protected void DeleteButton_Click(object sender, EventArgs e)
	{
		Blog.Delete((int)id);
		Response.Redirect("~/_admin/manageblog.aspx");
	}
}
