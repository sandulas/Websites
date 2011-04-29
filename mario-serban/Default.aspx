<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ MasterType TypeName="MainMaster" %>

<asp:Content ContentPlaceHolderID="head" Runat="Server">
	<title>Mario Serban Therapy - Home</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="Content" Runat="Server">

	<h1>Welcome to Mario Serban Therapy</h1>
	
	<p>In Beverly Hills is known to be the most private Pilates studio in the Los Angeles area. Situated across the luxurious Peninsula
	Hotel, our studio caters to clientele from Brentwood, Century City, Bel Air to West Hollywood. Our fully equipped studio with
	Pilates and GYROTONIC® equipment enables our STOTT PILATES® certified instructors the oportunity to design personalized workout
	programs to sculpt your body using various Pilates apparatus' and light weight training. We can customize a health plan and	fitness routine to suit every individual's goal and needs.</p>		<p>This is a test <a href="#">link</a>.</p>		<p>STOTT PILATES® certified instructors the opportunity to design personalized workout programs to sculpt your body using various	Pilates apparatus' and light weight training.</p>	<p>We can customize a health plan and fitness routine to suit every individual's goal and needs. No need to attend a boot camp to
	get the long, lean muscles and tight body that you’ve always wanted!</p>
	
	<div class="Box">
		<div class="top">
			<div class="title"><h2>Photos</h2></div>
		</div>
		<div class="middle">
				<a href="Images/Photos/Photo01.jpg" rel="lightbox[photos]">
					<img src="Images/Photos/Photo01.T.jpg" class="Thumbnail" alt="Photo" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Images/Photos/Photo01.jpg" rel="lightbox[photos]">
					<img src="Images/Photos/Photo01.T.jpg" class="Thumbnail" alt="Photo" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="Images/Photos/Photo01.jpg" rel="lightbox[photos]">
					<img src="Images/Photos/Photo01.T.jpg" class="Thumbnail" alt="Photo" /></a>
				
				<p>This is a short description of the photos above. Consider these photos as part of a gallery, this description is for the
				gallery.</p>
				<app:Button Text="View More Photos" NavigateUrl="~/photos.aspx" runat="server" />
		</div>
		<div class="bottom"></div>
	</div>

</asp:Content>

