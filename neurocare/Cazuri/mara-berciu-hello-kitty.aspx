<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="mara-berciu-hello-kitty.aspx.cs" Inherits="PovesteaSarei" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Cazuri") + "Item5Title".T("Cazuri")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

	<h2><%= "Item5Title".T("Cazuri")%></h2>
	<%= "Item5Content".T("Cazuri")%>
	<br />
	<p class="Author"><%= "Item5Author".T("Cazuri")%></p>

</asp:Content>
