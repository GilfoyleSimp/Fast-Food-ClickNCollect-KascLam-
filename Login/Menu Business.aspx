<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu Business.aspx.cs" Inherits="Login.Menu_Business" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Business Menu</title>
    <link href="Style2.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
    </style>
</head>
<body style="background-image:url('img/hero-bg.jpg');background-size:auto;">
    <form id="form1" runat="server">
        <div>
<%--            <h3 class="maintitle">KasC-Lam Menu </h3>--%>
        </div>
        <div class="dashboard"/>
            <div class="navbar">
                <a href="AdminDashboard.aspx"><b>BACK</b></a>
                <a href="#kota-card">Kota</a>
                <a href="#gkota-card">Gourmet Kota</a>
                <a href="#kshwarm-card">Kota Shwarma</a>
                <a href="#dag-card">Dagwood</a>
                <a href="#rburg-card">Roll Burger</a>
                <a href="#brunch-card">Brunch</a>
                <a href="#sides-card">Sides</a>
            </div>
<%--            <h3 class="dashboard-title">Categories</h3>--%>
           
            <div class="dashboard-content"/>
                <%--KOTA MENU--%>
                <h3 id="kota-card" class="card-image-title"><br/><br/>Kotas</h3>
                <div class="dashboard-card">
<%--                    <img class="card-image" src="img/kota%20(2).jpeg"/>--%>
                    <div class="card-detail">
<%--                    <%--KOTA MENU DB--%>

            <asp:GridView ID="GridView1" runat="server" DataKeyNames="Item_id" class="menudb" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="True"
                AutoGenerateColumns="False"  
                DataSourceID="SqlDataSource1">
                <Columns>
                       <asp:TemplateField HeaderText="Availability">  
                                    <ItemTemplate>  
                                        <label class="switch">
                                        <asp:CheckBox runat="server" ID="DiscontinuedCheckBox" 
                                            Checked='<%# Eval("Instock")  %>' AutoPostback="true" 
                                            OnCheckedChanged="DiscontinuedCheckBox_CheckedChanged1" />
                                            <span class="slider round"></span>
                                    </ItemTemplate>  
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="DeleteButton" runat="server" ImageUrl="img/delete icon red.png"
                                                    CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"
                                                    AlternateText="Delete" />               
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Item_name" HeaderText="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Item_description" HeaderText="Item_description" SortExpression="Item_description" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Item_id" HeaderText="Item_id" SortExpression="Item_id" />
                </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1] 
                            WHERE ([Item_type] LIKE @Item_type)"
                            DeleteCommand="DELETE FROM [item1] WHERE Item_id =@Item_id;">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Kota" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                </div>
                    </div>
                        <%-- GOURMET KOTA MENU DB--%>
                <h3 id="gkota-card" class="card-image-title">Gourmet Kotas</h3>
                <div class="dashboard-card">
<%--                    <img class="card-image" src="img/gourm.jpeg"/>--%>
                    <div class="card-detail">

                    
                        <asp:GridView ID="GridView2" runat="server" DataKeyNames="Item_id" class="menudb"
                            onselectedindexchanged="GridView2_SelectedIndexChanged" AutoGenerateSelectButton="True" AutoGenerateColumns="False"
                            DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:TemplateField HeaderText="Availability">  
                                    <ItemTemplate>  
                                        <label class="switch">
                                        <asp:CheckBox runat="server" ID="DiscontinuedCheckBox" 
                                            Checked='<%# Eval("Instock")  %>' AutoPostback="true" 
                                            OnCheckedChanged="DiscontinuedCheckBox2_CheckedChanged" />
                                            <span class="slider round"></span>
                                            </label>
                                    </ItemTemplate> 
                                    
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="DeleteButton" runat="server" ImageUrl="img/delete icon red.png"
                                                    CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"
                                                    AlternateText="Delete" />               
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Item_name" HeaderText="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Item_description" HeaderText="Item_description" SortExpression="Item_description" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Item_id" HeaderText="Item_id" SortExpression="Item_id" />

                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1]
                            WHERE ([Item_type] LIKE '%' + @Item_type + '%')"
                            DeleteCommand="DELETE FROM [item1] WHERE Item_id =@Item_id;">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Gourmet Kota" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                </div>
                    </div>
                        <%--KOTA SHWARMA MENU DB--%>
                <h3 id="kshwarm-card" class="card-image-title"></><br/>Kota Shwarmas</h3>
                <div class="dashboard-card">
<%--                    <img class="card-image" src="img/shwarm.jpeg">--%>
                    <div class="card-detail">
                        <asp:GridView ID="GridView3" runat="server" DataKeyNames="Item_id" class="menudb" 
                            onselectedindexchanged="GridView3_SelectedIndexChanged" AutoGenerateSelectButton="True"  AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource3">
                            <Columns>
                                <asp:TemplateField HeaderText="Availability">  
                                    <ItemTemplate>  
                                        <label class="switch">
                                        <asp:CheckBox runat="server" ID="DiscontinuedCheckBox" 
                                            Checked='<%# Eval("Instock")  %>' AutoPostback="true" 
                                            OnCheckedChanged="DiscontinuedCheckBox3_CheckedChanged" />
                                            <span class="slider round"></span>
                                    </ItemTemplate>  
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="DeleteButton" runat="server" ImageUrl="img/delete icon red.png"
                                                    CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"
                                                    AlternateText="Delete" />               
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Item_name" HeaderText="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Item_description" HeaderText="Item_description" SortExpression="Item_description" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Item_id" HeaderText="Item_id" SortExpression="Item_id" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con  %>"
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1] WHERE
                            ([Item_type] LIKE '%' + @Item_type + '%')"
                            DeleteCommand="DELETE FROM [item1] WHERE Item_id =@Item_id;">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Kota Shwarma" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                </div>
                    </div>
                        <%--DAGWOOD MENU DB--%>
                <h3 id="dag-card" class="card-image-title"></><br/>Dagwoods</h3>
                <div class="dashboard-card">
<%--                    <img class="card-image" src="img/Dagwood.jpeg">--%>
                    <div class="card-detail">
                        <asp:GridView ID="GridView4" runat="server" DataKeyNames="Item_id" class="menudb" 
                            onselectedindexchanged="GridView4_SelectedIndexChanged" AutoGenerateSelectButton="True"  AutoGenerateColumns="False"
                            DataSourceID="SqlDataSource4">
                            <Columns>
                                <asp:TemplateField HeaderText="Availability">  
                                    <ItemTemplate>  
                                        <label class="switch">
                                        <asp:CheckBox runat="server" ID="DiscontinuedCheckBox" 
                                            Checked='<%# Eval("Instock")  %>' AutoPostback="true" 
                                            OnCheckedChanged="DiscontinuedCheckBox4_CheckedChanged" />
                                            <span class="slider round"></span>
                                    </ItemTemplate>  
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="DeleteButton" runat="server" ImageUrl="img/delete icon red.png"
                                                    CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"
                                                    AlternateText="Delete" />               
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Item_name" HeaderText="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Item_description" HeaderText="Item_description" SortExpression="Item_description" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Item_id" HeaderText="Item_id" SortExpression="Item_id" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con  %>" 
                            SelectCommand="SELECT DISTINCT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1]
                            WHERE ([Item_type] LIKE '%' + @Item_type + '%')"
                            DeleteCommand="DELETE FROM [item1] WHERE Item_id =@Item_id;">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Dagwood" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                </div>
                    </div>
                        <%--ROLL BURGER MENU DB--%>

                <h3 id="rburg-card" class="card-image-title"><br/><br/>Roll Burgers</h3>
                <div class="dashboard-card">
<%--                    <img class="card-image" <img src="img/Rock-and-Roll-Burger-3.jpg">--%>
                    <div class="card-detail">
                        <asp:GridView ID="GridView5" runat="server" DataKeyNames="Item_id" class="menudb" 
                            onselectedindexchanged="GridView5_SelectedIndexChanged" AutoGenerateSelectButton="True" AutoGenerateColumns="False"
                            DataSourceID="SqlDataSource5">
                            <Columns>
                                <asp:TemplateField HeaderText="Availability">  
                                    <ItemTemplate>  
                                        <label class="switch">
                                        <asp:CheckBox runat="server" ID="DiscontinuedCheckBox" 
                                            Checked='<%# Eval("Instock")  %>' AutoPostback="true" 
                                            OnCheckedChanged="DiscontinuedCheckBox5_CheckedChanged" />
                                            <span class="slider round"></span>
                                    </ItemTemplate>  
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="DeleteButton" runat="server" ImageUrl="img/delete icon red.png"
                                                    CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"
                                                    AlternateText="Delete" />               
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Item_name" HeaderText="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Item_description" HeaderText="Item_description" SortExpression="Item_description" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Item_id" HeaderText="Item_id" SortExpression="Item_id" />
                                
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server"  ConnectionString="<%$ ConnectionStrings:con %>
                            " SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1]
                            WHERE ([Item_type] LIKE '%' + @Item_type + '%')"
                            DeleteCommand="DELETE FROM [item1] WHERE Item_id =@Item_id;">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Roll Burger" Name="Item_type" Type="String" />
                            </SelectParameters>
                            
                        </asp:SqlDataSource>
                </div>
                    </div>
                        <%--BRUNCH MENU DB--%>
                <h3 id="brunch-card" class="card-image-title"><br/><br/>Brunch Meal</h3>
                <div class="dashboard-card">
<%--                    <img class="card-image" src="img/Coffee-Rubbed-Steak-and-Eggs.jpg">--%>
                    <div class="card-detail">
                        <asp:GridView ID="GridView6" runat="server" DataKeyNames="Item_id" class="menudb"
                            onselectedindexchanged="GridView6_SelectedIndexChanged" AutoGenerateSelectButton="True" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource6">
                            <Columns>
                                <asp:TemplateField HeaderText="Availability">  
                                    <ItemTemplate>  
                                        <label class="switch">
                                        <asp:CheckBox runat="server" ID="DiscontinuedCheckBox" 
                                            Checked='<%# Eval("Instock")  %>' AutoPostback="true" 
                                            OnCheckedChanged="DiscontinuedCheckBox6_CheckedChanged" />
                                            <span class="slider round"></span>
                                    </ItemTemplate>  
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="DeleteButton" runat="server" ImageUrl="img/delete icon red.png"
                                                    CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"
                                                    AlternateText="Delete" />               
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Item_name" HeaderText="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Item_description" HeaderText="Item_description" SortExpression="Item_description" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Item_id" HeaderText="Item_id" SortExpression="Item_id" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:con  %>" 
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Price], [Instock] FROM [item1] 
                            WHERE ([Item_type] LIKE '%' + @Item_type + '%')"
                            DeleteCommand="DELETE FROM [item1] WHERE Item_id =@Item_id;">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Brunch" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                </div>
                    </div>
                        <%--SIDES MENU DB--%>
                <h3 id="sides-card" class="card-image-title"><br/><br/>Sides</h3>
                <div class="dashboard-card">
<%--                    <img class="card-image" src="img/sides.jpeg">--%>
                    <div class="card-detail">
                        <asp:GridView ID="GridView7" runat="server" DataKeyNames="Item_id" class="menudb" 
                            onselectedindexchanged="GridView7_SelectedIndexChanged" AutoGenerateSelectButton="True" AutoGenerateColumns="False"
                            DataSourceID="SqlDataSource7">
                            <Columns>
                                <asp:TemplateField HeaderText="Availability">  
                                    <ItemTemplate>  
                                        <label class="switch">
                                        <asp:CheckBox runat="server" ID="DiscontinuedCheckBox5" 
                                            Checked='<%# Eval("Instock")  %>' AutoPostback="true" 
                                            OnCheckedChanged="DiscontinuedCheckBox7_CheckedChanged" />
                                            <span class="slider round"></span>
                                    </ItemTemplate>  
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="DeleteButton" runat="server" ImageUrl="img/delete icon red.png"
                                                    CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"
                                                    AlternateText="Delete" />               
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Item_name" HeaderText="Item_name" SortExpression="Item_name" />
                                <asp:BoundField DataField="Item_description" HeaderText="Item_description" SortExpression="Item_description" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Item_id" HeaderText="Item_id" SortExpression="Item_id" />
                            </Columns>
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:con  %>"
                            SelectCommand="SELECT [Item_id], [Item_name], [Item_description], [Instock], [Price] FROM [item1] 
                            WHERE ([Item_type] LIKE '%' + @Item_type + '%')"
                            DeleteCommand="DELETE FROM [item1] WHERE Item_id =@Item_id;">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Side" Name="Item_type" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                </div>
                    </div>

                        
                       
        <%--RECEIPT--%>
        <div class="dashboard-order">
            <div class ="order-address">
                <%--<h3>Collection Adress</h3>
                <h3>1292 Dr T Matsipa St, Spruitview, Katlehong, 1425</h3>
                <a class="direction-link" href="https://www.google.com/search?q=1292+Dr+T+Matsipa+St%2C+Spruitview%2C+Katlehong%2C+1425&rlz=1C1NDCM_enZA952ZA952&oq=1292+Dr+T+Matsipa+St%2C+Spruitview%2C+Katlehong%2C+1425&aqs=chrome..69i57.531j0j7&sourceid=chrome&ie=UTF-8#" target="_blank">Directions</a>--%>
                <h4 class="cart-title">Update</h4>
            </div>
            
            
            <div class="order-wrapper">
                <div class="order-card">
                    <div class="order-detail">
                        <h3>Price</h3>
                        <asp:TextBox ID="txtprice" runat="server" ></asp:TextBox>
                            <asp:Button ID="updateprice" class="btnupp" runat="server" Text="Update price" OnClick="updateprice_Click" />
                    </div>
                    <div class="order-detail">
                        <h3>Description</h3>
                        <asp:TextBox ID="txtdescrip" CssClass="updatetxt" runat="server"></asp:TextBox>
                            <asp:Button ID="updatedescription" class="btnupp" runat="server" Text="Update Description" 
                                OnClick="updatedescription_Click" />
                        
                    </div>
                    
                </div>
                
            </div>
            <hr class="divider"/>
            
            
        </div>
    </form>
</body>
</html>