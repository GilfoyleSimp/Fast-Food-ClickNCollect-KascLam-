<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing_Menu.aspx.cs" Inherits="Login.Landing_Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu</title>
    <link href="Style2.css" rel="stylesheet" />
      <link href="Stylesheet" rel="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" />
    
    
<script src="https://kit.fontawesome.com/0f1927db4c.js" crossorigin="anonymous"></script>
</head>
<body>
     <form id="form1" runat="server">
        <input type="checkbox" id="check" checked="checked" />
   <header>
       <label for="check">
          
           <i class="fa-solid fa-cart-shopping"  id="sidebar_btn"></i>
       </label>
       <div class="left-area">
            <h3>KascLam <span>Menu</span></h3>
       </div>
     
   </header>
  
         <div class="sidebar">
        <center>
        <div class="dashboard-order">
           <div class ="order-address">
            <div class ="order-address">
                <asp:Button ID="btnsubmit" class="submit-order" runat="server" Text="Submit order" OnClick="btnsubmit_Click" /><br />
                <br />
                <h3>Collection Adress</h3>
                <h3>1292 Dr T Matsipa St, Spruitview, Katlehong, 1425</h3>
                <img src="img/KasCLam_Logo.jpeg" style="width:35px; height:35px; border-radius:17.5px;"/><br />
                <a class="direction-link" href="https://www.google.com/search?q=1292+Dr+T+Matsipa+St%2C+Spruitview%2C+Katlehong%2C+1425&rlz=1C1NDCM_enZA952ZA952&oq=1292+Dr+T+Matsipa+St%2C+Spruitview%2C+Katlehong%2C+1425&aqs=chrome..69i57.531j0j7&sourceid=chrome&ie=UTF-8#" target="_blank">Directions</a>
                <h4 class="cart-title">Your Order Cart</h4>

            </div>
            
            <%-- SIDE CART --%>
            <div class="order-wrapper">
                <div class="order-card">
                    <div class="order-detail">
                        <asp:GridView ID="GridView8" DataKeyNames="Item_id" runat="server" OnRowDeleted="GridView8_RowDeleted" OnSelectedIndexChanged="GridView8_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="cart-grid">
                            <Columns>
                                <asp:BoundField DataField="Item_id" SortExpression="Item_id" />
                                <asp:BoundField DataField="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                                <asp:CommandField ShowDeleteButton="true" DeleteText="+" ControlStyle-CssClass="btnincr" />
                                <asp:CommandField ShowSelectButton="True" SelectText="-" ControlStyle-CssClass="btndecr" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
                            SelectCommand="SELECT i.item_id, i.Item_name, c.qty FROM item1 AS i INNER JOIN cart1 AS c ON i.Item_id = c.Item_id where c.qty>0 ORDER BY c.Item_id"
                            DeleteCommand="update cart1 set qty=qty+1 where Item_id=@Item_id;insert into cart2(item_id,customer_id,status) values (@Item_id, @customer, 'Pending'; ">
                            <DeleteParameters>
                                <asp:Parameter Name="Item_id" />
                                <asp:SessionParameter Name="customer" SessionField="id" Type="int32" />
                            </DeleteParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                
            </div>
            <hr class="divider"/>
            <div class="order-total">
                <p> Total <span>
                    <asp:GridView ID="GridView9" CssClass="totals-grid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                        <Columns>
                            <asp:BoundField DataField="subtotal" DataFormatString="{0:###,###.00}" ReadOnly="True" SortExpression="subtotal" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
                    SelectCommand="SELECT sum(c.qty * i.Price) AS subtotal FROM cart1 AS c INNER JOIN item1 AS i ON c.Item_id = i.Item_id">
                    </asp:SqlDataSource>
                    </span></p>
                <%--<hr class="divider"/>
                <p> Total <span><asp:GridView ID="GridView5" CssClass="totals-grid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                        <Columns>
                            <asp:BoundField DataField="subtotal" DataFormatString="{0:###,###.00}" ReadOnly="True" SortExpression="subtotal" />
                        </Columns>
                    </asp:GridView></span></p>--%>
            </div>
<%--            <asp:Label ID="lbltest" runat="server" Text=""></asp:Label>--%> <%--TESTER LABEL--%>
            </div>
        </div>

        </center>
             
    </div>

                <div class="content">
                    <div class="text-content">
                    <!--Menus--------->
                    <center>
                    <section id="Menu">
                
                        <!--testimonials-box-container------>
                        <div class="Menu-box-container2">
                              <!--Box1----->
                            <div class="Menu-box2">
                            <div class="box-top2">
                                <!--profile-->
                                <div class="profile2">
                                    <!--img-->
                                    <div class="profile-img2">
                                        
                                        <asp:ImageButton ID="Image1" src="KotaP.jpg" runat="server" OnClick="Image1_Click" href="#GridView2"/>
                                    
                                    <div class="text-Header"><h3><strong>Kota</strong></h3> </div>    
                                    </div>

                                </div>
                           
                            </div>
                           
                        </div>
                               <!--Box2----->
                            <div class="Menu-box2">
                            <div class="box-top2">
                                <!--profile-->
                                <div class="profile2">
                                    <!--img-->
                                    <div class="profile-img2">
                                      
                                    <asp:ImageButton ID="ImageButton1" src="DagwoodP.jpg" runat="server" OnClick="ImageButton1_Click"/>
                                         <div class="text-Header"><h3><strong>Dagwood</strong></h3> </div>    
                                    </div>

                                </div>
                            </div>
                        </div>
                               <!--Box3----->
                            <div class="Menu-box2">
                            <div class="box-top2">
                                <!--profile-->
                                <div class="profile2">
                                    <!--img-->
                                    <div class="profile-img2">
                                      <asp:ImageButton ID="ImageButton2"  src="BurgerP.jpg" runat="server" OnClick="ImageButton2_Click"/>
                                         <div class="text-Header"><h3><strong>Burger</strong></h3> </div>    
                                    </div>
                                   

                                </div>
                           
                            </div>
                            <!--Comments------>
                            
                        </div>
                               <!--Box4----->
                            <div class="Menu-box2">
                            <div class="box-top2">
                                <!--profile-->
                                <div class="profile2">
                                    <!--img-->
                                    <div class="profile-img2">                                      
                                        <asp:ImageButton ID="ImageButton3" src="shwarmaP.jpeg" runat="server" OnClick="ImageButton3_Click" />
                                         <div class="text-Header"><h3><strong>Shwarma</strong></h3> </div>    
                                    </div>
                                   

                                </div>
                           
                            </div>
                           
                        </div>
                                 <!--Box5----->
                            <div class="Menu-box2">
                            <div class="box-top2">
                                <!--profile-->
                                <div class="profile2">
                                    <!--img-->
                                    <div class="profile-img2">                              
                                        <asp:ImageButton ID="ImageButton4" src="TitanicP.jpg" runat="server" onclick="ImageButton4_Click"/>
                                         <div class="text-Header"><h3><strong>Gourmet Kota</strong></h3> </div>    
                                    </div>
                                   

                                </div>
                           
                            </div>
                           
                        </div>
                                 <!--Box6----->
                            <div class="Menu-box2">
                            <div class="box-top2">
                                <!--profile-->
                                <div class="profile2">
                                    <!--img-->
                                    <div class="profile-img2">   
                                            <asp:ImageButton ID="ImageButton5" src="SideP.jpg" runat="server" onclick="ImageButton5_Click"/>
                                         <div class="text-Header"><h3><strong>Sides</strong></h3> </div>    
                                    </div>
                                   

                                </div>
                           
                            </div>
                           
                        </div>
                      </div>

                    </section>
                      </center>                             
                </div>
         <section id="MenuDetail" class="GridViewStyle">
         <center>                 
             <div>    

         <asp:GridView ID="GridView2" DataKeyNames="Item_id" ondatabound="GridView2_DataBound" visible="false" runat="server"  onselectedindexchanged="GridView2_SelectedIndexChanged1" AutoGenerateColumns="false"  Width="90%" DataSourceID="SqlDataSource2" 

             AllowPaging="true" PageSize="5" ShowFooter="true" CssClass="GridViewStyle">            

             <HeaderStyle CssClass="HeaderStyle" />

             <FooterStyle CssClass="FooterStyle" />

             <RowStyle CssClass="RowStyle" />

             <AlternatingRowStyle CssClass="AlternatingRowStyle" />

             <PagerStyle CssClass="PagerStyle" />           
               <Columns >
                               
                                <asp:BoundField DataField="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true"   ControlStyle-CssClass="btnlogin" SelectText="add to cart"/>
                                <asp:BoundField DataField="Item_id" SortExpression="Item_id" ShowHeader="false" Visible="false"/>

               </Columns>

        </asp:GridView> 
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1]
                            WHERE ([Item_type] LIKE + @Item_type and Instock = 1)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Kota" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
               

        <asp:GridView ID="GridView1"  DataKeyNames="Item_id" visible="false" runat="server"  onselectedindexchanged="GridView1_SelectedIndexChanged1" AutoGenerateColumns="false"  Width="90%" DataSourceID="SqlDataSource4" 

             AllowPaging="true" PageSize="5" ShowFooter="true" CssClass="GridViewStyle">            

             <HeaderStyle CssClass="HeaderStyle" />

             <FooterStyle CssClass="FooterStyle" />

             <RowStyle CssClass="RowStyle" />

             <AlternatingRowStyle CssClass="AlternatingRowStyle" />

             <PagerStyle CssClass="PagerStyle" />           
               <Columns>
                                
                                <asp:BoundField DataField="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true"  SelectText="add to cart"/>
                                <asp:BoundField DataField="Item_id" SortExpression="Item_id" ShowHeader="false" Visible="false"/>

               </Columns>

         </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1] 
                            WHERE ([Item_type] LIKE + @Item_type and Instock = 1)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Gourmet Kota" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

             <asp:GridView ID="GridView3" DataKeyNames="Item_id" visible="false" runat="server"  onselectedindexchanged="GridView3_SelectedIndexChanged" AutoGenerateColumns="false"  Width="90%" DataSourceID="SqlDataSource5" 

             AllowPaging="true" PageSize="5" ShowFooter="true" CssClass="GridViewStyle">            

             <HeaderStyle CssClass="HeaderStyle" />

             <FooterStyle CssClass="FooterStyle" />

             <RowStyle CssClass="RowStyle" />

             <AlternatingRowStyle CssClass="AlternatingRowStyle" />

             <PagerStyle CssClass="PagerStyle" />           
               <Columns>
                                
                                <asp:BoundField DataField="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true"  SelectText="add to cart"/>
                                <asp:BoundField DataField="Item_id" SortExpression="Item_id" ShowHeader="false" Visible="false"/>

               </Columns>

         </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1]
                            WHERE ([Item_type] LIKE + @Item_type and Instock = 1)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Kota Shwarma" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

         <asp:GridView ID="GridView4"  DataKeyNames="Item_id" visible="false" runat="server"  onselectedindexchanged="GridView4_SelectedIndexChanged" AutoGenerateColumns="false"  Width="90%" DataSourceID="SqlDataSource6" 

             AllowPaging="true" PageSize="5" ShowFooter="true" CssClass="GridViewStyle">            

             <HeaderStyle CssClass="HeaderStyle" />

             <FooterStyle CssClass="FooterStyle" />

             <RowStyle CssClass="RowStyle" />

             <AlternatingRowStyle CssClass="AlternatingRowStyle" />

             <PagerStyle CssClass="PagerStyle" />           
               <Columns>
                                
                                <asp:BoundField DataField="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true"  SelectText="add to cart"/>
                                <asp:BoundField DataField="Item_id" SortExpression="Item_id" ShowHeader="false" Visible="false"/>

               </Columns>

        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1] 
                            WHERE ([Item_type] LIKE + @Item_type and Instock = 1)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Dagwood" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

        <asp:GridView ID="GridView5"  DataKeyNames="Item_id" visible="false" runat="server"  onselectedindexchanged="GridView5_SelectedIndexChanged" AutoGenerateColumns="false"  Width="90%" DataSourceID="SqlDataSource7" 

             AllowPaging="true" PageSize="5" ShowFooter="true" CssClass="GridViewStyle">            

             <HeaderStyle CssClass="HeaderStyle" />

             <FooterStyle CssClass="FooterStyle" />

             <RowStyle CssClass="RowStyle" />

             <AlternatingRowStyle CssClass="AlternatingRowStyle" />

             <PagerStyle CssClass="PagerStyle" />           
               <Columns>
                                
                                <asp:BoundField DataField="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true"  SelectText="add to cart"/>
                                <asp:BoundField DataField="Item_id" SortExpression="Item_id" ShowHeader="false" Visible="false"/>

               </Columns>

          </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1] 
                            WHERE ([Item_type] LIKE + @Item_type and Instock = 1)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Roll Burger" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                <asp:GridView ID="GridView6"  DataKeyNames="Item_id" visible="false" runat="server"  onselectedindexchanged="GridView6_SelectedIndexChanged" AutoGenerateColumns="false"  Width="90%" DataSourceID="SqlDataSource8" 

             AllowPaging="true" PageSize="5" ShowFooter="true" CssClass="GridViewStyle">            

             <HeaderStyle CssClass="HeaderStyle" />

             <FooterStyle CssClass="FooterStyle" />

             <RowStyle CssClass="RowStyle" />

             <AlternatingRowStyle CssClass="AlternatingRowStyle" />

             <PagerStyle CssClass="PagerStyle" />           
               <Columns>
                                
                                <asp:BoundField DataField="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true"  SelectText="add to cart"/>
                                <asp:BoundField DataField="Item_id" SortExpression="Item_id" ShowHeader="false" Visible="false"/>

               </Columns>

           </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1]
                            WHERE ([Item_type] LIKE + @Item_type and Instock = 1)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Brunch" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                 
                <asp:GridView ID="GridView7"  DataKeyNames="Item_id" visible="false" runat="server"  onselectedindexchanged="GridView7_SelectedIndexChanged" AutoGenerateColumns="false"  Width="90%" DataSourceID="SqlDataSource9" 

             AllowPaging="true" PageSize="5" ShowFooter="true" CssClass="GridViewStyle">            

             <HeaderStyle CssClass="HeaderStyle" />

             <FooterStyle CssClass="FooterStyle" />

             <RowStyle CssClass="RowStyle" />

             <AlternatingRowStyle CssClass="AlternatingRowStyle" />

             <PagerStyle CssClass="PagerStyle" />           
               <Columns>
                                
                                <asp:BoundField DataField="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true"  SelectText="add to cart"/>
                                <asp:BoundField DataField="Item_id" SortExpression="Item_id" ShowHeader="false" Visible="false"/>

               </Columns>

           </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1] 
                            WHERE ([Item_type] LIKE + @Item_type and Instock = 1)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Side" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

    </div>
          </center>
         </section>
         </form>
               
    </body>
           
</html>

