<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Register2.aspx.cs" Inherits="Register2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">
                
        .button {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: brown;
            color: black;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            cursor: pointer;
            border-radius: 20px;

         }
        .button:hover {
            background-color: deepskyblue;
            color: white;
         }
        .auto-style2 {
            color: #FFFFFF;
            width: 651px;
            height: 320px;
        }
        .auto-style3 {
            width: 241px;
            vertical-align:top;
        }
        .auto-style4 {
            width: 182px;
            text-align: left;
            vertical-align:top;
        }
        .auto-style5 {
            text-align: right;
            width: 161px;
            height: 46px;
            vertical-align:top;
           }
        .auto-style6 {
            color: #0033CC;
            text-align: right;
            width: 161px;
            vertical-align:top;
           }
        .auto-style7 {
            width: 241px;
            text-align: left;
            height: 46px;
            vertical-align:top;
           }
        .auto-style8 {
            color: #0033CC;
            text-align: right;
            width: 161px;
            height: 41px;
            vertical-align:top;
        }
        .auto-style9 {
            width: 241px;
            height: 41px;
               text-align: center;
               vertical-align:top;
           }
        .auto-style10 {
            width: 182px;
            text-align: left;
            height: 41px;
            vertical-align:top;
        }
        .auto-style11 {
            color: #0033CC;
            text-align: right;
            width: 161px;
            height: 53px;
            vertical-align:top;
        }
        .auto-style12 {
            width: 241px;
            height: 53px;
            vertical-align:top;
        }
        .auto-style13 {
            width: 182px;
            text-align: left;
            height: 53px;
            vertical-align:top;
        }
        .auto-style14 {
            text-align: center;
            position: fixed;
            z-index: auto;
            left: 603px;
            top: 120px;
            width: 601px;
            height: 509px;
         }
        .auto-style15 {
            width: 182px;
            text-align: left;
            height: 46px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <td>

    <form >
    <div class="auto-style14" style="border: thin groove #000000;">  <br />  
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" Text="Register"></asp:Label> <br /> <br /> <br /> <br />
        <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style6"><strong>Username:</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="228px" Height="26px" placeholder="Enter Username" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Valid username!!" SetFocusOnError="True" ValidationExpression="[a-zA-Z1-9]*$" ForeColor="#CC3300"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Valid username!!" SetFocusOnError="True" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>E-mail:</strong></td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" Width="228px" Height="25px" placeholder="Enter Email" TextMode="Email"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter E-mail !!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Contact No.:</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox3" runat="server" Width="229px" Height="24px" placeholder="Enter ContactNo" TextMode="Number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter 10 digit_No. !!" ValidationExpression="[0-9]{10}" ForeColor="#CC3300"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Mob_No. !!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Password:</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" Width="227px" Height="26px" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter valid Password!!" ForeColor="#CC3300" ValidationExpression="^([a-zA-Z0-9@#$%^&amp;+=*]{8,8})$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter Password!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Confirm Password:</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5" runat="server" Width="228px" Height="23px" placeholder="Repeat Password" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Password Should Be Same !!" ForeColor="#CC3300"></asp:CompareValidator>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Confirm Password!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style7">
                    <span class="auto-style36">&nbsp  
                    </span> &nbsp 
                   <asp:Button ID="Button1" class="button" runat="server" Height="39px" Text="Signup" Width="120px" Font-Bold="False" OnClick="Button1_Click" Font-Size="Medium" ForeColor="White" />
                </td>
                <td class="auto-style15"></td>
            </tr>
        </table>
        </div>
    </form>
    </td>
</asp:Content>

