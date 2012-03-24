<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="sponsori.aspx.cs" Inherits="sponsori" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Sponsori") + "Title".T("Sponsori")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2><%= "Head".T("Sponsori")%></h2>
<%= "Content".T("Sponsori")%>

</asp:Content>
