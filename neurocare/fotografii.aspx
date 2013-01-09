<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="fotografii.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Common") + "Fotografii" %></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2>Fotografii</h2>
<% if (Language.GetCurrent() == (int)Languages.Romanian) { %>


<h3>Galeria 1</h3>



<% } %>


</asp:Content>
