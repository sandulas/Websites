<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="oameni.aspx.cs" Inherits="Oameni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Cazuri") + "Item6Title".T("Cazuri")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

	<h2><%= "Item6Title".T("Cazuri")%></h2>
	<%= "Item6Content".T("Cazuri")%>
	<br />
	<p class="Author"><%= "Item6Author".T("Cazuri")%></p>

</asp:Content>

<asp:Content ContentPlaceHolderID="RightColumn1" runat="server">
	
	<h2><%= "RightHead1".T("Cazuri")%></h2>
	<%= "RightContent1".T("Cazuri")%>
	<br />

</asp:Content>
