<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center>
    <asp:ScriptManager ID="ScriptManager1" runat="server"/>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />  
        </Triggers>
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="1500">
            </asp:Timer>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile.xml" height="500px" Width="100%" OnAdCreated="AdRotator1_AdCreated"/>
        </ContentTemplate>
    </asp:UpdatePanel>
         </center>
</asp:Content>

