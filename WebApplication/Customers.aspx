<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="WebApplication3.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/">Home</a></li>
                        <li><a runat="server" href="~/About">About</a></li>
                        <li><a runat="server" href="~/Contact">Contact</a></li>
                    </ul>
                </div>
    <form id="form1" runat="server">
        <div>
             <h1>Customers in our database:</h1>
            <asp:GridView ID = "GridView1" AutoGenerateColumns = "true" runat="server"></asp:GridView>
            <p> <asp:Button ID="Button1"  OnClick="Button1_Click" Text="Show all customers" style="height: 26px" runat="server"></asp:Button>
            <asp:Button ID="Button2"  OnClick="Button2_Click" Text="Show dead customers" style="height: 26px" runat="server"></asp:Button>
            <asp:Button ID="Button3"  OnClick="Button3_Click" Text="Show alive customers" style="height: 26px" runat="server"></asp:Button></p>
        </div>
    </form>
</body>
</html>
