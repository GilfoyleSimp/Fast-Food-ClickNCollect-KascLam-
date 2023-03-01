<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="Login.Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin login</title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
   <div class="loginbox">
       <img src="img/KasClam_Logo.jpeg" alt="Alternate Text" class="user"/>
       <h2>Admin Login</h2><br />
        <form runat="server">
            <asp:Label Text="Username" CssClass="lblusername" runat="server" />
            <asp:TextBox runat="server" CssClass="txtusername" placeholder="Username" ID="txtusername" />
            <asp:Label Text="Password" CssClass="lblpass" runat="server" />
            <asp:TextBox runat="server" CssClass="txtpass" placeholder="••••••••••••" ID="txtpass" TextMode="Password" />
            <asp:Button Text="Login" CssClass="btnlogin" runat="server" ID="Btnlogin" OnClick="Btnlogin_Click"/>
           
        </form>

   </div>
</body>
</html>

