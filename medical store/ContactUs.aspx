<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUsaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 488px;
            height: 224px;
        }
        .auto-style2 {
            width: 208px;
        }
        .auto-style3 {
            position: fixed;
            z-index: auto;
            left: 717px;
            top: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <td>
    <form>
        <div class="auto-style3" dir="auto">
            <fieldset style="padding: 15px; width:350px">
                <legend>
                    Contact us
                </legend>
                <table class="auto-style1">
                    <tr>
                        <td style="vertical-align:top">
                           <b>Name: </b> 
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox1" width="200px" runat="server" Height="27px"></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Name!!" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                        </td>
                        <td style="vertical-align:top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                 runat="server" ErrorMessage="Please Enter Name !!" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                           <b>E-mail: </b> 
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox2" width="200px" runat="server" Height="27px" TextMode="Email"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Valid E-mail!!" ForeColor="Red" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"></asp:RegularExpressionValidator>
                        </td>
                        <td style="vertical-align:top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                 runat="server" ErrorMessage="Please Enter Name !!" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                           <b>Subject:</b></td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox3" width="200px" runat="server" Height="26px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid Subject" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                        </td>
                        <td style="vertical-align:top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                 runat="server" ErrorMessage="Please Enter Name !!" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                            <b>Comments: </b> 
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox4" width="200px" runat="server" Height="65px" Rows="5" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td style="vertical-align:top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                                 runat="server" ErrorMessage="Please Enter Name !!" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>

                        </td>
                        <td class="auto-style2">
                          <br />  <asp:Button ID="Button1" runat="server" Text="Submit" Height="36px" OnClick="Button1_Click" Width="81px" Font-Bold="True" />
                        </td>
                        <td>

                        </td>
                    </tr>
                    
                </table>
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="#993333"></asp:Label>
            </fieldset>
        </div>
    </form>
    </td>
</asp:Content>

