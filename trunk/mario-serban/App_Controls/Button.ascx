<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Button.ascx.cs" Inherits="App_Controls_Button" %>

<asp:HyperLink ID="TheHyperLink" Visible="false" CssClass="Button" EnableViewState="false" runat="server">
	<span class="left"></span>
	<span class="center"><asp:Literal ID="HyperLinkLiteral" runat="server" /></span>
	<span class="right"></span>
</asp:HyperLink>
<asp:LinkButton ID="TheLinkButton" OnClick="TheLinkButton_Click" Visible="false" CssClass="Button" EnableViewState="false" runat="server">
	<span class="left"></span>
	<span class="center"><asp:Literal ID="LinkButtonLiteral" runat="server" /></span>
	<span class="right"></span>
</asp:LinkButton>
