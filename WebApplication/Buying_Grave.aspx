<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buying_Grave.aspx.cs" Inherits="WebApplication3.Buying_Grave" %>

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
            <asp:Label ID="info" runat="server" Text="Enter graveyard id you want to buy grave from"></asp:Label>
            <asp:TextBox ID="graveyard_id2" runat="server"></asp:TextBox>
            <p>
                <asp:Label ID="Label10" runat="server" Text="Enter grave id you want to buy grave"></asp:Label>
                <asp:CheckBox ID="sing_grave_box" runat ="server" Text ="Singular Grave" />
                <asp:CheckBox ID="fam_grave_box" runat ="server" Text ="Family Grave" />
                <asp:CheckBox ID="existingGrave" runat ="server" Text ="Buy an already existing grave" />
                <p>
                    <asp:TextBox ID="grave_id" runat="server"></asp:TextBox>
                </p>
                
                <asp:Label ID="validation" runat="server"></asp:Label>
                
            </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Enter first name"></asp:Label>
                <asp:TextBox ID="first_name" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Enter last name"></asp:Label>
                <asp:TextBox ID="last_name" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Enter gender"></asp:Label>
                <asp:TextBox ID="gender" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Enter phone number"></asp:Label>
                <asp:TextBox ID="phone_number" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label5" runat="server" Text="Enter birth date"></asp:Label>
                <asp:TextBox ID="birth_date" runat="server" TextMode="Date" ></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label6" runat="server" Text="Enter address information"></asp:Label>
            </p>
            <p>
                <asp:Label ID="Label7" runat="server" Text="City"></asp:Label>
                <asp:TextBox ID="city" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label8" runat="server" Text="District"></asp:Label>
                <asp:TextBox ID="district" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label9" runat="server" Text="Postal Code"></asp:Label>
                <asp:TextBox ID="postal_code" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Button ID="buy"  OnClick="Button1_Click" Text="Buy" runat="server"></asp:Button>
            </p>
        </div>
    </form>
</body>
</html>
