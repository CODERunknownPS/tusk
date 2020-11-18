<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="updatestock.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 55%;
            height: 233px;
        }
        .auto-style3 {
            width: 117px;
        color: #FFFFFF;
    }
        .auto-style5 {
        width: 117px;
        text-align: right;
        color: #0033CC;
    }
        .auto-style6 {
            font-size: x-large;
            text-align: center;
            color: #99CC00;
            height: 97px;
            width: 1397px;
            margin-top: 0px;
        }
        .auto-style7 {
            width: 298px;
        }
    .auto-style8 {
        color: #000099;
    }
    .auto-style9 {
        width: 1078px;
        margin-right: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form class="auto-style9">
    <div class="auto-style6">
    
        <strong>
        <br />
        <span class="auto-style8">Update Stock</span><br />
        <br />
        <br />
        </strong>
    
    </div>
        <br />
        <br /><center>
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style5">Item Name:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" Width="258px" Height="28px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Valid ItmNm!!" ForeColor="#CC3300" ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter It_name!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Current Qnt:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" Width="255px" Height="29px" TextMode="Number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Valid Qnt!!" ForeColor="#CC3300" ValidationExpression="[0-9]*$"></asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter ItmNm!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Quantity:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" Width="256px" Height="31px" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Valid ItmNm!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Height="32px" Text="UPDATE STOCK" Width="156px" OnClick="Button1_Click" />
                </td><td></td>
            </tr>
        </table></center>
    </form>
</asp:Content>

