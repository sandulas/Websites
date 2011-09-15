<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>
<%@ MasterType TypeName="MainMaster" %>

<asp:Content ContentPlaceHolderID="head" Runat="Server">
	<title>LA Training Room - About</title>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="LeftContent2" runat="server">
	<div class="Video">
		<object width="270" height="182">
			<param name="movie" value="http://www.youtube.com/v/gHxZPKEjOfc?rel=0&controls=1&autohide=1&showinfo=0&fs=1"></param>
			<param name="allowFullScreen" value="true"></param>
			<param name="allowScriptAccess" value="always"></param>
			<embed src="http://www.youtube.com/v/gHxZPKEjOfc?rel=0&controls=1&autohide=1&showinfo=0&fs=1"
				type="application/x-shockwave-flash"
				allowfullscreen="true"
				allowscriptaccess="always"
				width="270" height="182">
			</embed>
		</object>
	</div>
</asp:Content>


<asp:Content ContentPlaceHolderID="Content" Runat="Server">

	<h1>About</h1>

	<p>Bla bla bla</p>

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

