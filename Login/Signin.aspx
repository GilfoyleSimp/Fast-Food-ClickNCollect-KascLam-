<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="Login.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script type="text/javascript">
        function validatesignin()
        {
            var ret = true;
            if (document.getElementById("txtusername").value == "")
            {
                document.getElementById("lblerrorusername").innerText = "Enter Username";
                ret = false;
            }
            else {
                document.getElementById("lblerrorusername").innerText = "";
            }


            if (document.getElementById("txtpass").value == "")
            {
                document.getElementById("lblerrorpassword").innerText = "Enter Password";
                ret = false;
            }
            else
            {
                document.getElementById("lblerrorpassword").innerText = "";
            }
            

            return ret;
        }
</script>
    <link href="Style.css" rel="stylesheet" />
      <link href="Stylesheet" rel="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" />
     <script src="https://kit.fontawesome.com/0f1927db4c.js" crossorigin="anonymous"></script>
</head>
<body>

   <div class="loginbox">
       <h2 class="loginh2">Login<img src="img/KasClam_Logo.jpeg" alt="Alternate Text" class="user"/></h2>
        <form runat="server" class="login-contents">

        <asp:Label Text="Username" CssClass="lblusername" runat="server" />
        <asp:Label ID="lblerrorusername" CssClass="lblusername" ForeColor="Red"  runat="server"  />
        <asp:TextBox runat="server" CssClass="txtusername" placeholder="Username" ID="txtusername" />

        <asp:Label Text="Password" CssClass="lblpass" runat="server" />
        <asp:Label ID="lblerrorpassword" CssClass="lblusername" ForeColor="Red"  runat="server"  />
        <asp:TextBox runat="server" CssClass="txtpass" placeholder="••••••••••••" ID="txtpass" TextMode="Password" />

        <asp:Label ID="lblinvalid" CssClass="lblusername" ForeColor="Red"  runat="server"  />


        <asp:Button Text="Login" CssClass="btnlogin" runat="server" ID="btnSignin" OnClick="btnSignin_Click" OnClientClick="return validatesignin()" />

        <asp:LinkButton Text="Forget Password |" CssClass="btnforget" PostBackUrl="forget.aspx" runat="server" />
        <asp:LinkButton Text="Admin Login" CssClass="btnadminlogin" PostBackUrl="Admin_login.aspx" runat="server" />
        <br />
        <center><strong><asp:LinkButton Text="Sign up" PostBackUrl="Signup.aspx" runat="server" /></strong></center>
    </form>

   </div>


   <div class="main-footer">
                <div class=" main-footer-container">
                <h3 class="footer-header">Kasclam</h3>
             
                <ul class="footer-nav">
                    <li>
                    <a href="https://www.google.com/search?q=1292+Dr+T+Matsipa+St%2C+Spruitview%2C+Katlehong%2C+1425&rlz=1C1NDCM_enZA952ZA952&oq=1292+Dr+T+Matsipa+St%2C+Spruitview%2C+Katlehong%2C+1425&aqs=chrome..69i57.531j0j7&sourceid=chrome&ie=UTF-8#" target="_blank">
                    <i class="fa-brands fa-google fa-4x" style="color:yellow"></i>
                     </a>
                       
                    </li>
                    <li>
                        <a href="https://r.search.yahoo.com/_ylt=AwrIdF0VwXNiUGgAoBsM34lQ;_ylu=Y29sbwNpcjIEcG9zAzEEdnRpZAMEc2VjA3Ny/RV=2/RE=1651782037/RO=10/RU=https%3a%2f%2fwww.instagram.com%2fkasclam_healthyfood%2f/RK=2/RS=ii8n6bl53xEszEppx8cnkZjFUlU-" target="_blank">
                        <i class="fa-brands fa-instagram fa-4x" style="color:yellow"></i>
                        </a>
                    </li>
                    <li>
                        <a href="https://r.search.yahoo.com/_ylt=AwrLFMdEwHNiODYAmQQM34lQ;_ylu=Y29sbwNpcjIEcG9zAzEEdnRpZAMEc2VjA3Ny/RV=2/RE=1651781828/RO=10/RU=https%3a%2f%2fwww.facebook.com%2fkascLamFastfood%2f/RK=2/RS=Lnv.UjZnDamD5pH38yJa__mSqUo-" target="_blank" >
                       <i class="fa-brands fa-facebook fa-4x" style="color:yellow"></i>
                        </a>
                    </li>
                </ul>
               </div>
      </div>
</body>
</html>