<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderStatus.aspx.cs" Inherits="Login.OrderStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Status</title>
    <link href="StyleDashboard.css" rel="stylesheet" />
</head>
    
<body style="background-image:url('img/hero-bg.jpg');background-size:cover;">
    <form id="form1" runat="server">
        <asp:Button ID="Button1" CssClass="btn2" runat="server" Text="BACK" OnClick="Button1_Click1" />
        <div align="left">
            <asp:Label ID="Label3" ForeColor="White" Font-Size="Large" CssClass="lbl" runat="server" Text="Wait Time"></asp:Label>
            <asp:DropDownList Font-Size="Large" ID="ddlistWaitTime" runat="server" OnSelectedIndexChanged="ddlistWaitTime_SelectedIndexChanged" >
                <asp:ListItem>5 - 10min</asp:ListItem>
                <asp:ListItem>10 - 15 min</asp:ListItem>
                <asp:ListItem>15 - 30 min</asp:ListItem>
                <asp:ListItem>30 - 45 min</asp:ListItem>
                <asp:ListItem>45 min - 1 hr</asp:ListItem>
                <asp:ListItem>1hr - 1hr 30 min</asp:ListItem>
                <asp:ListItem>1hr 30 min - 2hrs</asp:ListItem>
                <asp:ListItem>2 hrs +</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnset" CssClass="btn2" runat="server" Text="Set" OnClick="btnset_Click" />
        </div>
        <div class="specify-order-box" align="center" style="height:auto">
            <div align="center">
                <asp:LinkButton ID="TodaysOrders" CssClass="btn2" runat="server" OnClick="TodayOrder_Click">Today's orders</asp:LinkButton>
                <asp:LinkButton ID="PendingOrder" CssClass="btn2" runat="server" OnClick="AllPendingOrder_Click">Pending orders</asp:LinkButton>
                <asp:LinkButton ID="AllOrder" CssClass="btn2" runat="server" OnClick="AllOrder_Click">All orders</asp:LinkButton>
            </div>
            <b style="color:white;">Custom Date&nbsp;</b>
            <asp:TextBox ID="TextBox1" runat="server" Font-Bold="true" Width="122px"></asp:TextBox>
            <asp:ImageButton ID="ImageButton2" runat="server"  Height="30px" ImageUrl="~/img/Calender.jfif" OnClick="ImageButton2_Click"/>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Year:" Font-Bold="True" ForeColor="White"></asp:Label>&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            &nbsp;
            <asp:Label ID="Label2" runat="server" Text="Month:" Font-Bold="True" ForeColor="White" ></asp:Label>&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            <br />
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
            </asp:Calendar>
            &nbsp;<br /><br />

            <br />
            <asp:Button ID="Button2" runat="server" Text="Update Status" CssClass="button" Font-Bold="true" Height="39px" Width="136px"
                OnClick="Button2_Click"/>
            <br /><br />
        </div>
        <asp:GridView ID="GridView1" HorizontalAlign="Center" DataKeyNames="Order_id" runat="server" BackColor="White" BorderColor="#E7E7FF"
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:TemplateField HeaderText="Order Status">
                        <ItemTemplate>
                            <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="Ostatus" Text="Pending" />
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="Completed" GroupName="Ostatus" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
                  <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="View Full Order"/>
                </Columns>

            </asp:GridView>
        <div align="center">
            <asp:Label ID="lblerror" CssClass="lbl" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>

           
    </form>
    <p>
&nbsp;</p>
</body>
</html>
