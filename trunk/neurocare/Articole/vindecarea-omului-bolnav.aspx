<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="vindecarea-omului-bolnav.aspx.cs" Inherits="VindecareaOmuluiBolnav" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Articole") + "Item1Title".T("Articole")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2 class="NoPadding"><%= "Item1Title".T("Articole")%></h2>
<%= "Item1Content".T("Articole")%>
<br />
<p class="Author"><%= "Item1Author".T("Articole")%></p>

</asp:Content>
