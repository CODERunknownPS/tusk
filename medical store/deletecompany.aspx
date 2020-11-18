<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="deletecompany.aspx.cs" Inherits="removecompany" %>

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
             height: 30px;
         }
        .auto-style4 {
            width: 31%;
            height: 64px;
        }
    
        
               
         .auto-style5 {
             height: 30px;
             width: 215px;
         }
    
        
               
         .auto-style6 {
             height: 24px;
             width: 215px;
         }
         .auto-style8 {
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
            <span class="auto-style8">Delete Company</span><br />
            <br />
           
            </strong>
        </div>
    <div >
     
        
        <table align="center" class="auto-style4">
            <tr>
                <td class="auto-style2"><strong>Company_Name:</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtSearch" runat="server" Width="175px" Height="24px" OnTextChanged="Search" AutoPostBack="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Delete " Height="30px" Width="83px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
     
         <br />
            <br />
    </div>
            <div>
        <asp:GridView ID="Grid1" runat="server" AutoGenerateColumns="False" DataKeyNames="ComName" 
             AllowPaging="True" OnPageIndexChanging = "OnPaging" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="2" CellSpacing="4" GridLines="None" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="800px" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="ComName" HeaderText="ComName" ReadOnly="True" SortExpression="ComName" />
               <asp:BoundField DataField="Adds" HeaderText="Adds" SortExpression="Adds" />
                 <asp:BoundField DataField="MedName" HeaderText="MedName" SortExpression="MedName" />
                <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
                <asp:CommandField ShowSelectButton="True" />
                
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#CCFF33" Font-Bold="True" ForeColor="White" Font-Overline="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoConnectionString %>" SelectCommand="SELECT * FROM [addcompany]"></asp:SqlDataSource>
        
    </div></center>
    </form>
</asp:Content>

