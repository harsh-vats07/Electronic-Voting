<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpCand.aspx.cs" Inherits="Electronic_Voting.UpCand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div >
             <br/>
                        <h1 style="text-align:center; color:dodgerblue; text-decoration:underline; background-color:aliceblue">UPDATE CANDIDATE</h1>
             <br/>
        </div>
        <div style="text-align:center; color:dodgerblue">

            <br />
            <br />

            <asp:Label ID="Label1" runat="server" Text="ElectionID" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CID" DataValueField="CID" Height="20px" Width="189px" BackColor="DodgerBlue" Font-Size="Large" ForeColor="White">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EVotingConnectionString %>" ProviderName="<%$ ConnectionStrings:EVotingConnectionString.ProviderName %>" SelectCommand="SELECT [CID] FROM [CANDIDATE]"></asp:SqlDataSource>
            <br />
            <br/>
            <asp:Label ID="Label4" runat="server" Text="Column"  Font-Bold="True" Font-Names="Arial Black" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BackColor="DodgerBlue" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="New Value"  Font-Bold="True" Font-Names="Arial Black" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BackColor="DodgerBlue" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Update" BackColor="White" BorderColor="#1F90FF" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" ForeColor="DodgerBlue" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Back" BackColor="White" BorderColor="#1F90FF" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" ForeColor="DodgerBlue" OnClick="Button2_Click"/>

        </div>
    </form>
</body>
</html>
