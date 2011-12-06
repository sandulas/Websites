using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BlogPage : System.Web.UI.Page
{
	protected int? id;
	protected DataRow BlogDataRow;
	protected string BlogTitle;

	protected void Page_Load(object sender, EventArgs e)
  {
		Master.ShowMainImage = false;

		try { id = int.Parse(Request.QueryString["id"]); }
		catch { id = null; }

		BlogTitle=string.Empty;

		if (id == null)
		{
			BlogRepeater.DataSource = Blog.List();
			BlogRepeater.DataBind();
		}
		else
		{
			BlogDataRow = Blog.Get((int)id);
			BlogItemHolder.DataBind();
			BlogTitle = " - " + BlogDataRow["Title"].ToString();
		}
  }
	protected override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);

		if (id == null) BlogListHolder.Visible = true;
		else BlogItemHolder.Visible = true;
	}
}
