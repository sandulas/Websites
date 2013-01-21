using System;
using System.IO;
using Neurocare;
using System.Xml.Linq;


public class PhotoGallery
{
	public struct Item
	{
		public string Folder;
		public string Title;
		public string Description;
		public string[] Images;
	}

	
	static string RootPath = "~/Files/Fotografii/";

	public static Item[] Items;
	
	public static void LoadGalleries()
	{
		string[] folders = Directory.GetDirectories(AppTools.Server.MapPath(RootPath), "????_*");
		Items = new Item[folders.Length];

		XDocument xml;
		for (int i = 0; i < folders.Length; i++)
		{
			xml = XDocument.Load(folders[i] + @"\Gallery.xml");
			

			Items[i].Folder = Path.GetFileName(folders[i]);
			Items[i].Title = xml.Root.Element("title").Value;
			Items[i].Description = xml.Root.Element("description").Value;
			Items[i].Images = Directory.GetFiles(folders[i], "*.Thumb.jpg");

			for (int j = 0; j < Items[i].Images.Length; j++)
				Items[i].Images[j] = Path.GetFileName(Items[i].Images[j]);
		}
	}

	public static string GetImageUrl(string galleryFolderName, string imageFileName)
	{
		return AppTools.Page.ResolveUrl(RootPath + galleryFolderName + "/" + imageFileName.Replace(".Thumb", ""));
	}
	public static string GetThumbUrl(string galleryFolderName, string imageFileName)
	{
		return AppTools.Page.ResolveUrl(RootPath + galleryFolderName + "/" + imageFileName);
	}
}
