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

		<div style="clear: both; overflow: auto; padding-bottom: 6px;">

			<h3><%# GalleryTitle%></h3>
			<p><%# GalleryDescription%></p>

			<asp:Repeater ID="PhotosRepeater" OnItemCreated="PhotosRepeater_ItemCreated"  runat="server">
				<ItemTemplate>
					
					<div style="float: left;">
						<a href="<%# ImageUrl%>" rel="lightbox[gallery<%# GalleryNumber%>]">
							<img width="120" class="General" src="<%# ThumbUrl%>" style="<%# MarginRight%>margin-bottom: 10px;" /></a>
					</div>
				
				</ItemTemplate>
			</asp:Repeater>
			
			<asp:PlaceHolder ID="ShowMoreHolder" runat="server">
				<div style="float: left;">
					<a href="fotografii.aspx?gallery=<%# GalleryNumber%>">
						<asp:Image ImageUrl="~/App/Images/MorePhotos.gif" CssClass="General" style="width: 120px; height: 80px; margin-bottom: 10px;" runat="server" /></a>
				</div>
			</asp:PlaceHolder>

		</div>

	</ItemTemplate>
</asp:Repeater>

<% } %>


</asp:Content>
