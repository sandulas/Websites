<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Staff" %>
<%@ MasterType TypeName="MainMaster" %>

<asp:Content ContentPlaceHolderID="head" Runat="Server">
	<title>LA Training Room - Staff</title>
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

	<h1>Staff</h1>

	<h2>Page under construction.</h2>
	<p>Come back soon!</p>

</asp:Content>

