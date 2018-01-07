<%@ Page Title="" Language="C#" MasterPageFile="~/User_Pages/User_Master_Page.Master" AutoEventWireup="true" CodeBehind="SignUP_Page_Control.aspx.cs" Inherits="Real_Estate_Management.User_Pages.SignUP_Page_Control" %>
<%@ Register src="../User_Control/SIGN_UP_UserControl1.ascx" tagname="SIGN_UP_UserControl1" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:SIGN_UP_UserControl1 ID="SIGN_UP_UserControl11" runat="server" />
</asp:Content>
