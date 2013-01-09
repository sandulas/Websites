using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Neurocare;

public partial class Main : System.Web.UI.MasterPage
{
	protected string ContentCssClass;
	public int HeaderNr;

	protected void Page_Load(object sender, EventArgs e)
	{
		//RoButton.Visible = false;
		//EnButton.Visible = false;
		
		if (Request.Url.Host.ToLower() == "www.neurocare.ro")
		{
			string destination = Request.Url.AbsoluteUri.ToLower().Replace("http://www.neurocare.ro", "http://neurocare.ro");
			destination = destination.Replace("http://neurocare.ro/default.aspx", "http://neurocare.ro/");
			Response.Redirect(destination);
			return;
		}

		switch (Request.AppRelativeCurrentExecutionFilePath.ToLower())
		{
			case "~/default.aspx":
				HeaderNr = 1;
				MenuItem1.Attributes.Add("class", "Selected");
				FacebookLink.Visible = false;
				break;
			case "~/scop-si-obiective.aspx":
				HeaderNr = 2;
				MenuItem2.Attributes.Add("class", "Selected");
				break;
			case "~/cazuri/default.aspx":
				HeaderNr = 1;
				MenuItem3.Attributes.Add("class", "Selected");
				break;
			case "~/cazuri/povestea-sorinei.aspx":
				HeaderNr = 2;
				MenuItem3.Attributes.Add("class", "Selected");
				break;
			case "~/cazuri/darius-preda.aspx":
				HeaderNr = 1;
				MenuItem3.Attributes.Add("class", "Selected");
				break;
			case "~/cazuri/un-alt-fel-de-exercitiu-de-admiratie.aspx":
				HeaderNr = 2;
				MenuItem3.Attributes.Add("class", "Selected");
				break;
			case "~/presa/default.aspx":
				HeaderNr = 2;
				MenuItem4.Attributes.Add("class", "Selected");
				break;
			case "~/presa/barbatul-care-a-invins-patru-forme-de-cancer-intr-un-an.aspx":
				HeaderNr = 1;
				MenuItem4.Attributes.Add("class", "Selected");
				break;
			case "~/sponsori.aspx":
				HeaderNr = 2;
				MenuItem5.Attributes.Add("class", "Selected");
				break;
			case "~/doneaza.aspx":
				HeaderNr = 1;
				MenuItem6.Attributes.Add("class", "Selected");
				break;
			case "~/fotografii.aspx":
				HeaderNr = 2;
				MenuItem7.Attributes.Add("class", "Selected");
				break;
			case "~/contact.aspx":
				HeaderNr = 1;
				MenuItem8.Attributes.Add("class", "Selected");
				break;
			default:
				HeaderNr = 1;
				break;
		}

		/*
		foreach (Control c in MainMenuList.Controls)
		{
			HtmlGenericControl menuItem;
			if (c is HtmlGenericControl)
			{
				menuItem = (HtmlGenericControl)c;
				if (Request.AppRelativeCurrentExecutionFilePath.ToLower() == "~/default.aspx" && menuLink.NavigateUrl == "~/")
					menuLink.CssClass = "Selected";
				else if (Request.AppRelativeCurrentExecutionFilePath == menuLink.NavigateUrl)
					menuLink.CssClass = "Selected";
			}
		}
		*/

		if (Page.Master.GetType() == typeof(ASP.main_master)) ContentCssClass = "ContentFull";
		else ContentCssClass = "ContentColumns";

	}

	protected void RoButton_Click(object sender, EventArgs e)
	{
		Session["Language"] = 1;
	}

	protected void EnButton_Click(object sender, EventArgs e)
	{
		Session["Language"] = 2;
	}

	protected override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		if (Language.GetCurrent() == (int)Languages.Romanian)
		{
			RoButton.CssClass = "Ro Selected";
			EnButton.CssClass = "En";
		}
		if (Language.GetCurrent() == (int)Languages.English)
		{
			EnButton.CssClass = "En Selected";
			RoButton.CssClass = "Ro";
		}
	}
	 
}
