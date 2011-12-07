<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Asociaţia Neurocare - Fii alături de noi - pentru viaţă!</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

	<h2>Cine suntem?</h2>
	<p>Noi suntem medici şi asistente care trăiesc în fiecare zi frustrarea de a nu ne putea ajuta pacienţii...<br />
	Noi suntem oameni, care nu ne mai putem uita indiferenţi la durerea lor...<br />
	Noi suntem cei pe care ei îi privesc cu speranţa în ochi şi de la care cer ajutor....<br />
	Noi suntem hotărâţi să schimbăm destine...</p>

	<p>De aceea, ne-am adunat forţele pentru a fi mai puternici...<br />
	Noi suntem Asociaţia Neurocare şi vă asteptăm să vă alăturaţi nouă!</p>

	<br /><br />
	<h2 class="PadB5">Presă</h2>
	<asp:Image ImageUrl="~/Images/Home/doctore-esti-un-erou.jpg" CssClass="General MarR16" ImageAlign="Left" Width="250" Height="135"
	AlternateText="Dr. Dan Teleanu, membru fondator Neurocare, finalist in campania Pro TV &quot;Doctore, esti un erou!&quot;" runat="server" />
	<b>Doctore, esti un erou!</b><br /><br />
	Dr. Dan Teleanu, membru fondator Neurocare, participa in campania Pro TV "Doctore, esti un erou!".
	
	<br /><br />
	<a href="http://erou.stirileprotv.ro/index.php?uid=912725" target="_blank">Votează</a>
	&nbsp;&nbsp;|&nbsp;&nbsp;
	<asp:HyperLink NavigateUrl="~/Presa/dr-dan-teleanu-la-doctore-esti-un-erou.aspx" runat="server">Află mai multe...</asp:HyperLink>


</asp:Content>

<asp:Content ContentPlaceHolderID="RightColumn" runat="server">
	
	<div style="background: #f6f6f6;">
		<div class="fb-like-box" data-href="http://www.facebook.com/asociatianeurocare" data-width="292" data-height="520" data-colorscheme="light" data-show-faces="true" data-border-color="#34A34C" data-stream="true" data-header="true"></div>
	</div>
	
</asp:Content>