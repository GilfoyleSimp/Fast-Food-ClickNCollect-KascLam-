<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Full_Order.aspx.cs" Inherits="Login.View_Full_Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url('img/hero-bg.jpg');background-size:cover;">
    
    <form id="form1" runat="server">
        <div style="text-align:center">
            <h1 style="color:white">Order Details</h1>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" BackColor="White" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="Order_id,Item_id">
                <Columns>
                    <asp:BoundField DataField="Order_id" HeaderText="Order_id" ReadOnly="True" SortExpression="Order_id" />
                    <asp:BoundField DataField="Item_id" HeaderText="Item_id" ReadOnly="True" SortExpression="Item_id" />
                    <asp:BoundField DataField="Item_name" HeaderText="Item_name" SortExpression="Item_name" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" SortExpression="Subtotal" />
                </Columns>
            </asp:GridView>
           
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
            SelectCommand="SELECT o.Order_id, o.Item_id, i.Item_name, o.Quantity, o.Subtotal FROM item_order1 AS o INNER JOIN item1 AS i ON o.Item_id = i.Item_id WHERE (o.Order_id = @Order_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="Order_id" SessionField="order" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
                
           
        </div>
        <br />
        <div align="center">
            <asp:Button ID="btncomplete" runat="server" Text="Order Complete" OnClick="btncomplete_Click" />
        </div>
    </form>
</body>
</html>