using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SmartPixie.Net;

public partial class MainMaster : MyMasterPage
{
	public bool ShowMainImage
	{
		get { return MainImageHolder.Visible; }
		set { MainImageHolder.Visible = value; }
	}
	
	protected void Page_Load(object sender, EventArgs e)
  {
		if (BlogRepeater != null)
		{
			BlogRepeater.DataSource = Blog.List(1);
			BlogRepeater.DataBind();
		}
	}

	protected void SendButton_Click(object sender, EventArgs e)
	{
		if (IsRefresh) return;

		ContactMessageLabel.Visible = true;

		if (NameTextBox.Text.Trim() == string.Empty || EmailTextBox.Text.Trim() == string.Empty || MessageTextBox.Text.Trim() == string.Empty)
		{
			ContactMessageLabel.Text = "All fields are mandatory!";
			return;
		}
		if (!StringTools.EmailRegex.IsMatch(EmailTextBox.Text.Trim()))
		{
			ContactMessageLabel.Text = "The email address is invalid!";
			return;
		}

		Contact.Add(NameTextBox.Text.Trim(), EmailTextBox.Text.Trim(), MessageTextBox.Text.Trim());
		Contact.Send(NameTextBox.Text.Trim(), EmailTextBox.Text.Trim(), MessageTextBox.Text.Trim());

		ContactMessageLabel.Text = "Your message has been sent!";
	}
}
