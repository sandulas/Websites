<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="BlogPage" %>
<%@ MasterType TypeName="MainMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>LA Training Room - Blog</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">

	<div class="ContentHead">
		<div class="BoxS">
			<div class="top">
				<div class="title"><h2>Mario's Background</h2></div>
			</div>
			<div class="middle">
				Some background information, whetever. Just a short text. Some background information, qualifications,
				whetever. Just four lines of text.
			</div>
			<div class="bottom"></div>
		</div>
		<img src="App/Images/BlogTop.jpg" class="Content" style="margin-left: 20px; float: left; margin-top: 2px;" alt="Photo" />
	</div>
	
	<h1>Mario's Blog</h1>
	
	<asp:PlaceHolder ID="BlogListHolder" Visible="false" runat="server">	
		<asp:Repeater ID="BlogRepeater" runat="server">
			<ItemTemplate>
				<div class="Box PadB20">
					<div class="top">
						<div class="title"><h2><%# Eval("Title")%></h2></div>
						<div class="date"><%# Eval("DateAdded").ToDateString()%></div>
					</div>
					<div class="middle">
						<p><%# Eval("Text").CutToFit(240)%></p>
						<app:Button Text="Read More" NavigateUrl='<%# "~/blog.aspx?id=" + Eval("Id") %>' runat="server" />
					</div>
					<div class="bottom"></div>
				</div>
			</ItemTemplate>
		</asp:Repeater>		
	</asp:PlaceHolder>
	
	<asp:PlaceHolder ID="BlogItemHolder" Visible="false" runat="server">
		<div class="PadB10 FLeft"><app:Button NavigateUrl="~/blog.aspx" Text="&lt; Back to Blog List" runat="server" /></div>
		
		<div class="Box">
			<div class="top">
				<div class="title"><h2><%# BlogDataRow["Title"]%></h2></div>
				<div class="date"><%# BlogDataRow["DateAdded"].ToDateString()%></div>
			</div>
			<div class="middle">
				<%# BlogDataRow["Text"].ParagraphFormat()%>
			</div>
			<div class="bottom"></div>
		</div>

		<div class="PadT10 FLeft"><app:Button NavigateUrl="~/blog.aspx" Text="&lt; Back to Blog List" runat="server" /></div>
	</asp:PlaceHolder>
	
</asp:Content>

