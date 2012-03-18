<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="povestea-sorinei.aspx.cs" Inherits="PovesteaSorinei" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Cazuri") + "Item1Title".T("Cazuri")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

	<h2><%= "Item1Title".T("Cazuri")%></h2>
	<%= "Item1Content".T("Cazuri")%>
	<br />
	<p class="Author"><%= "Item1Author".T("Cazuri")%></p>

</asp:Content>
