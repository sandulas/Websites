<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>
<%@ MasterType TypeName="MainMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>Mario Serban Therapy - Blog</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
	
	<h1>Mario's Blog</h1>
	
		<div class="Box">
		<div class="top">
			<div class="title"><h2>The Most Recent Blog Title</h2></div>
			<div class="date">April 21st, 2011</div>
		</div>
		<div class="middle">
				<p>This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the available				space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the				available space...</p>
				
				<app:Button Text="Read More" NavigateUrl="~/blog.aspx?id=2" runat="server" />
		</div>
		<div class="bottom"></div>
	</div>

	
</asp:Content>

