<%@ Page Language="C#" MasterPageFile="~/_Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageBlog.aspx.cs" Inherits="_Admin_ManageBlog" %>

<asp:Content ContentPlaceHolderID="Content" Runat="Server">

<b>Manage Blog</b><br /><br />

<table cellpadding="3" cellspacing="1" border="0" style="background: #000000;">
	<tr style="background: #888888; color: #ffffff; font-weight: bold;">
		<td>Title</td>
		<td>Date</td>
		<td>Text</td>
		<td>Action</td>
	</tr>
	
		<asp:Repeater ID="BlogRepeater" runat="server">
			<ItemTemplate>
				<tr style="background: #fafafa;">
					<td><%# Eval("DateAdded").ToString1()%></td>
					<td><%# Eval("Title")%></td>
					<td><%# Eval("Text").CutToFit(400)%></td>
					<td align="center"><asp:HyperLink Text="Edit" NavigateUrl='<%# "~/_admin/addeditblog.aspx?id=" + Eval("Id") %>' runat="server" /></td>
				</tr>
			</ItemTemplate>
			<AlternatingItemTemplate>
				<tr style="background: #e6e6e6;">
					<td><%# Eval("DateAdded").ToString1()%></td>
					<td><%# Eval("Title")%></td>
					<td><%# Eval("Text").CutToFit(400)%></td>
					<td align="center"><asp:HyperLink Text="Edit" NavigateUrl='<%# "~/_admin/addeditblog.aspx?id=" + Eval("Id") %>' runat="server" /></td>
				</tr>
			</AlternatingItemTemplate>
		</asp:Repeater>

</table>

</asp:Content>

