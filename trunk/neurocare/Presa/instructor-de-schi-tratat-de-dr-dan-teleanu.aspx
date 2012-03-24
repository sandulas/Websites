<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="instructor-de-schi-tratat-de-dr-dan-teleanu.aspx.cs" Inherits="Article1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Presa") + "Item1Title".T("Presa")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2><%= "Item1Head".T("Presa")%></h2>
<%= "Item1Content".T("Presa")%>
<br />
<p class="Author"><%= "Item1Author".T("Presa")%></p>

</asp:Content>
