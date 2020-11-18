<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addcompany.aspx.cs" Inherits="addcompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style2 {
            width: 60%;
            height: 300px;
        }
        .auto-style6 {
             width: 329px;
             text-align: right;
             font-size: medium;
             color: #0033CC;
         }
         .auto-style7 {
             font-size: x-large;
             color: #99CC00;
             text-align: center;
             height: 84px;
             width: 1404px;
             margin-top: 0px;
         }
         .auto-style8 {
             width: 331px;
         }
         .auto-style10 {
             width: 417px;
         }
         .auto-style11 {
             height: 74px;
             width: 329px;
             text-align: right;
             font-size: medium;
             color: #FFFFFF;
         }
         .auto-style12 {
             height: 74px;
             width: 331px;
         }
         .auto-style13 {
             height: 74px;
             width: 417px;
         }
         .auto-style17 {
             height: 49px;
             width: 329px;
             text-align: right;
             font-size: medium;
             color: #0033CC;
         }
         .auto-style18 {
             height: 49px;
             width: 331px;
         }
         .auto-style19 {
             height: 49px;
             width: 417px;
         }
         .auto-style20 {
             height: 71px;
             width: 329px;
             text-align: right;
             font-size: medium;
             color: #0033CC;
         }
         .auto-style21 {
             height: 71px;
             width: 331px;
         }
         .auto-style22 {
             height: 71px;
             width: 417px;
         }
         .auto-style26 {
        color: #000099;
    }
    .auto-style27 {
        height: 66px;
        width: 329px;
        text-align: right;
        font-size: medium;
        color: #0033CC;
    }
    .auto-style28 {
        height: 66px;
        width: 331px;
    }
    .auto-style29 {
        height: 66px;
        width: 417px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form> 
        <center>
    <div class="auto-style7">
    
        <strong>
        <br />
        <span class="auto-style26">Add New Company</span><br />
        <br />
        </strong>
    
    </div>
        <br />
        <br />
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style6">Company Name:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" Width="302px" Height="32px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Valid Name!!" ForeColor="#CC3300" ValidationExpression="[a-zA-z0-9]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Name!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Address:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox3" runat="server" Width="301px" Height="31px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Valid Address!!" ForeColor="#CC3300" ValidationExpression="[0-9a-zA-Z #,-]+"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Address!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Medicine Name:</td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox4" runat="server" Width="300px" Height="33px"></asp:TextBox>
                </td>
                <td class="auto-style29">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter Name!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Mobile:</td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox5" runat="server" Width="301px" Height="32px" OnTextChanged="TextBox5_TextChanged" TextMode="Number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter 10_digitNo!!" ForeColor="#CC3300" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Mobile_No. !!" ForeColor="#CC6600"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="ADD COMPANY" Width="147px" Height="32px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style13"></td>
            </tr>
        </table>

           </center>
    </form>
</asp:Content>

