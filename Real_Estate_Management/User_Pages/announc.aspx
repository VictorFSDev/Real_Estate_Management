<%@ Page Title="" Language="C#" MasterPageFile="~/User_Pages/User_Master_Page.Master" AutoEventWireup="true" CodeBehind="announc.aspx.cs" Inherits="Real_Estate_Management.User_Pages.announc" %>
<%@ Register src="../User_Control/announces.ascx" tagname="announces" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc2:announces ID="announces1" runat="server" />
</asp:Content>
