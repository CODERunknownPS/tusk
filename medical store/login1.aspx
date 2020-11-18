<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

         .button {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #305cde;
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
         .auto-style1 {
            text-align: center;
            width: 462px;
            z-index: auto;
            position: fixed;
            left: 596px;
            top: 129px;
            height: 425px;
            right: 15px;
         }
        .auto-style2 {
            width: 85%;
            height: 200px;
        }
        .auto-style3 {
            text-align: center;
            width: 149px;
        }
        .auto-style4 {
            text-align: left;
            width: 246px;
        }
        .auto-style5 {
        color: #000099;
        }
        .auto-style6 {
        text-align: center;
        width: 149px;
        height: 57px;
        }
        .auto-style7 {
        text-align: left;
        height: 57px;
        width: 246px;
        }
        .auto-style10 {
             font-size: x-large;
             color: #990033;
        }
        .auto-style11 {
            text-align: center;
            width: 149px;
            height: 24px;
        }
        .auto-style12 {
            text-align: left;
            height: 24px;
            width: 246px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form >    
    <div class="auto-style1" style="border: thin groove #000000;"> <br />
      <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" Text="Login"></asp:Label>  <br /> <br /> <br /> <br />
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Username:" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="auto-style7">
                  <br />  <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Username" Width="220px" Height="27px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Usrnam!!" ForeColor="#CC3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Password:" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="auto-style12"><br />
                    <asp:TextBox ID="TextBox2" runat="server" Width="220px" placeholder="Enter Password" TextMode="Password" Height="27px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password!!" ForeColor="#CC3300" SetFocusOnError="True">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                  <b>  <a href="#" onclick="window.open('ForgetPassword.aspx','FP','height=200,width=600,top=300,left=500,fullscreen=no,scrollbars=no,resizable=0');" > Forget Password</a></b>
                </td>
                <td class="auto-style4">
                    &nbsp
                    <asp:Button ID="Button1" class="button" runat="server" Text="Login" 
                        Font-Bold="False" Font-Size="Medium" Height="42px" Width="99px" OnClick="Button1_Click" ForeColor="White" />
                </td>
            </tr>
        </table> <br />
       <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style10" NavigateUrl="~/Register2.aspx">New user?</asp:HyperLink>
    </div>
    </form>
</asp:Content>


