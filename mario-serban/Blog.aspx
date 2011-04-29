<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="BlogPage" %>
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
		<asp:Repeater ID="BlogsRepeater" runat="server">
			<ItemTemplate>
				<div class="Box" style="padding-bottom: 20px;">
					<div class="top">
						<div class="title"><h2><%# Eval("Title")%></h2></div>
						<div class="date"><%# Eval("DateAdded").ToString1()%></div>
					</div>
					<div class="middle">
						<p><%# Eval("Text").CutToFit(220)%></p>						
						<app:Button Text="Read More" NavigateUrl='<%# "~/blog.aspx?id=" + Eval("Id") %>' runat="server" />
					</div>
					<div class="bottom"></div>
				</div>
			</ItemTemplate>
		</asp:Repeater>		
	</asp:PlaceHolder>
	
	<asp:PlaceHolder ID="BlogItemHolder" Visible="false" runat="server">
		<p><a href="Blog.aspx">&lt; Back to Blog List</a></p>
		
		<div class="Box">
			<div class="top">
				<div class="title"><h2>The Most Recent Blog Title</h2></div>
				<div class="date">April 21st, 2011</div>
			</div>
			<div class="middle">
				<p>Mario Serban is doing personal training one on one and sports and therapeutic massage.</p>
				<p>With over 10 years experience in the fitness and therapy business, Mario Serban has worked for The Los Angeles Kings and other professional athletes as well as countless stars and celebrities. For five years Mario was part of training and medical staff for Los Angeles Kings Hockey Club. He contributed effectively to the athletic conditioning of countless hockey team players. He planned, designed and implemented comprehensive pre and post event treatments, conditioning and rehabilitation techniques.
				<br />Mario Serban is doing personal training one on one and sports and therapeutic massage.</p>
				<p>With over 10 years experience in the fitness and therapy business, Mario Serban has worked for The Los Angeles Kings and other professional athletes as well as countless stars and celebrities. For five years Mario was part of training and medical staff for Los Angeles Kings Hockey Club. He contributed effectively to the athletic conditioning of countless hockey team players. He planned, designed and implemented comprehensive pre and post event treatments, conditioning and rehabilitation techniques.</p>
			</div>
			<div class="bottom"></div>
		</div>

		<p class="TopPadding"><a href="Blog.aspx">&lt; Back to Blog List</a></p>
	</asp:PlaceHolder>
	
</asp:Content>

