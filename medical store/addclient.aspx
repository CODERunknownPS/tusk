<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addclient.aspx.cs" Inherits="addclient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style2 {
            width: 56%;
            height: 388px;
        }
        .auto-style3 {
             width: 147px;
             text-align: right;
         }
    .auto-style5 {
             width: 147px;
             text-align: right;
             color: #0033CC;
         }
         .auto-style6 {
             font-size: x-large;
             text-align: center;
             color: #99CC00;
             height: 64px;
             width: 1401px;
             margin-top: 0px;
         }
         .auto-style12 {
             width: 231px;
         }
         .auto-style14 {
             width: 222px;
         }
         .auto-style16 {
        color: #000099;
    }
         .auto-style17 {
             width: 147px;
             text-align: right;
             color: #0033CC;
             height: 77px;
         }
         .auto-style18 {
             width: 231px;
             height: 77px;
         }
         .auto-style19 {
             width: 222px;
             height: 77px;
         }
         .auto-style20 {
             width: 147px;
             text-align: right;
             color: #0033CC;
             height: 78px;
         }
         .auto-style21 {
             width: 231px;
             height: 78px;
         }
         .auto-style22 {
             width: 222px;
             height: 78px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <form><center>
    <div class="auto-style6">
    
        f<strong><br />
        <span class="auto-style16">Add New Client</span><br />
        <br />
        <br />
        </strong>
    
    </div>
          <br />
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style5"><strong>Client&nbsp; Name:</strong></td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox1" runat="server" Width="272px" Height="28px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Name!!" ForeColor="#CC3300" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Name!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style20"><strong>Mobile:</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox3" runat="server" Width="270px" Height="30px" TextMode="Number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter 10_digit No.!!" ForeColor="#CC3300" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter mob_No. !!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Address:</strong></td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox4" runat="server" Width="271px" Height="29px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter Valid Address!!" ForeColor="#CC3300" ValidationExpression="[0-9a-zA-Z #,-]+"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter Address!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="vertical-align:top" class="auto-style17">
                          
                    <strong>Medicine Name:</strong></td>
                <td style="vertical-align:top" class="auto-style18">
                    <asp:TextBox ID="TextBox5" runat="server" Width="269px" Height="68px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Pease Enter Medicine!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click1" Text="Add Client" Width="100px" />
                </td>
                <td class="auto-style14"></td>
            </tr>
        </table></center>
    </form>
</asp:Content>

