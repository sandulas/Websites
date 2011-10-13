<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ MasterType TypeName="MainMaster" %>

<asp:Content ContentPlaceHolderID="head" Runat="Server">
	<title>LA Training Room</title>
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
			<b>Special Discount for Cedar-Sinai Employees Only.</b>
			If you are a Cedar-Sinai employee click here for more details.<br />
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
	
	<br />
	<p>Here at LATR our mission is to provide you with the best athletic training and the best sports and therapeutic massage ever! Don’t wait, book an
	appointment with us at 323-272-3506.</p>
	
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

