<%@ Page Title="" Language="C#" MasterPageFile="~/User_Pages/User_Master_Page.Master" AutoEventWireup="true" CodeBehind="User_Main_Page.aspx.cs" Inherits="Real_Estate_Management.User_Pages.User_Main_Page" %>
<%@ Register src="../User_Control/User_Main_page_Control1.ascx" tagname="User_Main_page_Control1" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:User_Main_page_Control1 ID="User_Main_page_Control11" runat="server" />
</asp:Content>
