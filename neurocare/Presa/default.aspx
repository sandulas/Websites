<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Common") + "Title".T("Presa")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2><%= "Head".T("Presa") %></h2>
<ul>
	<li><asp:HyperLink NavigateUrl="~/presa/dr-dan-teleanu-la-doctore-esti-un-erou.aspx" runat="server"><%= "Item3Title".T("Presa") %></asp:HyperLink></li>
	<li><asp:HyperLink NavigateUrl="~/presa/barbatul-care-a-invins-patru-forme-de-cancer-intr-un-an.aspx" runat="server"><%= "Item2Title".T("Presa") %></asp:HyperLink></li>
	<li><asp:HyperLink NavigateUrl="~/presa/instructor-de-schi-tratat-de-dr-dan-teleanu.aspx" runat="server"><%= "Item1Title".T("Presa") %></asp:HyperLink></li>
</ul>

</asp:Content>
