<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pages/Admin_Master_Page.Master" AutoEventWireup="true" CodeBehind="Users_Page.aspx.cs" Inherits="Real_Estate_Management.Admin_Pages.Users_Page" %>
<%@ Register src="../Admin_Control/Users_Control.ascx" tagname="Users_Control" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Users_Control ID="Users_Control1" runat="server" />
</asp:Content>
