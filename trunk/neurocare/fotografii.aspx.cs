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
	protected string GalleryTitle, GalleryDescription, ThumbUrl, ImageUrl, MarginRight, GalleryNumber;
	protected int CurrentGallery;

	string galleryFolder;

  protected void Page_Load(object sender, EventArgs e)
  {
		try { CurrentGallery = int.Parse(Request.QueryString["gallery"]); }
		catch { CurrentGallery = -1; }

		GalleriesRepeater.DataSource = PhotoGallery.Items;
		GalleriesRepeater.DataBind();
  }

	protected void GalleriesRepeater_ItemCreated(object sender, RepeaterItemEventArgs e)
	{
		PhotoGallery.Item gallery = (PhotoGallery.Item)e.Item.DataItem;

		GalleryTitle = gallery.Title;
		GalleryDescription = gallery.Description;
		GalleryNumber = e.Item.ItemIndex.ToString();
		galleryFolder = gallery.Folder;
		
		Repeater PhotosRepeater = (Repeater)e.Item.FindControl("PhotosRepeater");
		PlaceHolder ShowMoreHolder = (PlaceHolder)e.Item.FindControl("ShowMoreHolder");

		if (e.Item.ItemIndex == CurrentGallery || gallery.Images.Length <= 4 || PhotoGallery.Items.Length == 1)
		{
			ShowMoreHolder.Visible = false;
			PhotosRepeater.DataSource = gallery.Images;
		}
		else
		{
			ShowMoreHolder.Visible = true;
			PhotosRepeater.DataSource = gallery.Images.Take<string>(3);
		}

	}

	protected void PhotosRepeater_ItemCreated(object sender, RepeaterItemEventArgs e)
	{
		ThumbUrl = PhotoGallery.GetThumbUrl(galleryFolder, e.Item.DataItem.ToString());
		ImageUrl = PhotoGallery.GetImageUrl(galleryFolder, e.Item.DataItem.ToString());

		if ((e.Item.ItemIndex + 1) % 4 == 0) MarginRight = "";
		else MarginRight = "margin-right: 8px; ";
	}

	protected void Page_PreRender(object sender, EventArgs e)
	{
		if (Language.GetCurrent() != (int)Languages.Romanian) Response.Redirect("~/");
	}
}
