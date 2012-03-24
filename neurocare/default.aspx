<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "Title".T("Home") %></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

	<h2 class="SectionHeader"><%= "Head1".T("Home")%></h2>
	<%= "Content1".T("Home")%>
	<br />

	<h2 class="SectionHeader"><%= "Head2".T("Home")%></h2>
	<div class="OverflowAuto PadB10">
		<%= "Content2".T("Home") %>
	</div>

	<br />
	<h2 class="SectionHeader"><%= "Head3".T("Home")%></h2>
	
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
				<%= "Content3Title3".T("Home")%>
				<span>
					<%= "Content3Description3".T("Home")%>
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
				<%= "Content3Title9".T("Home")%>
				<span>
					<%= "Content3Description9".T("Home")%>
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

</asp:Content>

<asp:Content ContentPlaceHolderID="RightColumn1" runat="server">
	
	<div style="background: #f6f6f6;">
		<div class="fb-like-box" data-href="http://www.facebook.com/asociatianeurocare" data-width="292" data-height="520" data-colorscheme="light" data-show-faces="true" data-border-color="#34A34C" data-stream="true" data-header="true"></div>
	</div>
	
</asp:Content>

<asp:Content ContentPlaceHolderID="RightColumn2" runat="server">

	<asp:HyperLink NavigateUrl="~/articole/vindecarea-omului-bolnav.aspx" runat="server">
		<asp:Image ImageUrl="~/Images/Articole/vindecarea-omului-bolnav.jpg" CssClass="General MarT16" Width="288" Height="200"	runat="server" /></asp:HyperLink>

</asp:Content>