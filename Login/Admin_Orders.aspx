<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Orders.aspx.cs" Inherits="Login.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>
<body style="background-image:url('img/hero-bg.jpg');background-size:cover;">
    
    <form id="form1" runat="server">
        <div style="text-align:center">
            <h1 style="color:white">Orders</h1>
            <asp:Repeater ID="R1" runat="server">
                <HeaderTemplate> 
                    <table border="1" style= "margin-left:auto; margin-right:auto;" >
                    <tr style="background-color:gray; color:white">
                    <td>Customer_id</td>
                    <td>Total Amount</td>
                    <td>Date Of Order</td>
                    <td>View Full Order</td>
                    </tr>
                    </HeaderTemplate>
                <ItemTemplate>  
                    <tr style="background-color:white; color:black;">
                    <td><%#Eval("Customer_id") %></td>
                     <td><%#Eval("Total") %></td>
                     <td><%#Eval("DateofOrder") %></td>
                     <td><a href="View_Full_Order.aspx?Customer_id=<%#Eval("Customer_id") %>">View Full Order</a></td>
                     </tr>

                </ItemTemplate>
                <FooterTemplate>
                      </table>
                </FooterTemplate>
               
              
          
            </asp:Repeater>
           
        </div>
    </form>
</body>
</html>--%>
