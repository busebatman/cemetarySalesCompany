<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="WebApplication3.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TABLES</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/">Home</a></li>
                        <li><a runat="server" href="~/About">About</a></li>
                        <li><a runat="server" href="~/Contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div>
            <h1>Employees in our database:</h1>
            <asp:GridView ID = "GridView1" AutoGenerateColumns = "true" runat="server"></asp:GridView>
            <p> <asp:Button ID="Button1"  OnClick="Button1_Click" Text="Show all employees" style="height: 26px" runat="server"></asp:Button>
            <asp:Button ID="Button2"  OnClick="Button2_Click" Text="Show office workers" style="height: 26px" runat="server"></asp:Button>
            <asp:Button ID="Button3"  OnClick="Button3_Click" Text="Show Cleaners" style="height: 26px" runat="server"></asp:Button>
            <asp:Button ID="Button4"  OnClick="Button4_Click" Text="Show Drivers" style="height: 26px" runat="server"></asp:Button> </p>
             <p><asp:Button ID="Button5"  OnClick="Button5_Click" Text="Show Specific Employee" style="height: 26px" runat="server"></asp:Button> </p>
            Enter employee's id&nbsp;
            <asp:TextBox ID="employee_id" runat="server"></asp:TextBox>
            <asp:GridView ID = "GridView2" AutoGenerateColumns = "true" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
