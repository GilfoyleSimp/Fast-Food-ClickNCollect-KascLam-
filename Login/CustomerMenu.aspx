<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerMenu.aspx.cs" Inherits="Login.Menu1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>KasC-Lam Menu</title>
    <link href="Style2.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<%--            <h3 class="maintitle">KasC-Lam Menu </h3>--%>
        </div>
        <div class="dashboard">
            <div class="navbar">
                <a href="CustomerDashboard.aspx"><b>BACK</b></a>
                <a href="#kota-card">Kota</a>
                <a href="#gkota-card">Gourmet Kota</a>
                <a href="#kshwarm-card">Kota Shwarma</a>
                <a href="#dag-card">Dagwood</a>
                <a href="#rburg-card">Roll Burger</a>
                <a href="#brunch-card">Brunch</a>
                <a href="#sides-card">Sides</a>
            </div>
        </div>
<%--          
            
            <div class="dashboard-content"/>
                <%--KOTA MENU--%>
                <h5 id="kota-card" class="card-image-ref"><br/><br/></h5>
                <h3 class="card-image-title"><br/><br/>Kotas</h3>

                <div class="dashboard-card">
                    <img class="card-image" src="img/kota transparent.png"/>
                    <div class="card-detail">

                        <asp:GridView ID="GridView1" runat="server" DataKeyNames="Item_id" CssClass="menu-grid" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns> 
                                <asp:BoundField DataField="Item_name" ItemStyle-ForeColor="Orange" ItemStyle-CssClass="item-name-grid" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" ItemStyle-CssClass ="" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true" ControlStyle-CssClass="btnlogin" SelectText="add to cart"/>
                                <asp:BoundField DataField="Item_id" SortExpression="Item_id" ShowHeader="false" Visible="false"/>

                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1]
                            WHERE ([Item_type] LIKE + @Item_type and Instock = 1)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Kota" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                
                
                <%--GOURMET KOTA--%>
                <h5 id="gkota-card" class="card-image-ref"><br/><br/></h5>
                <h3  class="card-image-title"><br/><br/>Gourmet Kotas</h3>

                <div class="dashboard-card">
                    <img class="card-image" src="img/kota.jpeg"/>
                    <div class="card-detail">

                        <asp:GridView ID="GridView4" runat="server" DataKeyNames="Item_id" CssClass="menu-grid" 
                            OnSelectedIndexChanged="Gridview4_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                            <Columns>
                                
                                <asp:BoundField DataField="Item_name" ItemStyle-ForeColor="Orange" ItemStyle-CssClass="item-name-grid" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" ItemStyle-CssClass ="price-grid" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true" ControlStyle-CssClass="btnlogin" SelectText="add to cart"/>
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
                    </div>
                </div>
                <%--Kota Shwarma--%>
                <h5 id="kshwarm-card" class="card-image-ref"><br/><br/></h5>
                <h3 class="card-image-title"><br/><br/>Kota Shwarmas</h3>
                <div class="dashboard-card">
                    <img class="card-image" src="img/shawarma white.png"/>
                    <div class="card-detail">
                        
                        <asp:GridView ID="GridView6" runat="server" DataKeyNames="Item_id" CssClass="menu-grid" 
                            OnSelectedIndexChanged="Gridview6_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
                            <Columns>
                                
                                <asp:BoundField DataField="Item_name" ItemStyle-ForeColor="Orange" ItemStyle-CssClass="item-name-grid" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" ItemStyle-CssClass ="price-grid" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true" ControlStyle-CssClass="btnlogin" SelectText="add to cart"/>
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
                        
                    </div>
                </div>
                <%--DAGWOOD MENU--%>
                <h5 id="dag-card" class="card-image-ref"><br/><br/></h5>
                <h3 class="card-image-title"><br/><br/>Dagwoods</h3>
                <div class="dashboard-card">
                    <img class="card-image" src="img/dagwood transparent.png"/>
                    <div class="card-detail">
                        
                        <asp:GridView ID="GridView7" runat="server" DataKeyNames="Item_id" CssClass="menu-grid" 
                            OnSelectedIndexChanged="Gridview7_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource6">
                            <Columns>
                                
                                <asp:BoundField DataField="Item_name" ItemStyle-ForeColor="Orange" ItemStyle-CssClass="item-name-grid" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" ItemStyle-CssClass ="price-grid" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true" ControlStyle-CssClass="btnlogin" SelectText="add to cart"/>
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
                        
                    </div>
                </div>
                <%--Roll Burger--%>
                <h5 id="rburg-card" class="card-image-ref"><br/><br/></h5>
                <h3 class="card-image-title"><br/><br/>Roll Burgers</h3>
                <div class="dashboard-card">
                    <img class="card-image"  src="img/burger white.png"/>
                    <div class="card-detail">
                        
                        <asp:GridView ID="GridView8" runat="server" DataKeyNames="Item_id" CssClass="menu-grid"
                            OnSelectedIndexChanged="Gridview8_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource7">
                            <Columns>
                                
                                <asp:BoundField DataField="Item_name" ItemStyle-ForeColor="Orange" ItemStyle-CssClass="item-name-grid" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" ItemStyle-CssClass ="price-grid" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true" ControlStyle-CssClass="btnlogin" SelectText="add to cart"/>
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
                       
                    </div>
                </div>
                <%--Brunch--%>
                <h5 id="brunch-card" class="card-image-ref"><br/><br/></h5>
                <h3 class="card-image-title"><br/><br/>Brunch Meal</h3>
                <div class="dashboard-card">
                    <img class="card-image" src="img/brunch white.jpg"/>
                    <div class="card-detail">
                        
                        <asp:GridView ID="GridView9" runat="server" DataKeyNames="Item_id" CssClass="menu-grid" 
                            OnSelectedIndexChanged="Gridview9_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource8">
                            <Columns>
                                
                                <asp:BoundField DataField="Item_name" ItemStyle-ForeColor="Orange" ItemStyle-CssClass="item-name-grid" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" ItemStyle-CssClass ="price-grid" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true" ControlStyle-CssClass="btnlogin" SelectText="add to cart"/>
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
                    </div>
                </div>
                <%--SIDES MENU--%>
                <h5 id="sides-card" class="card-image-ref"><br/><br/></h5>
                <h3 class="card-image-title"><br/><br/>Sides</h3>
                <div class="dashboard-card">
                    <img class="card-image" src="img/fries whie.jpg"/>
                    <div class="card-detail">
                        
                        <asp:GridView ID="GridView10" runat="server" DataKeyNames="Item_id" CssClass="menu-grid" 
                            OnSelectedIndexChanged="Gridview10_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource9">
                            <Columns>
                                
                                <asp:BoundField DataField="Item_name" ItemStyle-ForeColor="Orange" ItemStyle-CssClass="item-name-grid" SortExpression="Item_name" />
                                <asp:BoundField DataField="Price" SortExpression="Price" ItemStyle-CssClass ="price-grid" DataFormatString="{0:###,###.00}" />
                                <asp:BoundField DataField="Item_description" SortExpression="Item_description" />
                                <asp:commandfield showselectbutton="true" ControlStyle-CssClass="btnlogin" SelectText="add to cart"/>
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
                </div>
                        

        <div class="dashboard-order">
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
                        <asp:GridView ID="GridView2" DataKeyNames="Item_id" runat="server" OnRowDeleted="GridView2_RowDeleted" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="cart-grid">
                            <Columns>
                                <asp:BoundField DataField="Item_id" SortExpression="Item_id" />
                                <asp:BoundField DataField="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                                <asp:CommandField ShowDeleteButton="true" DeleteText="+" ControlStyle-CssClass="btnincr" />
                                <asp:CommandField ShowSelectButton="True" SelectText="-" ControlStyle-CssClass="btndecr" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
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
                    <asp:GridView ID="GridView3" CssClass="totals-grid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
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
        <div class=" footer">
            <div class="footer-content">
                <table>
                    <tr>
                        <th>Follow us</th>
                        <th>Contact us</th>
                        <th>Developers</th>
                    </tr>
                    
                    <tr>
                        <td><a href="https://r.search.yahoo.com/_ylt=AwrIdF0VwXNiUGgAoBsM34lQ;_ylu=Y29sbwNpcjIEcG9zAzEEdnRpZAMEc2VjA3Ny/RV=2/RE=1651782037/RO=10/RU=https%3a%2f%2fwww.instagram.com%2fkasclam_healthyfood%2f/RK=2/RS=ii8n6bl53xEszEppx8cnkZjFUlU-" target="_blank">
                            <img class="footer-img"<img src="img/InstaGram%20icon.jpg" /></a></td>
                        <td>011 3453 544</td>
                        <td>Decentra Coders</td>
                    </tr>
                    <tr>
                        <td><a href="https://r.search.yahoo.com/_ylt=AwrLFMdEwHNiODYAmQQM34lQ;_ylu=Y29sbwNpcjIEcG9zAzEEdnRpZAMEc2VjA3Ny/RV=2/RE=1651781828/RO=10/RU=https%3a%2f%2fwww.facebook.com%2fkascLamFastfood%2f/RK=2/RS=Lnv.UjZnDamD5pH38yJa__mSqUo-" target="_blank" >
                            <img class="footer-img" src="img/fb%20logo.jpg" /></a></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>