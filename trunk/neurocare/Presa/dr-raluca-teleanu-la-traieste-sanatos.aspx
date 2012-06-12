<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="dr-raluca-teleanu-la-traieste-sanatos.aspx.cs" Inherits="Article1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Presa") + "Item5Title".T("Presa")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2><%= "Item5Head".T("Presa")%></h2>
<%= "Item5Content".T("Presa")%>
<br />
<p class="Author"><%= "Item5Author".T("Presa")%></p>

</asp:Content>
