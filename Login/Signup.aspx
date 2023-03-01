<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Login.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
    <script type="text/javascript">
        function validatesignup()
        {
            var ret = true;
            if (document.getElementById("txtusername").value == "")
            {
                document.getElementById("lblerrorusername").innerText = "Username required";
                ret = false;
            }
            else {
                document.getElementById("lblerrorusername").innerText = "";
            }

            if (document.getElementById("txtNo").value == "")
            {
                document.getElementById("lblerrorcellphone").innerText = "Phone number required";
                ret = false;
            }
            else
            {
                document.getElementById("lblerrorcellphone").innerText = "";
            }

            if (document.getElementById("txtpass").value == "")
            {
                document.getElementById("lblerrorpassword").innerText = "Password required";
                ret = false;
            }
            else
            {
                document.getElementById("lblerrorpassword").innerText = "";
            }
            if (document.getElementById("txtcpass").value == "") {
                document.getElementById("lblerrorcpassword").innerText = "Password required";
                ret = false;
            }
            else {
                document.getElementById("lblerrorcpassword").innerText = "";
            }


            if (document.getElementById("txtpass").value != document.getElementById("txtcpass").value) {
                document.getElementById("lblerrorcpassword").innerText = "Passwords entrered should match";
                ret = false;
            }
            else {
                document.getElementById("lblerrorcpassword").innerText = "";
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
       <img src="img/KasClam_Logo.jpeg" alt="Alternate Text" class="user"/>
       <h2>Sign up</h2><br />
        <form runat="server">
            <asp:Label Text="Username" CssClass="lblusername"  runat="server"  />
            <asp:Label ID="lblerrorusername" CssClass="lblusername" ForeColor="Red"  runat="server"  />
            <asp:TextBox runat="server" CssClass="txtusername" placeholder="Username" ID="txtusername" />
            

            <asp:Label Text="Phone number" CssClass="lblcellphone" runat="server" />
            <asp:Label ID="lblerrorcellphone" CssClass="lblusername" ForeColor="Red"  runat="server"  />
            <asp:TextBox runat="server" CssClass="txtcellphone" placeholder="Phone number" ID="txtNo" />

            <asp:Label Text="Password" CssClass="lblpass" runat="server" />
            <asp:Label ID="lblerrorpassword" CssClass="lblusername" ForeColor="Red"  runat="server"  />
            <asp:TextBox runat="server" CssClass="txtpass" placeholder="••••••••••••" ID="txtpass" TextMode="Password" />

            <asp:Label Text="Confirm Password" CssClass="lblpassconfirm" runat="server" />
            <asp:Label ID="lblerrorcpassword" CssClass="lblusername" ForeColor="Red" runat="server"  />
            <asp:TextBox runat="server" CssClass="txtpassconfirm" placeholder="••••••••••••" ID="txtcpass"/>

            <asp:Button Text="Sign up" CssClass="btnsignup" runat="server" ID="btnSignup"
                onclick="btnSignup_Click1" OnClientClick="return validatesignup()" />
              <br /> 
             <center><strong><asp:LinkButton Text="Sign in" PostBackUrl ="Signin.aspx" runat="server"/></strong></center>
            
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