<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="darius-preda.aspx.cs" Inherits="DariusPreda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Cazuri") + "Item2Title".T("Cazuri")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

	<h2><%= "Item2Title".T("Cazuri")%></h2>
	<%= "Item2Content".T("Cazuri")%>
	<br />
	<p class="Author"><%= "Item2Author".T("Cazuri")%></p>

</asp:Content>
