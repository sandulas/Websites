using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Neurocare;

public partial class Default : System.Web.UI.Page
{
	protected string GalleryTitle, ImageUrl;

	string galleriesRootPath = "~/Files/Fotografii/";
	string galleryPath;

  protected void Page_Load(object sender, EventArgs e)
  {
		GalleriesRepeater.DataSource = Directory.GetDirectories(Server.MapPath(galleriesRootPath));
		GalleriesRepeater.DataBind();

		//X.DataSource = Directory.GetFiles(Server.MapPath("~/Files/Fotografii/Readers/"), "*.jpg");
		//X.DataBind();

		//Session.Add("Gallery_Readers", Directory.GetFiles(Server.MapPath("~/Files/Fotografii/Readers")));
  }

	protected void GalleriesRepeater_ItemCreated(object sender, RepeaterItemEventArgs e)
	{
		GalleryTitle = Path.GetFileName(e.Item.DataItem.ToString());
		galleryPath = galleriesRootPath + Path.GetFileName(e.Item.DataItem.ToString()) + "/";
		
		Repeater PhotosRepeater = (Repeater)e.Item.FindControl("PhotosRepeater");
		PhotosRepeater.DataSource = Directory.GetFiles(e.Item.DataItem.ToString(), "*.jpg");
	}

	protected void PhotosRepeater_ItemCreated(object sender, RepeaterItemEventArgs e)
	{
		ImageUrl = AppTools.Page.ResolveUrl(galleryPath + Path.GetFileName(e.Item.DataItem.ToString()));
	}
}
