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
		<h3><%# GalleryTitle%></h3>
		
		<asp:Repeater ID="PhotosRepeater" OnItemCreated="PhotosRepeater_ItemCreated" runat="server">
			<ItemTemplate>
				<div>
					<img width="520" class="General" src="<%# ImageUrl%>" /></div>
			</ItemTemplate>
		</asp:Repeater>
		

	</ItemTemplate>
</asp:Repeater>

<% } %>


</asp:Content>
