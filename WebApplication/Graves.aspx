<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Graves.aspx.cs" Inherits="WebApplication3.Graves" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h1>Graves in our database:</h1>
            <asp:GridView ID = "GridView1" AutoGenerateColumns = "true" runat="server"></asp:GridView>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <p>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                </asp:CheckBoxList>
            </p>
        </div>
    </form>
</body>
</html>
