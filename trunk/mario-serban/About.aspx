<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>
<%@ MasterType TypeName="MainMaster" %>

<asp:Content ContentPlaceHolderID="head" Runat="Server">
	<title>LA Training Room - About Mario</title>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="LeftContent0" runat="server">
	<div class="Video">
		<object width="270" height="213">
			<param name="movie" value="http://www.youtube.com/v/KKZhpZGcNRg?rel=0&controls=1&autohide=1&showinfo=0&fs=1"></param>
			<param name="allowFullScreen" value="true"></param>
			<param name="allowScriptAccess" value="always"></param>
			<embed src="http://www.youtube.com/v/KKZhpZGcNRg?rel=0&controls=1&autohide=1&showinfo=0&fs=1"
				type="application/x-shockwave-flash"
				allowfullscreen="true"
				allowscriptaccess="always"
				width="270" height="213">
			</embed>
		</object>
		<div style="line-height: 16px;">Mario Serban in Royal Race while he was a Trainer with The Los Angeles Kings.</div>
	</div>
</asp:Content>


<asp:Content ContentPlaceHolderID="Content" Runat="Server">

	<h1>About Mario</h1>

	<img src="Images/About/Mario.jpg" class="ThumbnailLeft" alt="Mario" />
	
	<p>Mario Serban is the Head Trainer, Head Massage Therapist and the cofounder for the LA Training Room.</p>
	
	<p>A former trainer and massage therapist for the <b>Los Angeles Kings Hockey Club</b>, Mario Serban is dedicated to achieving
	long term, high performance results.</p>
	
	<p style="text-align:justify;"><br />With over 11 years experience in the fitness and massage therapy business, Mario Serban has worked for <b>The Los Angeles Kings</b>
	and many other professional athletes, as well as countless stars and celebrities like: <b>Ellen Degeneres</b>,
	<a href="http://kings.nhl.com/" target="_blank"><img src="Images/About/LA-Kings.jpg" class="ThumbnailRight" alt="LA Kings" /></a>
	<a href="testimonials.aspx"><b>Erin Andrews</b></a>,
	Dancing With the Stars pro <b>Anna Trebunskaya</b> and <b>Derek Hough</b>, <b>Jack Johnson</b>, <b>Conor Jackson</b> and many others. For five years
	Mario was part of the training and medical staff for the Los Angeles Kings Hockey Club. He contributed effectively to the
	athletic conditioning of countless hockey team players. He planned, designed and implemented comprehensive pre and post
	event treatments, conditioning and rehabilitation techniques.</p>
	
	<p style="text-align: justify;"><br />Mario also worked for <b>Cedar-Sinai Medical Center</b>
	<a href="http://www.cedars-sinai.edu/" target="_blank"><img src="Images/About/Cedars-Sinai.jpg" class="ThumbnailRight" alt="Cedars Sinai" /></a>
	as a Stress Management Therapist. He was part of the research team within the Psychiatry department and Physical Therapy. He was part of a study recently published on
	<a href="http://healthland.time.com/2011/01/19/the-lab-rat-gets-petted-how-massage-works/" target="_blank">Time Magazine</a>.
	The	study concluded that a single session of massage caused biological changes. For more information please
	<a href="http://www.nytimes.com/2010/09/21/health/research/21regimens.html" target="_blank">click here</a>.</p>

	<p><br />Mario is an expert In Active Release Technique (ART) which is designed to help problems with muscles, tendons,
	ligaments, fascia and nerves.</p>
	
	<p>Mario Serban studied Kinesiology and Body Mechanics at UCLA. He utilizes Applied Kinesiology with his assessments and
	treatments.</p>
	
	<p>As a former Water Polo player for Team Romania, Mario understands your needs and what it takes to get there.</p>

	<div class="Box">
		<div class="top2"></div>
		<div class="middle">
			<div>
				<a href="Images/About/Mario-Luc.jpg" rel="lightbox[photos]" title="Mario Serban and Luc Robitaille">
					<img src="Images/About/Mario-Luc.T.jpg" class="Thumbnail" alt="Photo" /></a>
				Mario Serban and Luc Robitaille
			</div>
			<div>
				<a href="Images/About/Mario-Rob.jpg" rel="lightbox[photos]" title="Mario Serban and Rob Blake">
					<img src="Images/About/Mario-Rob.T.jpg" class="Thumbnail" alt="Photo" /></a>
				Mario Serban and Rob Blake
			</div>
			<div class="last">
				<a href="Images/Photos/Photo01.jpg" rel="lightbox[photos]">
					<img src="Images/Photos/Photo01.T.jpg" class="Thumbnail" alt="Photo" /></a>
				&nbsp;
			</div>
		</div>
		<div class="bottom"></div>
	</div>

</asp:Content>

