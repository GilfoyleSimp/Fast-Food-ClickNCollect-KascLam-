<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDashboard.aspx.cs" Inherits="Login.CustomerDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleDashboard.css" rel="stylesheet" />
    <link href="Stylesheet" rel="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" />
    
    
<script src="https://kit.fontawesome.com/0f1927db4c.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
    <input type="checkbox" id="check" />
   <header>
       <label for="check">
           <i class="fa-solid fa-bars" id="sidebar_btn"></i>
       </label>
       <div class="left-area">
            <h3>KascLam <span>Dashboard</span></h3>
       </div>
       <div class="right-area">
           <asp:Button ID="Button1" class="logout_btn" runat="server" Text="Logout" OnClick="Button1_Click" />
            
       </div>
   </header>
    <div class="sidebar">
        <center>
            <img src="img/KasCLam_Logo.jpeg" class="profile" /><br /><br />
            <h4><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4>
            <a href="#Dashboard"><i class="fa-solid fa-desktop"></i><span>Promotions</span></a>
           <%-- <a href="CustomerMenu.aspx" ><i class="fa-solid fa-utensils"></i><span>Menu</span> </a>--%>
             <a href="Landing_Menu.aspx" ><i class="fa-solid fa-utensils"></i><span>Menu</span> </a>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fa-solid fa-cart-arrow-down"></i>
                <span>View Order</span></asp:LinkButton>
            <a href="#Reviews"><i class="fa-solid fa-backward"></i><span>Reviews</span></a>
             <a href="#testimonial"><i class="far fa-star"></i><span>Testimonials</span></a>
            <a href="#About us"><i class="fa-solid fa-desktop"></i><span>About us</span></a>

        </center>
    </div>
    <div class="content-area">
        <div class="wrapper">
            <div id="Dashboard" class="CustomerBanner">
                <div class="text-content">
                    <h2>PROMOTIONS</h2><br />
                    <div class="Top-right"><i class="fas fa-star fa-10x" style="color:#f9d71c"></i></div>
                    <center>
                    <div class="pic-black">
                        <img src="img/black-guy.jpg" class="promotion-img" />
                       <div class="text"><h3><strong>COMING SOON...</strong></h3> </div>    
                    </div>
                    </center>
                     <div class="Top-left"><i class="fas fa-star fa-10x" style="color:#f9d71c"></i></div>
                   

                </div>
            </div>
            <div id="Menu" >
        
              
            </div>
          
            <div id="Reviews" class="Reviews-area">
                <div class="text-content">
                    <h2>Reviews</h2><br />
                  <center>
                      <div class="container" >
                        <div class="post">
                            <div class="text">Thanks for rating us!</div>
                            <div class="edit">EDIT</div>
                        </div>
                        <div class="star-widget">
                        <input type="radio" name="rate" id="rate-5"/>
                        <label for="rate-5" class="fas fa-star"></label>
                        <input type="radio" name="rate" id="rate-4"/>
                        <label for="rate-4" class="fas fa-star"></label>
                        <input type="radio" name="rate" id="rate-3"/>
                        <label for="rate-3" class="fas fa-star"></label>
                        <input type="radio" name="rate" id="rate-2"/>
                        <label for="rate-2" class="fas fa-star"></label>
                        <input type="radio" name="rate" id="rate-1"/>
                        <label for="rate-1" class="fas fa-star"></label><br />
                       
                            <h3></h3>
                            
                              <div class="textarea">
                                  <textarea cols="30" placeholder="Describe your exprerience(optional)"></textarea>
                              </div>
                              <div class="btn">
                                    <button type="submit">Post</button>
                                </div>
                         
                        </div>
                    </div>
                    <script>
                        const btn = document.querySelector("button");
                        const post = document.querySelector(".post");
                        const widget = document.querySelector(".star-widget");
                        const editBtn = document.querySelector(".edit");
                        btn.onclick = () => {
                            widget.style.display = "none";
                            post.style.display = "block";
                            editbtn.onclick = () => {
                                widget.style.display = "block";
                                post.style.display = "none"
                            }
                            return false;
                        }
                    </script>
                    
                  </center>
                        
              
                    
                    
                </div>
            </div>
            <div id="testimonial" class="testimonials-area">
                <div class="text-content">
                    <!--testimonials--------->
                    <center>
                    <section id="testimonials">
                        <!--heading-->
                        <div class="testimonial-heading">
                            <span>Testimonials</span>
                            <h1><i>What our customers have to say about us</i></h1>
                        </div>
                        <!--testimonials-box-container------>
                        <div class="testimonial-box-container">
                              <!--Box1----->
                            <div class="testimonial-box">
                            <div class="box-top">
                                <!--profile-->
                                <div class="profile">
                                    <!--img-->
                                    <div class="profile-img">
                                        <img src="img/user1.jpg" />
                                    </div>
                                    <!--name-and-username-->
                                    <div class="name-user">
                                        <strong>Tasheel Mahlangu</strong>
                                        <span>@Tasheel123</span>
                                    </div>

                                </div>
                            <!--Treviews-->
                                <div class="Treviews">
                                    <i class="fas fa-star"></i>
                                     <i class="fas fa-star"></i>
                                     <i class="far fa-star"></i>
                                     <i class="far fa-star"></i>
                                     <i class="far fa-star"></i>
                                </div>
                            </div>
                            <!--Comments------>
                            <div class="client-comment">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        Excepteur sint occaecat cupidatat non proident, sunt in culpa. </p>
                            </div>
                        </div>
                               <!--Box2----->
                            <div class="testimonial-box">
                            <div class="box-top">
                                <!--profile-->
                                <div class="profile">
                                    <!--img-->
                                    <div class="profile-img">
                                        <img src="img/user2.jpg" />
                                    </div>
                                    <!--name-and-username-->
                                    <div class="name-user">
                                        <strong>Lyzander Yende</strong>
                                        <span>@syende33</span>
                                    </div>

                                </div>
                            <!--Treviews-->
                                <div class="Treviews">
                                    <i class="fas fa-star"></i>
                                     <i class="fas fa-star"></i>
                                     <i class="fas fa-star"></i>
                                     <i class="fas fa-star"></i>
                                     <i class="fas fa-star"></i>
                                </div>
                            </div>
                            <!--Comments------>
                            <div class="client-comment">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        Excepteur sint occaecat cupidatat non proident, sunt in culpa. </p>
                            </div>
                        </div>
                               <!--Box3----->
                            <div class="testimonial-box">
                            <div class="box-top">
                                <!--profile-->
                                <div class="profile">
                                    <!--img-->
                                    <div class="profile-img">
                                        <img src="img/user3.jpg" />
                                    </div>
                                    <!--name-and-username-->
                                    <div class="name-user">
                                        <strong>Tshepo Kekana</strong>
                                        <span>@tshepo1103</span>
                                    </div>

                                </div>
                            <!--Treviews-->
                                <div class="Treviews">
                                    <i class="fas fa-star"></i>
                                     <i class="fas fa-star"></i>
                                     <i class="fas fa-star"></i>
                                     <i class="far fa-star"></i>
                                     <i class="far fa-star"></i>
                                </div>
                            </div>
                            <!--Comments------>
                            <div class="client-comment">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        Excepteur sint occaecat cupidatat non proident, sunt in culpa. </p>
                            </div>
                        </div>
                               <!--Box4----->
                            <div class="testimonial-box">
                            <div class="box-top">
                                <!--profile-->
                                <div class="profile">
                                    <!--img-->
                                    <div class="profile-img">
                                        <img src="img/user4.jpg" />
                                    </div>
                                    <!--name-and-username-->
                                    <div class="name-user">
                                        <strong>Spha Tacoulas</strong>
                                        <span>@Tacobell89</span>
                                    </div>

                                </div>
                            <!--Treviews-->
                                <div class="Treviews">
                                    <i class="fas fa-star"></i>
                                     <i class="fas fa-star"></i>
                                     <i class="fas fa-star"></i>
                                     <i class="fas fa-star"></i>
                                     <i class="far fa-star"></i>
                                </div>
                            </div>
                            <!--Comments------>
                            <div class="client-comment">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        Excepteur sint occaecat cupidatat non proident, sunt in culpa. </p>
                            </div>
                        </div>
                      </div>

                    </section>
                      </center>

                   
                  
                    
                  
                        
              
                    
                    
                </div>
            </div>

             <div id="About us" class="About-area" >
                   <h2 class="text-content1" >ABOUT US</h2><br />
                    <section class="content-section aboutcontainer">
                      
                     <img src="img/Cover2.jpg"  class="about-us-image" />
                    <strong><p>TO BE UPDATED...</p></strong>
                      
                 
                    </section>      
                    
               
            </div>
            <footer class="main-footer">
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
            </footer>
            
        </div >
       
       
    </div>

   
   
     </form>
    
</body>

</html>