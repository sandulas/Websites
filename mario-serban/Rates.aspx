<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Rates.aspx.cs" Inherits="Rates" %>
<%@ MasterType TypeName="MainMaster" %>

<asp:Content ContentPlaceHolderID="head" Runat="Server">
	<title>LA Training Room - Rates</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftContent1" runat="server">
	<p class="Bigger">"Right from the beginning when I started my career as a pro hockey player, Mario prepared me for every game. Whether was massage,
	stretching or training he helped me go that extra shift on the ice. He is truly a talented and gifted trainer and massage therapist!
	He takes training and therapy to a whole different level. I highly recommend Mario!"</p>
	<p class="Bigger"><b>Jack Johnson,</b><br />
	Defenseman Los Angeles Kings, 2010 Olympics Silver Medalist, World Championship Captain for Team USA</p>
</asp:Content>

<asp:Content ContentPlaceHolderID="Content" Runat="Server">

	<h1 class="PadB10">LA Training Room Rates</h1>
	<p class="Color3 Big">Special Offer: 50% OFF on your first hour massage.</p>

	<h2 class="PadT10"><b>Fitness and Pilates</b></h2>
	<%--<p class="Color3 Big">Special Offer: 50% OFF on all fitness and Pilates training.</p>--%>

	<h2 class="PadT10">Pilates Mat Classes</h2>
	<p class="NoPadding">Mat classes are for no more than 8 participants per session and are great for beginners to intermediate.<br />This is a great opportunity to strengthen your core, back and gluts.</p>
	<p class="Color2 NoPadding">5 classes: $100 | 10 classes: $200</p>
	<p class="Small">
	Mon:  9am - 10am &nbsp; | &nbsp; 4pm - 5pm &nbsp; | &nbsp; 7pm - 8pm<br/>
	Wed:  9am - 10am &nbsp; | &nbsp; 4pm - 5pm &nbsp; | &nbsp; 7pm - 8pm<br/>
	Fri:  9am - 10am &nbsp; | &nbsp; 4pm - 5pm &nbsp; | &nbsp; 7pm - 8pm<br/>
	Sat:  9am - 10am &nbsp; | &nbsp; 3pm - 4pm &nbsp; | &nbsp; 4pm - 5pm &nbsp; | &nbsp; 6pm - 7pm
	</p>

	<h2 class="PadT10">Individual Training</h2>
	<p class="NoPadding">In this one hour session we are working one-on-one with clients to design and implement a proper strength & conditioning program for each individual's level of exercise.</p>
	<p class="Color2">One hour: $70 | 6 sessions: $380 | 12 sessions: $720</p>

	<h2 class="PadT10">1-On-1 Advanced Training</h2>
	<p class="NoPadding">In this session you work directly with Mario Serban and is designed to achieve speed, endurance, explosion and conditioning. With his knowledge acquired from NHL, Mario created a results-oriented workout combining resistance training, cardio workouts, plyometrics, core training, functional fitness and flexibility.</p>
	<p class="Color2">Half hour: $45 | One hour: $80 | 12 sessions: $800</p>

	<h2 class="PadT10">Small Group Training</h2>
	<p class="NoPadding">This fitness session is for all ages and fitness levels. This is a fun, light weight and low impact training but yet still challenging and vigorous workout.</p>
	<p class="Color2">One hour: $30 | 6 sessions: $160 | 12 Sessions: $290</p>

	<h2 class="PadT10">Mat Pilates</h2>
	<p class="NoPadding">This is a private one-on-one session with Mario and is designed to achieve core strength, flexibility and lean muscle tone.</p>
	<p class="Color2">One hour: $45 | 6 sessions: $230 | 12 sessions: $420</p>  

	<h2 class="PadT10"><b>Massage Services</b></h2>
	<p class="Color3 Big">Special Offer: 50% OFF on your first hour massage.</p>
     
	<h2 class="PadT10">Sports Massage</h2>
	<p class="NoPadding">Sports Massage is a unique combination of muscle stretching and high impact massage    techniques designated for active people and athletes. The main purpose of this massage is to enhance muscle fitness and reduce potential injuries.</p>
	<p class="Color2">Half hour: $45 | One hour: $85 | Hour and a half: $125</p>
            
	<h2 class="PadT10">Therapeutic Massage</h2>
	<p class="NoPadding">This massage utilizes a deep and firm pressure and is used to reduce chronic pain, spasm, trigger points and scar tissue.  Here at LATR we custom design this treatment based on your needs and problem areas.</p>
	<p class="Color2">Half hour: $45 | One hour: $85 | Hour and a half: $125</p>

	<h2 class="PadT10">Circulatory and Lymphatic Massage</h2>
	<p class="NoPadding">This massage consist of slow, light and repetitive strokes that help move blood and lymph fluid through the system of vessels and nodes.</p>
	<p class="Color2">Half hour: $45 | One hour:85 | Hour and a half: $125</p>

	<h2 class="PadT10">Pregnancy Massage</h2>
	<p class="NoPadding">A treatment that is addressing the strain felt in the lower and upper back, neck and legs that occurs during pregnancy.</p>
	<p class="Color2">One hour: $85 | Hour and a half: $125</p>

	<h2 class="PadT10">Suction Cup and Massage Combo</h2>
	<p class="NoPadding">This treatment is used for aches and pain of various types as well as respiratory problems, cough and wheezing. This is also a great treatment when you are coming out of a cold, flu and pneumonia. It is also great for improving circulation and menstrual problems.</p>
	<p class="Color2">50 minutes: $95</p>

	<h2 class="PadT10">Oncology Massage for Cancer</h2>
	<p class="NoPadding">This massage helps alleviate side effects from cancer treatment procedures. It also increases relaxation and decreases muscle tension.</p>
	<p class="Color2">One Hour: $85 | Hour and a half: $130</p>

	<br />
	LATR has a 24 hours cancelation policy. Cash and all major credit cards are accepted.
	By appointment only. To schedule a session or treatment please call: 323-272-3506.

</asp:Content>

