using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blog : System.Web.UI.Page
{
	int? id;
	
	protected void Page_Load(object sender, EventArgs e)
  {
		Master.ShowMainImage = false;

		try { id = int.Parse(Request.QueryString["id"]); }
		catch { id = null; }

  }
	protected override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);

		if (id == null) BlogListHolder.Visible = true;
		else BlogItemHolder.Visible = true;
	}
}
