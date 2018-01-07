<%@ Page Title="" Language="C#" MasterPageFile="~/User_Pages/User_Master_Page.Master" AutoEventWireup="true" CodeBehind="sent_message_to_new_user.aspx.cs" Inherits="Real_Estate_Management.User_Pages.sent_message_to_new_user" %>
<%@ Register src="../User_Control/sent_message_to_new_user.ascx" tagname="sent_message_to_new_user" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:sent_message_to_new_user ID="sent_message_to_new_user1" runat="server" />
</asp:Content>
