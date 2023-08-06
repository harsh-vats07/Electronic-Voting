<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPro.aspx.cs" Inherits="Electronic_Voting.ViewPro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center; text-decoration:underline; color:dodgerblue;">PROFILE DETAILS</h1>
        </div>
        <div  style="text-align:center;">
            <br/>
            <br/>


            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="DodgerBlue" Text="VID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />


            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" style="margin-left:550px"  GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Back" BackColor="White" BorderColor="DodgerBlue" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" Font-Strikeout="False" ForeColor="DodgerBlue" OnClick="Button1_Click" />


            </div>
    </form>
</body>
</html>
