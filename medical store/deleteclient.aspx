<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="deleteclient.aspx.cs" Inherits="deletecleint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         .auto-style1 {
             font-size: x-large;
             text-align: center;
             color: #000099;
         }
        
        .auto-style2 {
            height: 24px;
            color: #003399;
            width: 113px;
        }
        .auto-style3 {
            width: 113px;
        }
        .auto-style4 {
            width: 28%;
            height: 70px;
        }
    
        
               
        .auto-style5 {
            font-size: x-large;
            color: #003399;
        }
    
        
               
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form><center>
        <div class="auto-style1">
            <strong>
            <br />
            <span class="auto-style5">Delete Client</span><br />
            <br />
           
            </strong>
        </div>
    <div >
     
        
        <table align="center" class="auto-style4">
            <tr>
                <td class="auto-style2">C<strong>lient Name:</strong></td>
                <td class="auto1">
                    <asp:TextBox ID="txtSearch" runat="server" Width="175px" Height="24px" OnTextChanged="Search" AutoPostBack="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Delete " Height="30px" Width="79px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
     
         <br />
            <br />
    </div>
            <div>
        <asp:GridView ID="Grid1" runat="server" AutoGenerateColumns="False" DataKeyNames="ClientN" 
             AllowPaging="True" OnPageIndexChanging = "OnPaging" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="2" CellSpacing="4" GridLines="None" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="800px" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="ClientN" HeaderText="ClientN" ReadOnly="True" SortExpression="ClientN" />
               <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
                 <asp:BoundField DataField="Adds" HeaderText="Adds" SortExpression="Adds" />
                <asp:BoundField DataField="MedN" HeaderText="Medicine Name" SortExpression="MedN" />
                <asp:CommandField ShowSelectButton="True" />
                
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" Font-Overline="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        
    </div></center>
    </form>
</asp:Content>

