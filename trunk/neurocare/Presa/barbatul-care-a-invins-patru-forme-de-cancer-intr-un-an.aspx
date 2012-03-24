<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="barbatul-care-a-invins-patru-forme-de-cancer-intr-un-an.aspx.cs" Inherits="Article1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Presa") + "Item2Title".T("Presa")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2><%= "Item2Head".T("Presa")%></h2>
<%= "Item2Content".T("Presa")%>
<br />
<p class="Author"><%= "Item2Author".T("Presa")%></p>

</asp:Content>
