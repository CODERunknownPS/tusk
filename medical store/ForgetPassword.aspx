<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 130px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: left;
            width: 185px;
        }
        .auto-style5 {
            text-align: right;
            width: 195px;
        }
        .auto-style6 {
            width: 195px;
            text-align: right;
            color: #0000FF;
        }
        .auto-style7 {
            width: 195px;
            text-align: right;
            color: #0000FF;
            height: 68px;
        }
        .auto-style8 {
            text-align: left;
            width: 185px;
            height: 68px;
        }
        .auto-style9 {
            height: 68px;
        }
    </style>
</head>
<body style="background-image: url('http://localhost:60417/home.jpg')">
    <form id="form1" runat="server">
        <div class="auto-style3">
        <div>
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style7"><strong>Username:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Its Required !!" ControlToValidate="TextBox1" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Registered Email_Id:</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="175px" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Its Required !!" ControlToValidate="TextBox2" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Get Your Password" Width="149px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
            </div>
            <br />
            <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="#339933"></asp:Label>
        </div>
    </form>
</body>
</html>
