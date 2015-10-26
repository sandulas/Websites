<%@ Page Language="C#" MasterPageFile="~/Columns.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title><%= "TitlePrefix".T("Common") + "Title".T("Presa")%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftColumn" Runat="Server">

<h2><%= "Head".T("Presa") %></h2>
<ul>
	<% if (Language.GetCurrent() == (int)Languages.Romanian) { %>
		<li><asp:HyperLink NavigateUrl="http://talentedenazdravani.eu/blog/2015/09/29/lumea-copiilor-care-vor-sa-stie-tot/" Target="_blank" runat="server">Lumea copiilor care vor să știe tot</asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="http://adevarul.ro/sanatate/medicina/tot-mai-copii-ajung-neurolog-dureri-capde-cee-cauzele-parinte-trebuie-stie-1_5604284ef5eaafab2cf5a07b/index.html" Target="_blank" runat="server">Tot mai mulţi copii ajung la neurolog cu dureri de cap. De ce?</asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="https://piticidarvoinici.wordpress.com/2015/09/24/de-ce-vor-copiii-sa-stie-despre-dezvoltarea-lor-neuro-cognitiva/" Target="_blank" runat="server">De ce vor copiii sa stie? Despre dezvoltarea lor neuro-cognitiva</asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="http://go-big.ro/de-ce-de-ce-de-ce/" Target="_blank" runat="server">DE CE? DE CE? DE CE?</asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="http://www.sperantatv.ro/web/provocarile-vietii-epilepsia-invitat-magdalena-sandu-14-07-2015/" Target="_blank" runat="server">Dr. Magda Sandu - Provocarile Vietii - Epilepsia (Speranta TV)</asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="https://www.youtube.com/watch?v=_3KAy2eCcIg" Target="_blank" runat="server"><%= "Item10Title".T("Presa") %></asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="https://www.youtube.com/watch?v=cx0r7Fw3PAI" Target="_blank" runat="server"><%= "Item11Title".T("Presa") %></asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="~/Presa/dr-magdalena-sandu-convulsiile febrile-trinitas-25-03-2015.mp3" Target="_blank" runat="server">Dr. Magda Sandu - Convulsiile febrile (Radio Trinitas)</asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="~/Presa/cat-de-constienti-suntem-de-sanatatea-organismului-nostru.aspx" runat="server"><%= "Item9Title".T("Presa") %></asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="~/Presa/manifestare-in-sprijinul-copiilor-bolnavi-de-epilepsie.aspx" runat="server"><%= "Item8Title".T("Presa") %></asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="~/Presa/dialog-despre-viata-copiilor-bolnavi-de-epilepsie.aspx" runat="server"><%= "Item7Title".T("Presa") %></asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="~/Presa/aproape-500.000-de-romani-sufera-de-epilepsie.aspx" runat="server"><%= "Item6Title".T("Presa") %></asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="~/Presa/dr-raluca-teleanu-la-traieste-sanatos.aspx" runat="server"><%= "Item5Title".T("Presa") %></asp:HyperLink></li>
		<li><asp:HyperLink NavigateUrl="~/Presa/doctorita-raluca-teleanu-zana-mea-de-la-spitalul-victor-gomoiu.aspx" runat="server"><%= "Item4Title".T("Presa") %></asp:HyperLink></li>
	<% } %>
	<li><asp:HyperLink NavigateUrl="~/presa/dr-dan-teleanu-la-doctore-esti-un-erou.aspx" runat="server"><%= "Item3Title".T("Presa") %></asp:HyperLink></li>
	<li><asp:HyperLink NavigateUrl="~/presa/barbatul-care-a-invins-patru-forme-de-cancer-intr-un-an.aspx" runat="server"><%= "Item2Title".T("Presa") %></asp:HyperLink></li>
	<li><asp:HyperLink NavigateUrl="~/presa/instructor-de-schi-tratat-de-dr-dan-teleanu.aspx" runat="server"><%= "Item1Title".T("Presa") %></asp:HyperLink></li>
</ul>

</asp:Content>
