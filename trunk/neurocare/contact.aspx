<%@ Page Language="C#" MasterPageFile="~/Columns2.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Contact") + "Title".T("Contact")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

	<h2><%= "HeadLeft".T("Contact") %></h2>

	<%= "ContentLeft".T("Contact") %>

</asp:Content>

<asp:Content ContentPlaceHolderID="RightColumn" runat="server">

	<h2><%= "HeadRight1".T("Contact") %></h2>
	<%= "ContentRight1".T("Contact") %>

	<br />
	
	<h2><%= "HeadRight2".T("Contact") %></h2>
	<%= "ContentRight2".T("Contact") %>

</asp:Content>
