<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forget.aspx.cs" Inherits="Login.forget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Signup</title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
   <div class="loginbox">
       <img src="img/KasClam_Logo.jpeg" alt="Alternate Text" class="user"/>
       <h2>Reset password</h2><br />
        <form runat="server">
           
             <asp:Label Text="Phone number" CssClass="lblcellphoneForget" runat="server" />
            <asp:TextBox runat="server" CssClass="txtcellphoneForget" placeholder="Phone number" />
            <asp:Button Text="Get OTP" CssClass="btnOTP" runat="server" />
             <asp:LinkButton Text="Resend OTP" CssClass="btnresend" runat="server" /><br />
             <asp:Label Text="verify OTP" CssClass="lblverify" runat="server" />
             <asp:TextBox runat="server" CssClass="txtverify" placeholder="0000" />
            
        </form>

   </div>
</body>
</html>
