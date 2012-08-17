<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "Title".T("Home") %></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

	<h2 class="SectionHeader"><%= "HeadAbout".T("Home")%></h2>
	<%= "ContentAbout".T("Home")%>
	<br />

	<h2 class="SectionHeader"><%= "HeadWishList".T("Home")%></h2>
	
	<ol class="HoverInfoList">
		<li>
			<a href="javascript:;">
				<%= "Content3Title1".T("Home")%>
				<span>
					<%= "Content3Description1".T("Home")%>
				</span>
			</a>
		</li>
		<li>
			<a href="javascript:;">
				<%= "Content3Title2".T("Home")%>
				<span>
					<%= "Content3Description2".T("Home")%>
				</span>
			</a>
		</li>
		<li>
			<a href="javascript:;">
				<%= "Content3Title4".T("Home")%>
				<span>
					<%= "Content3Description4".T("Home")%>
				</span>
			</a>
		</li>
		<li>
			<a href="javascript:;">
				<%= "Content3Title5".T("Home")%>
				<span>
					<%= "Content3Description5".T("Home")%>
				</span>
			</a>
		</li>

		<li class="Col2 Top">
			<a href="javascript:;">
				<%= "Content3Title6".T("Home")%>
				<span>
					<%= "Content3Description6".T("Home")%>
				</span>
			</a>
		</li>
		<li class="Col2">
			<a href="javascript:;">
				<%= "Content3Title7".T("Home")%>
				<span>
					<%= "Content3Description7".T("Home")%>
				</span>
			</a>
		</li>
		<li class="Col2">
			<a href="javascript:;">
				<%= "Content3Title8".T("Home")%>
				<span>
					<%= "Content3Description8".T("Home")%>
				</span>
			</a>
		</li>
		<li class="Col2">
			<a href="javascript:;">
				<%= "Content3Title10".T("Home")%>
				<span>
					<%= "Content3Description10".T("Home")%>
				</span>
			</a>
		</li>
	</ol>

	<br />
	<h2 class="SectionHeader"><%= "HeadPartners".T("Home")%></h2>
	<div class="ImageGrid">
		<div class="Left Square">
			<div>
				<a href="http://www.colonhelp.ro/colonhelp-junior/" target="_blank">
					<asp:Image ImageUrl="~/Images/Home/logo-colon-help-junior.jpg" CssClass="GeneralWhite" runat="server" /></a>
			</div>
		</div>
		<div class="Middle Square">
			<div>
				<a href="http://dravet.ro/" target="_blank">
					<asp:Image ImageUrl="~/Images/Home/logo-dravet.gif" CssClass="GeneralWhite" runat="server" /></a>
			</div>
		</div>
		<div class="Right Square">
			<div>
				<a href="http://sr-vojta.ro/" target="_blank">
					<asp:Image ImageUrl="~/Images/Home/logo-vojta.gif" CssClass="GeneralWhite" runat="server" /></a>
			</div>
		</div>
		<div class="Wide">
			<div>
				<a href="http://www.intesasanpaolobank.ro/" target="_blank">
					<asp:Image ImageUrl="~/Images/Home/logo-intesa-sanpaolo-bank.gif" CssClass="GeneralWhite" runat="server" /></a>
			</div>
		</div>
	</div>

</asp:Content>

<asp:Content ContentPlaceHolderID="RightColumn1" runat="server">
	
	<h1><%= "RightHead".T("Home")%></h1>
	<div style="float: left; margin: -6px 0 0 -6px; background: url(App/Images/RightImgBgWide.png) no-repeat; width: 278px; height: 40px; padding: 13px 20px;">
		<a href="http://www.facebook.com/asociatianeurocare" target="_blank" style="display: block; float: left; margin-right: 45px;">
			<asp:Image ImageUrl="~/App/Images/facebook-logo.png" Width="121" Height="40" runat="server" /></a>
		<a href="http://www.youtube.com/user/asociatianeurocare" target="_blank" style="display: block; float: left;">
			<asp:Image ImageUrl="~/App/Images/youtube-logo.png" Width="102" Height="40" runat="server" /></a>
	</div>
	
	<div style="float: left; margin: 15px 0 0 -6px; background: url(App/Images/RightImgBgWide.png) no-repeat; width: 278px; height: 46px; padding: 10px 20px;">
		<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=P5TW6368M9AFL" target="_blank" style="display: block; float: left; margin: 12px 15px 0 0;">
			<asp:Image ImageUrl="~/App/Images/paypal-logo.png" Width="100" Height="27" AlternateText="PayPal - The safer, easier way to pay online!" runat="server" /></a>
		<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=P5TW6368M9AFL" target="_blank" style="display: block; float: left;">
			<asp:Image ImageUrl="~/App/Images/paypal-donate.gif" Width="147" Height="47" AlternateText="PayPal - The safer, easier way to pay online!" runat="server" /></a>
	</div>

	<div style="background: #f6f6f6; margin-top: 15px; float: left; clear: both;">
		<div class="fb-like-box" data-href="http://www.facebook.com/asociatianeurocare" data-width="292" data-height="520" data-colorscheme="light" data-show-faces="true" data-border-color="#34A34C" data-stream="true" data-header="true"></div>
	</div>
	<br /><br />

</asp:Content>

<asp:Content ContentPlaceHolderID="RightColumn2" runat="server">
</asp:Content>
