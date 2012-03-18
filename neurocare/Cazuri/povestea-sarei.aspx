<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="povestea-sarei.aspx.cs" Inherits="PovesteaSarei" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Cazuri") + "Item4Title".T("Cazuri")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

	<h2><%= "Item4Title".T("Cazuri")%></h2>
	<%= "Item4Content".T("Cazuri")%>
	<br />
	<p class="Author"><%= "Item4Author".T("Cazuri")%></p>

</asp:Content>
