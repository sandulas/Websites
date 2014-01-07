<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="cat-de-constienti-suntem-de-sanatatea-organismului-nostru.aspx.cs" Inherits="Article1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Presa") + "Item9Title".T("Presa")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2><%= "Item9Head".T("Presa")%></h2>
<%= "Item9Content".T("Presa")%>
<br />
<p class="Author"><%= "Item9Author".T("Presa")%></p>

</asp:Content>
