<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pages/Admin_Master_Page.Master" AutoEventWireup="true" CodeBehind="Building_Page.aspx.cs" Inherits="Real_Estate_Management.Admin_Pages.Building_Page" %>
<%@ Register src="../Admin_Control/Building_Control.ascx" tagname="Building_Control" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Building_Control ID="Building_Control1" runat="server" />
</asp:Content>
