<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pages/Admin_Master_Page.Master" AutoEventWireup="true" CodeBehind="Roles_Page.aspx.cs" Inherits="Real_Estate_Management.Admin_Pages.Roles_Page" %>
<%@ Register src="../Admin_Control/Roles_Control.ascx" tagname="Roles_Control" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Roles_Control ID="Roles_Control1" runat="server" />
</asp:Content>
