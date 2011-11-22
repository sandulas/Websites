<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Asociaţia Neurocare - Presă</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2>Presă</h2>
<ul>
	<li><asp:HyperLink NavigateUrl="~/presa/instructor-de-schi-tratat-de-dr-dan-teleanu.aspx" runat="server">
		Instructor de schi tratat de Dr. Dan Teleanu</asp:HyperLink></li>
	<li><asp:HyperLink NavigateUrl="~/presa/barbatul-care-a-invins-patru-forme-de-cancer-intr-un-an.aspx" runat="server">
		Bărbatul care a învins patru forme de cancer într-un an</asp:HyperLink></li>
</ul>

</asp:Content>
