<%@ Page Title="" Language="C#" MasterPageFile="~/User_Pages/User_Master_Page.Master" AutoEventWireup="true" CodeBehind="new_apart.aspx.cs" Inherits="Real_Estate_Management.User_Pages.new_apart" %>
<%@ Register src="../User_Control/ADD_new_apartment.ascx" tagname="ADD_new_apartment" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ADD_new_apartment ID="ADD_new_apartment1" runat="server" />
</asp:Content>
