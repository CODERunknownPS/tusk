<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewcompany.aspx.cs" Inherits="viewcompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
       .auto-style1 {
             font-size: x-large;
             text-align: center;
             color: #000099;
         }
         .auto-style4 {
             font-size: x-large;
         }
         .auto-style5 {
             font-size: x-large;
             color: #0033CC;
         }
         .auto-style6 {
             font-size: medium;
             color: #0033CC;
         }
         .auto-style7 {
             font-size: medium;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form><center>
        <div class="auto-style1">
            <strong>
            <br />
            <span class="auto-style5">Company List
            </span>
            <br />
            <br />
            <br />
            <br />
            </strong>
        </div>
     <div class="auto-style4">
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Search Company_Name:" ForeColor="#003399" Font-Bold="True" CssClass="auto-style7"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSearch" runat="server" OnTextChanged="Search"
                         AutoPostBack="true" Height="23px" Width="200px" CssClass="auto-style6"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    </div>
            <div>
        <asp:GridView ID="Grid1" runat="server" AutoGenerateColumns="False" DataKeyNames="ComName"  AllowPaging="True" OnPageIndexChanging = "OnPaging" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="2" CellSpacing="4" GridLines="None" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="800px" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="ComName" HeaderText="ComName" ReadOnly="True" SortExpression="ComName" />
                <asp:BoundField DataField="Adds" HeaderText="Adds" SortExpression="Adds" />
                <asp:BoundField DataField="MedName" HeaderText="MedName" SortExpression="MedName" />
                <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        
    </div></center>
    </form>
</asp:Content>

