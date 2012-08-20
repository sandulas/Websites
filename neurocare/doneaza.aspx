<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="doneaza.aspx.cs" Inherits="doneaza" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Doneaza") + "Title".T("Doneaza")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">

	<div style="float: right; margin: 50px -10px 10px 20px; background: url(App/Images/RightImgBgWide.png) no-repeat; width: 278px; height: 46px; padding: 10px 20px;">
		<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=P5TW6368M9AFL" target="_blank" style="display: block; float: left; margin: 12px 15px 0 0;">
			<asp:Image ImageUrl="~/App/Images/paypal-logo.png" Width="100" Height="27" AlternateText="PayPal - The safer, easier way to pay online!" runat="server" /></a>
		<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=P5TW6368M9AFL" target="_blank" style="display: block; float: left;">
			<asp:Image ImageUrl="~/App/Images/paypal-donate.gif" Width="147" Height="47" AlternateText="PayPal - The safer, easier way to pay online!" runat="server" /></a>
	</div>

<%= "Content".T("Doneaza")%>

</asp:Content>
