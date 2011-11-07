<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Asociaţia Neurocare - Cazuri</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2>Cazuri</h2>
<ul>
	<li><asp:HyperLink NavigateUrl="~/cazuri/povestea-sorinei.aspx" runat="server">Povestea Sorinei</asp:HyperLink></li>
	<li><asp:HyperLink NavigateUrl="~/cazuri/darius-preda.aspx" runat="server">Darius Preda</asp:HyperLink></li>
	<li><asp:HyperLink NavigateUrl="~/cazuri/un-alt-fel-de-exercitiu-de-admiratie.aspx" runat="server">Un alt fel de exerciţiu de admiraţie</asp:HyperLink></li>
</ul>

</asp:Content>
