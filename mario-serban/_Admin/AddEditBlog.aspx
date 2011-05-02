<%@ Page Language="C#" MasterPageFile="~/_Admin/Admin.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="AddEditBlog.aspx.cs" Inherits="_Admin_AddEditBlog" %>
<%@ MasterType TypeName="AdminMaster" %>

<asp:Content ContentPlaceHolderID="Content" Runat="Server">

<b><asp:Literal ID="TitleLiteral" runat="server" /></b><br /><br />

<asp:Literal ID="DateLiteral" runat="server" />

Title:<br />
<asp:TextBox ID="TitleTextBox" style="width: 650px;" MaxLength="255" runat="server" /><br /><br />
Text:<br />
<asp:TextBox ID="TextTextBox" TextMode="MultiLine" style="width: 650px; height: 400px;" runat="server" /><br /><br />

<asp:Button ID="AddUpdateButton" OnClick="AddUpdateButton_Click" runat="server" />
<asp:Button ID="CancelButton" Text="Cancel" OnClick="CancelButton_Click" runat="server" />
<asp:Button ID="DeleteButton" Text="Delete" OnClick="DeleteButton_Click" Visible="false" OnClientClick="return confirm('Are you sure you want to delete this blog post?');" style="color: #ff0000;" runat="server" />

<asp:Label ID="ErrorLabel" CssClass="Error" Visible="false" EnableViewState="false" runat="server"><br /><br />All fields are mandatory!</asp:Label>

</asp:Content>

