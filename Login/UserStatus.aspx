<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserStatus.aspx.cs" Inherits="Login.UserStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View My Order</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="StyleUserStatus.css" rel="stylesheet" />
    <style>
        
        .progress{
            /*margin: 300px auto;*/
        }
        ul{
            text-align:center;
        }
            ul li {
                display:inline-block;
                width:200px;
                position:relative;
                z-index: 1;
            }
        ul li .fa {
            background:#ccc;
            width:16px;
            height:16px;
            color:white;
            border-radius:50%;
            padding:5px;
        }
        ul li .fa::after{
            content:'';
            background:#ccc;
            height:5px;
            width:150px;
            display:block;
            position:absolute;
            left:0;
            top:10px;
            z-index:-1;
        }
        ul li:nth-child(1) .fa{
            background:#148e14;

        }
         ul li:nth-child(1) .fa::after{
            background:#148e14;
         }
         ul li:first-child .fa::after{
             width:105px;
             left:100px;
         }
          ul li:last-child .fa::after{
             width:105px;
           
          }
        .view-grid {
            width: 100%;
            text-align: center;
            background-color: red;
            border: none;
            color: white;
            cursor: pointer;
            padding: 10px;
        }
        .view-grid:hover{
            color: black;
            background-color: orange;
        }
        .btn {
            padding: 5px;
            background: #FEE715FF;
            text-decoration: none;
            font-family:monospace;
            font-size: 15px;
            font-weight: 600;
            color: #000000;
            cursor:pointer;
            transition: 0.5s;
            transition-property: background;
        }
        .backg {
            margin-bottom: -1070px;
            object-fit:none;
            
        }
        body {
            font-family: monospace;
            height: 100vh;
            width: 100%;
            background-image: url('img/hero-bg.jpg');
            background-size: cover;
            background-position: center;
        }
        .center {
            box-sizing: border-box;
            background: rgba(2 2 2 / 48%);
        }

        

    </style>
</head>
<body>
     
    <form id="form1" class="center" runat="server">
        <asp:Button ID="Button1" runat="server" Text="BACK" CssClass="btn" OnClick="Button1_Click" style="height: 26px" /> 
        
        <div align="center">
            <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
          <Marquee  direction="Right" scrollamount='<%val%>' runat="server" >   
                   <asp:Image ID="Image1" runat="server" imageurl="~/img/icons8-salt-bae-100.png" Width="100px" Height="100px"/></Marquee>
            <hr style="color:black; border:solid" />
             &nbsp; &nbsp;
            <h1 style=" color:#FEE715FF">Order Number</h1><asp:Label ID="lblOrderID" runat="server" Text="" ForeColor="Red" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
        </div>
        <br />
        <div class="progress">
            <ul>
                <li>
                    <i class="fa fa-check" aria-hidden="true"></i>
                    <p><b>Recieved</b></p>
                </li>
                <li>
                    <i class="fa fa-check" aria-hidden="true"></i>
                    <p><b>Completed</b></p>
                </li>
            </ul>

        </div>
        <br />
        <div align="center">
            <asp:Label ID="lbltime" Font-Bold="true" ForeColor="White" Font-Size="X-Large" runat="server" Text=""></asp:Label>
        </div>
         &nbsp;&nbsp;&nbsp;&nbsp;
        <div class="orders">
            <div>
                <asp:Button ID="btncurrentorder" CssClass="btn" runat="server" Text="View current order details" OnClick="btncurrentorder_Click"  />
            </div>
            <div>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White"
                    BorderColor="White" BorderWidth="1px" CellPadding="4" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="item_name" HeaderText="item_name" SortExpression="item_name" />
                        <asp:BoundField DataField="customization" HeaderText="customization" SortExpression="customization" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
                    SelectCommand="SELECT i.[item_name], [customization] FROM [cart2] c,item1 i,customer_order1 o 
                    where i.item_id = c.item_id and customer_order_id = @orderid and o.Order_id = @orderid">
                    <SelectParameters>
                        <asp:SessionParameter Name="orderid" SessionField="orderid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div>
                <asp:Button ID="Button5" CssClass="btn" runat="server" Text="View order History" Visible="false" OnClick="Button5_Click" />
            </div>
            <br />
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Order_id" DataSourceID="SqlDataSource1" 
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="Order_id" HeaderText="Order Number" InsertVisible="False" ReadOnly="True" SortExpression="Order_id" />
                        <asp:BoundField DataField="DateofOrder" HeaderText="Date Of Order" SortExpression="DateofOrder" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" 
                    SelectCommand="SELECT [Order_id], [DateofOrder], [Status] FROM [customer_order1] WHERE ([Customer_id] = @Customer_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Customer_id" SessionField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        
        <br />
      
       
    </form>
</body>
</html>
