<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pages/Admin_Master_Page.Master" AutoEventWireup="true" CodeBehind="Room_Page.aspx.cs" Inherits="Real_Estate_Management.Admin_Pages.Room_Page" %>
<%@ Register src="../Admin_Control/Room_Control.ascx" tagname="Room_Control" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Room_Control ID="Room_Control1" runat="server" />
</asp:Content>
