<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Electronic_Voting.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(home.jpg)">
    <form id="form1" runat="server">
        <div style="text-align:right">
            <asp:Button ID="Button1" runat="server" Text="Let's VOTE" BackColor="#0091EA" BorderColor="#0091EA" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="White" Height="76px" OnClick="Button1_Click" Width="202px" />
        </div>
    </form>
</body>
</html>
