using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BlogPage : System.Web.UI.Page
{
	int? id;
	protected DataRow BlogDataRow;

	protected void Page_Load(object sender, EventArgs e)
  {
		Master.ShowMainImage = false;

		try { id = int.Parse(Request.QueryString["id"]); }
		catch { id = null; }

		if (id == null)
		{
			BlogRepeater.DataSource = Blog.List();
			BlogRepeater.DataBind();
		}
		else
		{
			BlogDataRow = Blog.Get((int)id);
			BlogItemHolder.DataBind();
		}
  }
	protected override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);

		if (id == null) BlogListHolder.Visible = true;
		else BlogItemHolder.Visible = true;
	}
}
