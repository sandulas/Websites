<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Asociaţia Neurocare - Fii alături de noi - pentru viaţă!</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

	<h2 class="SectionHeader">Cine suntem?</h2>
	<p>Noi suntem medici şi asistente care trăiesc în fiecare zi frustrarea de a nu ne putea ajuta pacienţii...<br />
	Noi suntem oameni, care nu ne mai putem uita indiferenţi la durerea lor...<br />
	Noi suntem cei pe care ei îi privesc cu speranţa în ochi şi de la care cer ajutor....<br />
	Noi suntem hotărâţi să schimbăm destine...</p>

	<p>De aceea, ne-am adunat forţele pentru a fi mai puternici...<br />
	Noi suntem Asociaţia Neurocare şi vă asteptăm să vă alăturaţi nouă!</p>

	<br />
	<h2 class="SectionHeader">Presă</h2>
	<div class="OverflowAuto PadB10">
		<asp:Image ImageUrl="~/Images/Home/doctore-esti-un-erou.jpg" CssClass="General MarR16" ImageAlign="Left" Width="250" Height="135"
		AlternateText="Dr. Dan Teleanu, membru fondator Neurocare, finalist in campania Pro TV &quot;Doctore, esti un erou!&quot;" runat="server" />
		<b>Doctore, esti un erou!</b><br /><br />
		Dr. Dan Teleanu, membru fondator Neurocare, participa in campania Pro TV "Doctore, esti un erou!".
	
		<br /><br />
		<a href="http://erou.stirileprotv.ro/index.php?uid=912725" target="_blank">Votează</a>
		&nbsp;&nbsp;|&nbsp;&nbsp;
		<asp:HyperLink NavigateUrl="~/Presa/dr-dan-teleanu-la-doctore-esti-un-erou.aspx" runat="server">Află mai multe...</asp:HyperLink>
	</div>

	<br />
	<h2 class="SectionHeader">Wish list</h2>
	
	<ol class="HoverInfoList">
		<li>
			<a href="javascript:;">
				Neuroendoscop Karl Storz
				<span>
					<p>În visele noastre frumoase și optimiste se află un neuroendoscop Karl Storz cu accesorii atât pentru craniu cât și pentru patologie spinală.</p>
					<p>Acest aparat performant ar putea salva viața unor bolnavi, care nu pot fi și nu trebuie operați in mod clasic; este scump, dar merită tot
					efortul!</p>
					<p class="NoPadding">Nu sunt multe centre în țară unde se face acest lucru. Uneori nu e suficientă <b>doar dorința</b> de a face bine, trebuie să
					ai și mijloacele necesare!</p>
				</span>
			</a>
		</li>
		<li>
			<a href="javascript:;">
				Cameră de filmat portabilă
				<span>
					Ne este necesară o cameră de filmat mică, portabilă, pentru a putea supraveghea manifestările pe care le prezintă anumiți copii. Înregistrarea
					unei crize epileptice, de exemplu, ne poate ajuta în mod esențial la elucidarea diagnosticului.
				</span>
			</a>
		</li>
		<li>
			<a href="javascript:;">
				Canapea pentru secție
				<span>
					Avem mare nevoie de o canapea pentru a oferi un loc de așteptare confortabil pacienților.
				</span>
			</a>
		</li>
		<li>
			<a href="javascript:;">
				Jucării
				<span>
					Jucăriile sunt esențiale pentru a inveseli copiii pe durata internării.
				</span>
			</a>
		</li>
		<li>
			<a href="javascript:;">
				Perne
				<span>
					Ne-ar mai trebui căteva perne pentru paturile de spital; avem, dar trebuie schimbate periodic.
				</span>
			</a>
		</li>

		<li class="Col2 Top">
			<a href="javascript:;">
				Păturici pentru sugari
				<span>
					Nu avem în dotarea spitalului pături pentru sugari, astfel că în prezent părinții trebuie să le aducă de acasă.
				</span>
			</a>
		</li>
		<li class="Col2">
			<a href="javascript:;">
				Carusel pentru paturile sugarilor			
				<span>
					Un carusel cu figurine i-ar înveseli pe cei mai mici pacienți ai noștri.
				</span>
			</a>
		</li>
		<li class="Col2">
			<a href="javascript:;">
				Paturi de spital cu saltele							
				<span>
					Avem mare nevoie de câteva paturi de spital cu saltele; e foarte important ca micii noștri pacienți să aibă paturi comfortabile.
				</span>
			</a>
		</li>
		<li class="Col2">
			<a href="javascript:;">
				Televizoare si DVD playere
				<span>
					Ne-au mai ramas două saloane în care nu avem televizoare și DVD playere. Timpul trece altfel în spital când poți privi și la televizor.					
				</span>
			</a>
		</li>
		<li class="Col2">
			<a href="javascript:;">
				Picturi murale
				<span>
					Ne dorim mult să pictăm pereții din saloane cu personaje dragi copiilor, pentru a inveseli puțin atmosfera.
				</span>
			</a>
		</li>
	</ol>

</asp:Content>

<asp:Content ContentPlaceHolderID="RightColumn" runat="server">
	
	<div style="background: #f6f6f6;">
		<div class="fb-like-box" data-href="http://www.facebook.com/asociatianeurocare" data-width="292" data-height="520" data-colorscheme="light" data-show-faces="true" data-border-color="#34A34C" data-stream="true" data-header="true"></div>
	</div>
	
</asp:Content>