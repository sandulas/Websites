using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class App_Controls_Button : System.Web.UI.UserControl
{
	private string text;
	public string Text
	{
		get { return text; }
		set { text = value; HyperLinkLiteral.Text = text; LinkButtonLiteral.Text = text; }
	}

	public string NavigateUrl
	{
		get { return TheHyperLink.NavigateUrl; }
		set { TheHyperLink.NavigateUrl = value; }
	}

	public string Target
	{
		get { return TheHyperLink.Target; }
		set { TheHyperLink.Target = value; }
	}

	public event EventHandler Click;

	protected void Page_Load(object sender, EventArgs e)
  {
  }

	protected void TheLinkButton_Click(object sender, EventArgs e)
	{
		if (Click != null) Click(sender, e);
	}

	protected override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);

		if (Click != null)
			TheLinkButton.Visible = true;
		else
			TheHyperLink.Visible = true;
	}
}
