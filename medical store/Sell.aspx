<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sell.aspx.cs" Inherits="Sell" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </head>
 <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
            color: #99CC00;
        }
        .auto-style2 {
            width: 38%;
        }
        .auto-style3 {
        width: 171px;
        color: #FFFFFF;
    }
    .auto-style4 {
        font-size: x-large;
        text-align: center;
        color: #99CC00;
        height: 72px;
        width: 1449px;
        margin-top: 0px;
    }
    .auto-style5 {
        width: 38%;
        color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form>
    <div class="auto-style4">
    
        <strong>
        <br />
        Item Sell Area<br />
        </strong>
    
    </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Customer Name:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="330px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><span class="auto-style3">Select Item For </span><span class="auto-style5">Sell:</span></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="333px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

