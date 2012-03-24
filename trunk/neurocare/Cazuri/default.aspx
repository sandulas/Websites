<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Cazuri") + "Title".T("Cazuri")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2><%= "Head".T("Cazuri") %></h2>
<ul>
	<li><asp:HyperLink NavigateUrl="~/cazuri/povestea-sarei.aspx" runat="server"><%= "Item4Title".T("Cazuri") %></asp:HyperLink></li>
	<li><asp:HyperLink NavigateUrl="~/cazuri/un-alt-fel-de-exercitiu-de-admiratie.aspx" runat="server"><%= "Item3Title".T("Cazuri") %></asp:HyperLink></li>
	<li><asp:HyperLink NavigateUrl="~/cazuri/darius-preda.aspx" runat="server"><%= "Item2Title".T("Cazuri") %></asp:HyperLink></li>
	<li><asp:HyperLink NavigateUrl="~/cazuri/povestea-sorinei.aspx" runat="server"><%= "Item1Title".T("Cazuri") %></asp:HyperLink></li>
</ul>

</asp:Content>
