﻿<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ MasterType TypeName="MainMaster" %>

<asp:Content ContentPlaceHolderID="head" Runat="Server">
	<title>LA Training Room - Sports Massage Deep Tissue Sports Therapy for Athletes and Dancers</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="LeftContent1" runat="server">
	<p class="Bigger">"While competing on <a href="Testimonials.aspx"><b>Dancing With The Stars</b></a>, I injured my back during the fourth week of the show. I was in so much pain, we feared I
	had broken a rib. Thankfully, my dance partner sent me to Mario. Under Mario's care, not only was I able to dance that week, but stayed
	in competition until the very end. I know my body wouldn't have made it through 3 months of extensive dance training without Mario."</p>
	<p class="Bigger"><b>Erin Andrews,</b><br />
	ESPN Sportscaster, Dancing With The Stars Contestant</p>
</asp:Content>

<asp:Content ContentPlaceHolderID="LeftContent2" runat="server">
	<asp:HyperLink NavigateUrl="~/CedarsSinai.aspx" runat="server" class="Text" style="display: block; padding: 10px 10px 15px 10px; background: #a2c6df; border: solid 1px #88a7bc; margin-top: 18px;">
			<b>Special Discount for Cedars-Sinai Employees Only.</b>
			If you are a Cedars-Sinai employee click here for more details.<br />
			<img src="<%= ResolveUrl("~/App/Images/CedarsSinaiLogo.jpg")%>" alt="Cedars Sinai Logo" style="margin: 10px 0 0 23px; border: solid 1px #88a7bc;" /></asp:HyperLink>
</asp:Content>

<asp:Content ContentPlaceHolderID="Content" Runat="Server">

	<h1>Welcome to LA TRAINING ROOM</h1>
	
	<p>LA TRAINING ROOM is a wellness studio that is dedicated to help you achieve a healthy lifestyle.<br />
	We are highly specialized in providing the best Fitness Training and Sports Massage in Los Angeles area.<br />
	Whether you are an amateur or a professional athlete our mission objective is to assist you in achieving your goals.</p>
	
	<b>Benefits of sports and therapeutic massage:</b>
	<ul>
		<li>Shorten your recovery time between workouts.</li>
		<li>Reduce your chance of injury, through proper stretching and event preparation, and through deep tissue manipulation.</li>
		<li>Improve your range of motion and muscle flexibility, resulting in improved power and performance.</li>
	</ul>
	
	<br />
	<b>We treat the following conditions:</b>
	<ul>
		<li>Lower and Upper Back pain</li>
		<li>Neck pain</li>
		<li>Rotator Cuff and Shoulder pain</li>
		<li>TMJ</li>
		<li>Carpal Tunnel Syndrome</li>
		<li>Tennis Elbow</li>
	</ul>

	<div style="position: relative;">
		<div style="position: absolute; left: 280px; top: -150px; text-align: center; padding: 3px 10px;" class="Box2">
			<b>Mario Serban on</b><br />
			<asp:HyperLink NavigateUrl="~/Blog.aspx?id=10" runat="server">
				<img src="<%= ResolveUrl("~/images/home/Shape-Magazine-Logo.gif")%>" alt="Shape Magazine Logo" /></asp:HyperLink><br />
			&nbsp;&nbsp;&nbsp;<asp:HyperLink NavigateUrl="~/Blog.aspx?id=10" runat="server"><b>READ THE ARTICLE</b></asp:HyperLink>
		</div>
	</div>
	
	<br />
	<p>Here at LATR our mission is to provide you with the best athletic training and the best sports and therapeutic massage ever! Don’t wait, book an
	appointment with us at 323-272-3506.</p>
	
	<br />
	<a href="https://plus.google.com/115665134157390232962" target="_blank" rel="publisher" class="NoHover">
		<span class="H1Like">Find us on&nbsp;</span>
		<img src="<%= ResolveUrl("~/App/Images/GooglePlusLogo.png")%>" alt="Google Plus Logo" style="width: 100px; height: 31px; vertical-align:middle" /></a>

	<br /><br />
	<div style="text-align:center; background: #f0f1f5;" class="Box2">
		<a href="Rates.aspx"><p class="Color3 Big NoPadding">SpecialOffer: 20% OFF on your first hour massage</p></a>
	</div>
	
	
	<%--
	<div class="Box">
		<div class="top2"></div>
		<div class="middle">
				<a href="Images/Photos/Photo01.jpg" rel="lightbox[photos]">
					<img src="Images/Photos/Photo01.T.jpg" class="Thumbnail" alt="Photo" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Images/Photos/Photo01.jpg" rel="lightbox[photos]">
					<img src="Images/Photos/Photo01.T.jpg" class="Thumbnail" alt="Photo" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Images/Photos/Photo01.jpg" rel="lightbox[photos]">
					<img src="Images/Photos/Photo01.T.jpg" class="Thumbnail" alt="Photo" /></a>
		</div>
		<div class="bottom"></div>
	</div>
	--%>
	
</asp:Content>

