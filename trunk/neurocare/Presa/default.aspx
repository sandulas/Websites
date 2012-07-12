<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Common") + "Title".T("Presa")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2><%= "Head".T("Presa") %></h2>
<ul>
	<% if (Language.GetCurrent() == (int)Languages.Romanian) { %>
		<li><asp:HyperLink NavigateUrl="~/Presa/manifestare-in-sprijinul-copiilor-bolnavi-de-epilepsie.aspx" runat="server"><%= "Item8Title".T("Presa") %></asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="~/Presa/dialog-despre-viata-copiilor-bolnavi-de-epilepsie.aspx" runat="server"><%= "Item7Title".T("Presa") %></asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="~/Presa/aproape-500.000-de-romani-sufera-de-epilepsie.aspx" runat="server"><%= "Item6Title".T("Presa") %></asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="~/Presa/dr-raluca-teleanu-la-traieste-sanatos.aspx" runat="server"><%= "Item5Title".T("Presa") %></asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="~/Presa/doctorita-raluca-teleanu-zana-mea-de-la-spitalul-victor-gomoiu.aspx" runat="server"><%= "Item4Title".T("Presa") %></asp:HyperLink></li>
	<% } %>
	<li><asp:HyperLink NavigateUrl="~/presa/dr-dan-teleanu-la-doctore-esti-un-erou.aspx" runat="server"><%= "Item3Title".T("Presa") %></asp:HyperLink></li>
	<li><asp:HyperLink NavigateUrl="~/presa/barbatul-care-a-invins-patru-forme-de-cancer-intr-un-an.aspx" runat="server"><%= "Item2Title".T("Presa") %></asp:HyperLink></li>
	<li><asp:HyperLink NavigateUrl="~/presa/instructor-de-schi-tratat-de-dr-dan-teleanu.aspx" runat="server"><%= "Item1Title".T("Presa") %></asp:HyperLink></li>
</ul>

</asp:Content>
