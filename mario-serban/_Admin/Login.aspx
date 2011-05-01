<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Admin_Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Mario Serban Therapy - Admin</title>
	<link rel="Stylesheet" type="text/css" href="../App/Css/Admin.css?v=1" />
</head>
<body>
<form id="form1" runat="server">

<div style="width: 300px; margin: 0 auto; border: solid 1px #000000; background: #eeeeee; padding: 15px; margin-top: 100px;">

<table cellpadding="2" cellspacing="0" border="0">
	<tr>
		<td colspan="2" style="font-size: 20px; font-weight: bold; padding-bottom: 15px;">Mario Serban Therapy Admin</td>
	</tr>	
	<tr>
		<td colspan="2" style="padding-bottom: 10px;"><b>Login</b></td>
	</tr>
	<tr>
		<td>Username:</td>
		<td><asp:TextBox ID="UsernameTextBox" runat="server" /></td>
	</tr>
	<tr>
		<td>Password:</td>
		<td><asp:TextBox ID="PasswordTextBox" TextMode="Password" runat="server" /></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><asp:Button ID="SubmitButton" Text="Login" OnClick="SubmitButton_Click" runat="server" /></td>
	</tr>
	<asp:PlaceHolder ID="ErrorHolder" Visible="false" runat="server">
	<tr>
		<td colspan="2" style="color: #cc0000; padding-top: 10px;">Authentication failed!</td>
	</tr>
	</asp:PlaceHolder>
</table>

</div>

</form>
</body>
</html>
