<%@ Page Language="C#" MasterPageFile="~/TopAndColumns.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "Title".T("Home") %></title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="TopLine" Runat="Server">

	<h2 class="SectionHeaderTop"><%= "HeadAbout".T("Home")%></h2>

	<div style="margin-bottom: 16px; padding: 6px 0 16px 0; border-bottom: solid 4px #b8d5a6; overflow: auto;">
		
		<%= "ContentAbout".T("Home")%>
		
		<div class="ImageCard MarR16">
			<a href="./Files/Home/Bios/Raluca-Teleanu.pdf" target="_blank">
				<img src="./Images/Home/Bios/Raluca-Teleanu.jpg" align="middle" alt="Raluca Teleanu" /></a>
			<a class="caption" href="./Files/Home/Bios/Raluca-Teleanu.pdf" target="_blank">Raluca Teleanu</a>
		</div>
		<div class="ImageCard MarR16">
			<a href="./Files/Home/Bios/Dan-Teleanu.pdf" target="_blank">
				<img src="./Images/Home/Bios/Dan-Teleanu.jpg" align="middle" alt="Dan Teleanu" /></a>
			<a class="caption" href="./Files/Home/Bios/Dan-Teleanu.pdf" target="_blank">Dan Teleanu</a>
		</div>
		<div class="ImageCard MarR16">
			<a href="./Files/Home/Bios/Magda-Sandu.pdf" target="_blank">
				<img src="./Images/Home/Bios/Magda-Sandu.jpg" align="middle" alt="Magdalena Sandu" /></a>
			<a class="caption" href="./Files/Home/Bios/Magda-Sandu.pdf" target="_blank">Magdalena Sandu</a>
		</div>
		<div class="ImageCard MarR16">
			<a href="./Files/Home/Bios/Diana-Epure.pdf" target="_blank">
				<img src="./Images/Home/Bios/Diana-Epure.jpg" align="middle" alt="Diana Epure" /></a>
			<a class="caption" href="./Files/Home/Bios/Diana-Epure.pdf" target="_blank">Diana Epure</a>
		</div>
		<div class="ImageCard MarR16">
			<a href="./Files/Home/Bios/Dana-Vasile.pdf" target="_blank">
				<img src="./Images/Home/Bios/Dana-Vasile.jpg" align="middle" alt="Daniela Vasile" /></a>
			<a class="caption" href="./Files/Home/Bios/Dana-Vasile.pdf" target="_blank">Daniela Vasile</a>
		</div>
		<div class="ImageCard">
			<a href="./Files/Home/Bios/Adina-Istrate.pdf" target="_blank">
				<img src="./Images/Home/Bios/Adina-Istrate.jpg" align="middle" alt="Adina Istrate" /></a>
			<a class="caption" href="./Files/Home/Bios/Adina-Istrate.pdf" target="_blank">Adina Istrate</a>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">
	
	<% if (Language.GetCurrent() == (int)Languages.Romanian) { %>
		<h2 class="SectionHeader">Campanii Neurocare</h2>
		<%--
        <div style="padding: 6px 0 16px 0; overflow: auto;">
		    <div class="ImageCard2 MarR20">
			    <a href="./Images/Home/Campanii/epilepsia-se-poate-vindeca-flyer.jpg" rel="lightbox">
			        <img src="./Images/Home/Campanii/epilepsia-se-poate-vindeca-card.jpg" align="middle" alt="Epilepsia se poate vindeca" /></a>
			    <div class="caption notfinished">În desfasurare</div>
		    </div>
		    <div class="ImageCard2 MarR20">
    			<a href="./Images/Home/Campanii/cat-costa-o-viata-flyer.jpg" rel="lightbox">
				    <img src="./Images/Home/Campanii/cat-costa-o-viata-card.jpg" align="middle" alt="cat-costa-o-viata-card.jpg" /></a>
			    <div class="caption finished">Încheiata cu succes</div>
		    </div>
		    <div class="ImageCard2">
				<a href="./Images/Home/Campanii/aspirator-cusa-flyer.jpg" rel="lightbox">
				    <img src="./Images/Home/Campanii/aspirator-cusa-card.jpg" align="middle" alt="Daniela Vasile" /></a>
			    <div class="caption finished">Încheiata cu succes</div>
		    </div>
        </div>
        --%>

		<div style="border-bottom: solid 4px #aec79e; margin-bottom: 22px; padding-bottom: 22px; overflow: auto;">
			<a href="./Images/Home/Campanii/epilepsia-se-poate-vindeca-flyer.jpg" rel="lightbox">
				<img src="./Images/Home/Campanii/epilepsia-se-poate-vindeca-card.jpg" class="General MarL16" align="right" style="width: 160px; height: 240px;" alt="Epilepsia se poate vindeca...!!!" /></a>
			<h2>Epilepsia se poate vindeca...!!!</h2>
			<p>
				Incepem o noua campanie, menita a ajuta copiii ce au nevoie de electroencefalograma. Cum in cazul sectiei noastre acest lucru se aplica majoritatii
				copiilor, fluxul zilnic de pacienti este mare pentru un singur aparat, iar suprasolicitarea acestuia si a tehnicianului  EEG este constanta.<br />
				Ne dorim diagnostic cat mai precis si cat mai rapid, cu minim de disconfort pentru copii.<br /><br />

				<div style="background-color: #cc0000; float: left; padding: 3px 6px; color: #ffffff; font-weight: bold;">Campanie încheiată cu succes.</div>
				<%--<a href="./Images/Home/Campanii/epilepsia-se-poate-vindeca-flyer.jpg" rel="lightbox">Vezi detalii...</a>--%>
			</p>
		</div>

		<div style="border-bottom: solid 4px #aec79e; overflow: auto; margin-bottom: 22px; padding-bottom: 22px;">
			<a href="./Images/Home/Campanii/cat-costa-o-viata-flyer.jpg" rel="lightbox">
				<img src="./Images/Home/Campanii/cat-costa-o-viata-card.jpg" class="General MarL16" align="right" style="width: 160px; height: 240px;" alt="Cât costă o viaţă?" /></a>
			<h2>Cât costă o viaţă?</h2>
			<p>
				Am demarat campania de strângere de fonduri pentru achiziţionarea unui neuroendoscop.<br /><br />

				<a href="./Images/Home/Campanii/cat-costa-o-viata-flyer.jpg" rel="lightbox">Vezi detalii...</a><br /><br />

				<div style="background-color: #cc0000; float: left; padding: 3px 6px; color: #ffffff; font-weight: bold;">Campanie încheiată cu succes.</div>
			</p>
		</div>

		<div style="overflow: auto; margin-bottom: 26px;">
			<a href="./Images/Home/Campanii/aspirator-cusa-flyer.jpg" rel="lightbox">
				<img src="./Images/Home/Campanii/aspirator-cusa-card.jpg" class="General MarL16" align="right" style="width: 160px; height: 240px;" alt="Aspirator CUSA" /></a>
			<h2>Aspirator CUSA</h2>
			<p>
				Un alt vis din wish list-ul nostru a prins viata: am reusit sa aducem doua aparate CUSA in sectia de Neurochirurgie a Spitalului
				Universitar Bucuresti.<br /><br />

				<a href="./Images/Home/Campanii/aspirator-cusa-flyer.jpg" rel="lightbox">Vezi detalii...</a><br /><br />

				<div style="background-color: #cc0000; float: left; padding: 3px 6px; color: #ffffff; font-weight: bold;">Campanie încheiată cu succes.</div>
			</p>
		</div>
	<% } %>


	<% if (Language.GetCurrent() == (int)Languages.Romanian) { %>
		<h2 class="SectionHeader"><%= "HeadWishList".T("Home")%></h2>
	
		<ol class="HoverInfoList">
			<li>
				<a href="javascript:;">
					<%= "Content3Title3".T("Home")%>
					<span>
						<%= "Content3Description3".T("Home")%>
					</span>
				</a>
			</li>
			
			<li class="Col2 Top">
				<a href="javascript:;">
					<%= "Content3Title4".T("Home")%>
					<span>
						<%= "Content3Description4".T("Home")%>
					</span>
				</a>
			</li>
		</ol>

		<br /><br />
	<% } %>

	<h2 class="SectionHeader"><%= "HeadPartners".T("Home")%></h2>
	<div class="ImageGrid">
		<div class="Left Square">
			<div>
				<a href="http://www.colonhelp.ro/colonhelp-junior/" target="_blank">
					<asp:Image ImageUrl="~/Images/Home/logo-colon-help-junior.jpg" CssClass="GeneralWhite" runat="server" /></a>
			</div>
		</div>
		<div class="Middle Square">
			<div>
				<a href="http://sr-vojta.ro/" target="_blank">
					<asp:Image ImageUrl="~/Images/Home/logo-vojta.gif" CssClass="GeneralWhite" runat="server" /></a>
			</div>
		</div>
		<div class="Right Square">
			<div>
				<a href="http://www.kinetobebe.ro/" target="_blank">
					<asp:Image ImageUrl="~/Images/Home/logo-kineto-bebe.jpg" CssClass="GeneralWhite" runat="server" /></a>
			</div>
		</div>
		<div class="Wide">
			<div>
				<a href="http://www.intesasanpaolobank.ro/" target="_blank">
					<asp:Image ImageUrl="~/Images/Home/logo-intesa-sanpaolo-bank.gif" CssClass="GeneralWhite" runat="server" /></a>
			</div>
		</div>
		<div class="Left Square">
			<div>
				<a href="http://www.arcaluinoe.net/" target="_blank">
					<asp:Image ImageUrl="~/Images/Home/logo-arca-lui-noe.jpg" CssClass="GeneralWhite" runat="server" /></a>
			</div>
		</div>
	</div>

	<div style="height: 95px; clear:both;">&nbsp;</div>

</asp:Content>

<asp:Content ContentPlaceHolderID="RightColumn1" runat="server">
	
	<h1><%= "RightHead".T("Home")%></h1>
	<div style="float: left; margin: -6px 0 0 -6px; background: url(App/Images/RightImgBgWide.png) no-repeat; width: 278px; height: 40px; padding: 13px 20px;">
		<a href="http://www.facebook.com/asociatianeurocare" target="_blank" style="display: block; float: left; margin-right: 45px;">
			<asp:Image ImageUrl="~/App/Images/facebook-logo.png" Width="121" Height="40" runat="server" /></a>
		<a href="http://www.youtube.com/user/asociatianeurocare" target="_blank" style="display: block; float: left;">
			<asp:Image ImageUrl="~/App/Images/youtube-logo.png" Width="102" Height="40" runat="server" /></a>
	</div>
	
	<div style="float: left; margin: 15px 0 0 -6px; background: url(App/Images/RightImgBgWide.png) no-repeat; width: 278px; height: 46px; padding: 10px 20px;">
		<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=P5TW6368M9AFL" target="_blank" style="display: block; float: left; margin: 12px 15px 0 0;">
			<asp:Image ImageUrl="~/App/Images/paypal-logo.png" Width="100" Height="27" AlternateText="PayPal - The safer, easier way to pay online!" runat="server" /></a>
		<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=P5TW6368M9AFL" target="_blank" style="display: block; float: left;">
			<asp:Image ImageUrl="~/App/Images/paypal-donate.gif" Width="147" Height="47" AlternateText="PayPal - The safer, easier way to pay online!" runat="server" /></a>
	</div>

	<div style="background: #f6f6f6; margin-top: 15px; float: left; width: 292px; clear: both;">
		<div class="fb-page" data-href="http://www.facebook.com/asociatianeurocare" data-width="292" data-height="720" data-hide-cover="true" data-show-facepile="true" data-show-posts="true"><div class="fb-xfbml-parse-ignore"><blockquote cite="http://www.facebook.com/asociatianeurocare"><a href="http://www.facebook.com/asociatianeurocare">Asociaţia Neurocare</a></blockquote></div></div>
	</div>
	<br /><br />

</asp:Content>

<asp:Content ContentPlaceHolderID="RightColumn2" runat="server">
</asp:Content>
