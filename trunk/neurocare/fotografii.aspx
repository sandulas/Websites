<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="fotografii.aspx.cs" Inherits="Default" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="Neurocare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Common") + "Fotografii" %></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2>Fotografii</h2>
<% if (Language.GetCurrent() == (int)Languages.Romanian) { %>


<asp:Repeater ID="GalleriesRepeater" OnItemCreated="GalleriesRepeater_ItemCreated" runat="server">
	<ItemTemplate>

		<div class="ImageGallery">

			<a id="<%# GalleryNumber%>" class="Anchor"><h3><%# GalleryTitle%></h3></a>
			<p><%# GalleryDescription%></p>

			<asp:Repeater ID="PhotosRepeater" OnItemCreated="PhotosRepeater_ItemCreated"  runat="server">
				<ItemTemplate>
					
					<div>
						<a href="<%# ImageUrl%>" rel="lightbox[gallery<%# GalleryNumber%>]">
							<img class="General" src="<%# ThumbUrl%>" style="<%# MarginRight%>" /></a>
					</div>
				
				</ItemTemplate>
			</asp:Repeater>
			
			<asp:PlaceHolder ID="ShowMoreHolder" runat="server">
				<div>
					<a href="fotografii.aspx?gallery=<%# GalleryNumber%>#<%# GalleryNumber%>">
						<asp:Image ImageUrl="~/App/Images/MorePhotos.gif" CssClass="General" runat="server" /></a>
				</div>
			</asp:PlaceHolder>

		</div>

	</ItemTemplate>
</asp:Repeater>

<% } %>


</asp:Content>
