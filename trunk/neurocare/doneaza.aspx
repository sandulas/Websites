<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="doneaza.aspx.cs" Inherits="doneaza" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Doneaza") + "Title".T("Doneaza")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">

<%= "Content".T("Doneaza")%>

</asp:Content>
