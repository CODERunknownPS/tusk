<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addstock1.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 61%;
            height: 387px;
        }
        .auto-style3 {
            width: 157px;
        color: #FFFFFF;
            height: 55px;
        }
        .auto-style8 {
            font-size: x-large;
            text-align: center;
            color: #99CC00;
            height: 84px;
            width: 1401px;
            margin-top: 0px;
        }
        .auto-style18 {
            width: 329px;
            height: 55px;
        }
        .auto-style19 {
            width: 208px;
            height: 55px;
        }
        .auto-style29 {
        color: #000099;
    }
        .auto-style33 {
            width: 157px;
            font-size: medium;
            text-align: right;
            color: #0033CC;
            height: 51px;
        }
        .auto-style36 {
            width: 157px;
            font-size: medium;
            text-align: right;
            color: #0033CC;
        }
        .auto-style37 {
            width: 329px;
        }
        .auto-style38 {
            width: 208px;
        }
        .auto-style39 {
            width: 157px;
            font-size: medium;
            text-align: right;
            color: #0033CC;
            height: 20px;
        }
        .auto-style40 {
            width: 329px;
            height: 20px;
        }
        .auto-style41 {
            width: 208px;
            height: 20px;
        }
        .auto-style42 {
            width: 157px;
            font-size: medium;
            text-align: right;
            color: #0033CC;
            height: 3px;
        }
        .auto-style43 {
            width: 329px;
            height: 3px;
        }
        .auto-style44 {
            width: 208px;
            height: 3px;
        }
        .auto-style45 {
            width: 157px;
            font-size: medium;
            text-align: right;
            color: #0033CC;
            height: 46px;
        }
        .auto-style46 {
            width: 329px;
            height: 46px;
        }
        .auto-style47 {
            width: 208px;
            height: 46px;
        }
        .auto-style48 {
            width: 329px;
            height: 51px;
        }
        .auto-style49 {
            width: 208px;
            height: 51px;
        }
        .auto-style50 {
            width: 157px;
            font-size: medium;
            text-align: right;
            color: #0033CC;
            height: 9px;
        }
        .auto-style51 {
            width: 329px;
            height: 9px;
        }
        .auto-style52 {
            width: 208px;
            height: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form>
    <div class="auto-style8">
    
        <strong>
        <br />
        <span class="auto-style29">Add New Stock</span><br />
        <br />
        <br />
        </strong></div>
         <br />
         <br />
        <center> 
        <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style36">Item Name:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox1" runat="server" Width="324px" Height="30px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Valid Name!!" ForeColor="#CC3300" ValidationExpression="^[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style38">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter  Name!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style33">Item Detail:</td>
                <td class="auto-style48">
                    <asp:TextBox ID="TextBox2" runat="server" Width="323px" Height="29px"></asp:TextBox>
                </td>
                <td class="auto-style49">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Details!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style50">Item Price:</td>
                <td class="auto-style51">
                    <asp:TextBox ID="TextBox3" runat="server" Width="298px" Height="30px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Valid Price !!" ForeColor="#CC3300" ValidationExpression="^\d+.\d{0,2}$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style52">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Price!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">Quantity:</td>
                <td class="auto-style40">
                    <asp:TextBox ID="TextBox4" runat="server" Width="300px" Height="31px" TextMode="Number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter Valid N0 !!" ForeColor="#CC3300" ValidationExpression="[0-9]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style41">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter Qnt !!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style42">Company Name:</td>
                <td class="auto-style43">
                    <asp:TextBox ID="TextBox5" runat="server" Width="300px" Height="29px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Valid Name!!" ForeColor="#CC3300" ValidationExpression="^[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style44">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Name!!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style45">Expire Date:</td>
                <td class="auto-style46">
                    <asp:TextBox ID="TextBox6" runat="server" Width="301px" Height="30px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style47">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please Enter ExpDt !!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style18">
                    <asp:Button ID="Button1" runat="server" Text="ADD STOCK" Height="36px" Width="144px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style19"></td>
            </tr>
        </table>
            </center>
    </form>
</asp:Content>

