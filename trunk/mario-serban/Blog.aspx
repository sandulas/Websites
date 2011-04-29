<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>
<%@ MasterType TypeName="MainMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>Mario Serban Therapy - Blog</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">

	<div class="ContentHead">
		<div class="BoxS">
			<div class="top">
				<div class="title"><h2>Mario's Background</h2></div>
			</div>
			<div class="middle">
				Some background information, whetever. Just a short text. Some background information, qualifications,				whetever. Just four lines of text.
			</div>
			<div class="bottom"></div>
		</div>
		<img src="App/Images/BlogTop.jpg" class="Content" style="margin-left: 20px; float: left; margin-top: 2px;" alt="Photo" />
	</div>
	
	<h1>Mario's Blog</h1>
	
	<asp:PlaceHolder ID="BlogListHolder" Visible="false" runat="server">	
		<div class="Box">
			<div class="top">
				<div class="title"><h2>The Most Recent Blog Title</h2></div>
				<div class="date">April 21st, 2011</div>
			</div>
			<div class="middle">
					<p>This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the available					space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space...</p>
					
					<app:Button Text="Read More" NavigateUrl="~/blog.aspx?id=2" runat="server" />
			</div>
			<div class="bottom"></div>
		</div>
	</asp:PlaceHolder>
	
	<asp:PlaceHolder ID="BlogItemHolder" Visible="false" runat="server">		
		<p><a href="Blog.aspx">&lt; Back to Blog List</a></p>
		
		<div class="Box">
			<div class="top">
				<div class="title"><h2>The Most Recent Blog Title</h2></div>
				<div class="date">April 21st, 2011</div>
			</div>
			<div class="middle">
					<p>This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the available					space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space</p>
					<p>This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the available					space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space</p>
					<p>This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the available					space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space</p>
					<p>This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the available					space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space</p>
					<p>This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the available					space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space</p>
					<p class="NoPadding">This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the available					space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space. This is the latest blog entry. As I’m not a writer, I only write stupid stuff to fill in the					available space</p>
			</div>
			<div class="bottom"></div>
		</div>

		<p class="TopPadding"><a href="Blog.aspx">&lt; Back to Blog List</a></p>

	</asp:PlaceHolder>
	
</asp:Content>

