using System;
using System.IO;
using Neurocare;


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
		string[] folders = Directory.GetDirectories(AppTools.Server.MapPath(RootPath));
		Items = new Item[folders.Length];

		for (int i = 0; i < folders.Length; i++)
		{
			Items[i].Folder = Path.GetFileName(folders[i]);
			Items[i].Title = Path.GetFileName(folders[i]) + " Gallery";
			Items[i].Description = Path.GetFileName(folders[i]) + " gallery description on two or more lines because could be long or longer or even the longest. Gallery description on two or more lines because could be long or longer or even the longest";
			Items[i].Images = Directory.GetFiles(folders[i], "*.Thumb.jpg");

			for (int j = 0; j < Items[i].Images.Length; j++)
				Items[i].Images[j] = Path.GetFileName(Items[i].Images[j]);
		}
	}

	public static string GetImageUrl(string galleryFolderName, string imageFileName)
	{
		return AppTools.Page.ResolveUrl(RootPath + galleryFolderName + "/" + imageFileName);
	}
}
