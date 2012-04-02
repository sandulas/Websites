<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="vindecarea-omului-bolnav.aspx.cs" Inherits="VindecareaOmuluiBolnav" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Presa") + "Item4Title".T("Presa")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2 class="NoPadding"><%= "Item4Head".T("Presa")%></h2>
<%= "Item4Content".T("Presa")%>
<br />
<p class="Author"><%= "Item4Author".T("Presa")%></p>

</asp:Content>
