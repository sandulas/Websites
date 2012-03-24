<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="scop-si-obiective.aspx.cs" Inherits="scop_si_obiective" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Scop") + "Title".T("Scop")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2><%= "Head".T("Scop")%></h2>
<%= "Content".T("Scop")%>

</asp:Content>
