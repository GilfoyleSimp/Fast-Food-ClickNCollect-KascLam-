<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Login.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
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
            <a href="Signin.aspx" class="logout_btn">Logout</a>
       </div>
   </header>
    <div class="sidebar">
        <center>
            <img src="img/KasCLam_Logo.jpeg" class="profile" />
            <h4>ADMIN</h4>
            <a href="#Dashboard"><i class="fa-solid fa-desktop"></i><span>Dashboard</span></a>
            <a href="Menu Business.aspx" ><i class="fa-solid fa-utensils"></i><span>Menu</span> </a>
            <a href="OrderStatus.aspx" ><i class="fa-solid fa-cart-arrow-down"></i><span>Orders</span> </a>
            <a href="#testimonials"><i class="fa-solid fa-backward"></i><span>Reviews</span></a>

        </center>
    </div>
    <div class="content-area">
        <div class="wrapper">
            <div id="Dashboard" class="Banner">
                <div class="text-content">
                    <h2>SUMMARY</h2>
                        <!-- cards-->
                        <div class="cardBox">
                            <div class="card">
                                <div>
                                    <div class="numbers">
                                    </div>
                                    <asp:Label ID="lblviewscount" runat="server" Text=""></asp:Label></div>
                                    <div class="cardName">Daily Views</div>
                                </div>
                                <div class="iconBx">
                                  <i class="fa-solid fa-eye"></i>
                                </div>
                            </div>
                             <div class="card">
                                <div>
                                    <div class="numbers">   
                                    <asp:Label ID="lbluserscount" runat="server"></asp:Label>
                                    </div>
                                    <div class="cardName">Registered users</div>
                                </div>
                                <div class="iconBx">
                                  <i class="fa-solid fa-person"></i>
                                </div>
                            </div>
                             <div class="card">
                                <div>
                                    <div class="numbers">
                                    <asp:Label ID="lblorderscount" runat="server" Text=""></asp:Label></div>
                                    <div class="cardName">Orders</div>
                                </div>
                                <div class="iconBx">
                                    <i class="fa-solid fa-utensils"></i>
                                </div>
                            </div>
                            <div class="card">
                                <div>
                                    <div class="numbers"></div>
                                    <asp:Label ID="lblearningscount" runat="server" Text=""></asp:Label></div>
                                    <div class="cardName">Earnings</div>
                                </div>
                                <div class="iconBx">
                                  <i class="fa-solid fa-coins"></i>
                                </div>
                            </div>
                        </div>
                        </div>
                          <!-- details-->
                        <div class="details">
                            <div class="recentOrders">
                                <div class="cardHeader">
                                <h2>Recent Orders</h2>
                                 </div><br />
                               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                                   BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                   GridLines="Horizontal" ForeColor="White" Font-Names="monospace" Font-Bold="true">
                                   <Columns>
                                       <asp:BoundField DataField="Customer_id" HeaderText="Customer id" SortExpression="Customer_id" />
                                       <asp:BoundField DataField="DateofOrder" HeaderText="Date of order" SortExpression="DateofOrder" />
                                       <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                   </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                   <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                   <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                   <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                   <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                   <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                   <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                   <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                        ConnectionString="<%$ ConnectionStrings:con %>"
                                        SelectCommand="SELECT Top 20 [Customer_id], [DateofOrder], [Status] FROM [customer_order1]
                                        order by [DateofOrder] desc"></asp:SqlDataSource>
                                <br />
                               <a href="OrderStatus.aspx">More</a>
                            </div>

                              <!-- new customer-->
                            <div class="recentCustomer">
                                   <div class="cardHeader">
                                    <h2>Recent Customer</h2>
                                    </div>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" GridLines="Horizontal" ForeColor="Black">
                                        <Columns>
                                            <asp:BoundField DataField="Customer_Username" HeaderText="Customer Username" SortExpression="Customer_Username" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ 
                                        ConnectionStrings:con %>" 
                                        SelectCommand="SELECT top 5 [Customer_Username] FROM [customer1] c,customer_order1 o 
                                        where c.[Customer_id] = o.[Customer_id] ORDER BY o.[Customer_id] desc"></asp:SqlDataSource>
                            
                            </div>
                        </div>

                   

                </div>
            </div>
            <div id="Menu" >
        
              
            </div>
          
            <div id="testimonials" class="testimonials-area">
                <div class="text-content">
                    <!--testimonials--------->
                    <center>
                    <section id="testimonials">
                        <!--heading-->
                        <div class="testimonial-heading">
                            <span>Testimonials</span>
                            <h1>Client Says</h1>
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
                                        <img src="img/chicken.jfif" />
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
                                        <img src="img/chicken.jfif" />
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
                                        <img src="img/chicken.jfif" />
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
                                        <img src="img/chicken.jfif" />
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
            </div>>
        </div >
        </form>
   
   
     
    
</body>

</html>