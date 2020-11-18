<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Home2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

      
        .button {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #ddd;
            margin-right: 10px;
            margin-left: 156px;
            color: black;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin: 4px 2px 4px 155px;
            cursor: pointer;
            border-radius: 16px;

        }
            .button:hover {
                background-color: deepskyblue;
                color: white;
            }
      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form >
        <br />

        <asp:Button ID="Button1" runat="server" class="button" Text="Get Started" Height="36px" Width="144px" OnClick="Button1_Click" />
    &nbsp;</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
</asp:Content>

