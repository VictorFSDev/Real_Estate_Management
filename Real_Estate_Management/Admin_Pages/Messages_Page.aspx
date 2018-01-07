<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pages/Admin_Master_Page.Master" AutoEventWireup="true" CodeBehind="Messages_Page.aspx.cs" Inherits="Real_Estate_Management.Admin_Pages.Messages_Page" %>
<%@ Register src="../Admin_Control/Message_Control.ascx" tagname="Message_Control" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Message_Control ID="Message_Control1" runat="server" />
</asp:Content>
