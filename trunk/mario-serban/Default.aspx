<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ MasterType TypeName="MainMaster" %>

<asp:Content ContentPlaceHolderID="head" Runat="Server">
	<title>LA Training Room</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="LeftContent2" runat="server">
	<asp:HyperLink NavigateUrl="~/CedarsSinai.aspx" runat="server" class="Text" style="display: block; padding: 10px 10px 15px 10px; background: #a2c6df; border: solid 1px #88a7bc; margin-top: 18px;">
			<b>Special Discount for Cedar-Sinai Employees Only.</b>
			If you are a Cedar-Sinai employee click here for more details.<br />
			<img src="<%= ResolveUrl("~/App/Images/CedarsSinaiLogo.jpg")%>" alt="Cedars Sinai Logo" style="margin: 10px 0 0 23px; border: solid 1px #88a7bc;" /></asp:HyperLink>
</asp:Content>

<asp:Content ContentPlaceHolderID="Content" Runat="Server">

	<h1>Welcome to Mario Serban Therapy</h1>
	
	<p>In Beverly Hills is known to be the most private Pilates studio in the Los Angeles area. Situated across the luxurious Peninsula
	Hotel, our studio caters to clientele from Brentwood, Century City, Bel Air to West Hollywood. Our fully equipped studio with
	Pilates and GYROTONIC® equipment enables our STOTT PILATES® certified instructors the oportunity to design personalized workout
	programs to sculpt your body using various Pilates apparatus' and light weight training. We can customize a health plan and
	fitness routine to suit every individual's goal and needs.</p>
	
	<p>This is a test <a href="#">link</a>.</p>
	
	<p>STOTT PILATES® certified instructors the opportunity to design personalized workout programs to sculpt your body using various
	Pilates apparatus' and light weight training.</p>

	<p>We can customize a health plan and fitness routine to suit every individual's goal and needs. No need to attend a boot camp to
	get the long, lean muscles and tight body that you’ve always wanted!</p>

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

</asp:Content>

