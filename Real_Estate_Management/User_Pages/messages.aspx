<%@ Page Title="" Language="C#" MasterPageFile="~/User_Pages/User_Master_Page.Master" AutoEventWireup="true" CodeBehind="messages.aspx.cs" Inherits="Real_Estate_Management.User_Pages.messages" %>
<%@ Register src="../User_Control/Messages.ascx" tagname="Messages" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Messages ID="Messages1" runat="server" />
</asp:Content>
