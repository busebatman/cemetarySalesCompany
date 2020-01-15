<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Graveyard.aspx.cs" Inherits="WebApplication3.SqlConnectionStringBuilder" %>

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
            <h1>GRAVEYARDS in our database:</h1>
            <asp:GridView ID = "GridView1" AutoGenerateColumns = "true" runat="server"></asp:GridView>
            <p>
                 Search for graves in a graveyard
            </p>
            <p>
                 Graveyard Id&nbsp;
                <asp:TextBox ID="graveyard_id" runat="server"></asp:TextBox>
                <asp:GridView ID = "GridView2" AutoGenerateColumns = "true" runat="server"></asp:GridView>
                <asp:Button ID="Button1"  OnClick="Button1_Click" Text="Search" style="height: 26px" runat="server"></asp:Button>

            </p>

            <p>
                <asp:Button ID="Button2"  OnClick="Button2_Click" Text="Buy A Grave!" style="height: 26px" runat="server"></asp:Button>
            </p>
        </div>
    </form>
</body>
</html>
