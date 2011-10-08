<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="BlogPage" %>
<%@ MasterType TypeName="MainMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>LA Training Room - Blog</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="LeftContent1" runat="server">
	<p class="Bigger">"After playing for 20 years as a professional hockey player and after playing for several teams in the NHL, preparation and
	maintenance is an important aspect of my routine. Mario helped me tremendously to recover between games and kept me tuned up and sharp
	throughout the entire NHL season."</p>
	<p class="Bigger"><b>Sean O'Donnell,</b><br />
	Defenseman Chicago Blackhawks, Stanley Cup Winner with Anaheim Ducks 2007</p>	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">

	<div class="ContentHead">
		<div class="BoxS">
			<div class="top">
				<div class="title"><h2>Mario's Background</h2></div>
			</div>
			<div class="middle">
				Mario Serban is the cofounder of LA Training Room. He is a former Trainer and Massage Therapist for The Los Angeles
				Kings Hockey Club and Cedar-Sinai Medical Center.
			</div>
			<div class="bottom"></div>
		</div>
		<img src="App/Images/BlogTop.jpg" class="Content" style="margin-left: 20px; float: left; margin-top: 2px;" alt="Photo" />
	</div>
	
	<h1>LA Training Room's Blog</h1>
	
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

