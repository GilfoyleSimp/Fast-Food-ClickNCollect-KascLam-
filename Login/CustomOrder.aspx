<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomOrder.aspx.cs" Inherits="Login.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style3.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" >
        <h1 class="h1">CUSTOMIZE YOUR ORDER</h1>
        <header>
            <label for="check">
                <i class="fa-solid fa-bars" id="sidebar_btn"></i>
            </label>
            <div class="left-area">
                <h3>KascLam <span>Dashboard</span></h3>
            </div>
            
        </header>
        <div class="customize-box">
            <div class="items">
                <asp:GridView ID="GridView1" CssClass="gridview-customization" DataKeyNames="order_id" runat="server"
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="true" SelectText="Customize" ControlStyle-CssClass="btn-customize" />
                    <asp:BoundField DataField="order_id" HeaderText="id" Visible="false" SortExpression="order_id" />
                    <asp:BoundField DataField="item_name" HeaderText="Item" SortExpression="item_name" />
                    <asp:BoundField DataField="customization" HeaderText="Customization" SortExpression="customization" />
                </Columns>
            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
                    SelectCommand="select c.order_id,i.item_name,customization 
                    from item1 i, cart2 c
                    where i.item_id = c.item_id and c.status like 'Pending'  
                    group by c.order_id, i.item_name,customization 
                    order by i.item_name">
                        
                </asp:SqlDataSource>
            </div>
            <asp:Label ID="lblitem" runat="server" Text=""></asp:Label>
            <div class="customization">
                <asp:CheckBoxList ID="CheckBoxList1" CssClass="customize-checkbox" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                    <asp:ListItem>Extra cheese +R2</asp:ListItem>
                    <asp:ListItem>No sauce</asp:ListItem>
                    <asp:ListItem>No tomato</asp:ListItem>
                    <asp:ListItem>No Aachar</asp:ListItem>
                    <asp:ListItem>Chicken</asp:ListItem>
                    <asp:ListItem>Beef</asp:ListItem>
                </asp:CheckBoxList>
                <asp:Button ID="btnconfirm" CssClass="btn-customize" runat="server" Text="Confirm" OnClick="Confirm_Click" />
                <asp:Label ID="lblerror" runat="server" Text="" ForeColor="red"></asp:Label>
            </div>
            
        </div>
        <hr class="divider"/>
        <div class="submit-order-box">
            <asp:Label ID="lblprice" Font-Size="X-Large" runat="server" ></asp:Label>
            <br />
            <asp:Button ID="btnsubmitfinal" CssClass="btn-customize2" runat="server" Text="Submit Order" OnClick="btnsubmitfinal_Click" />
        </div>
        
    </form>
</body>
</html>
