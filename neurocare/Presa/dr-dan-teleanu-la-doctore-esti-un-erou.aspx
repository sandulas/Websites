<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="dr-dan-teleanu-la-doctore-esti-un-erou.aspx.cs" Inherits="Article1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Presa") + "Item3Title".T("Presa")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2><%= "Item3Head".T("Presa")%></h2>
<%= "Item3Content".T("Presa")%>
<br />
<p class="Author"><%= "Item3Author".T("Presa")%></p>

</asp:Content>
