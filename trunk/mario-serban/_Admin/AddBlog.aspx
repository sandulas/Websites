<%@ Page Language="C#" MasterPageFile="~/_Admin/Admin.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="AddBlog.aspx.cs" Inherits="_Admin_AddBlog" %>
<%@ MasterType TypeName="AdminMaster" %>

<asp:Content ContentPlaceHolderID="Content" Runat="Server">

<b>Add Blog</b><br /><br />

Title: <asp:TextBox ID="TitleTextBox" runat="server" /><br />
Text:<br />
<asp:TextBox ID="TextTextBox" TextMode="MultiLine" style="width: 500px; height: 300px;" runat="server" /><br />
<asp:Button ID="AddButton" Text="Add" OnClick="AddButton_Click" runat="server" />

</asp:Content>

