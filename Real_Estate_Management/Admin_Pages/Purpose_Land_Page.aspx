<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pages/Admin_Master_Page.Master" AutoEventWireup="true" CodeBehind="Purpose_Land_Page.aspx.cs" Inherits="Real_Estate_Management.Admin_Pages.Purpose_Land_Page" %>
<%@ Register src="../Admin_Control/Purpose_Land_Control1.ascx" tagname="Purpose_Land_Control1" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Purpose_Land_Control1 ID="Purpose_Land_Control11" runat="server" />
</asp:Content>
