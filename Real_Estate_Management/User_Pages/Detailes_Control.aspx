<%@ Page Title="" Language="C#" MasterPageFile="~/User_Pages/User_Master_Page.Master" AutoEventWireup="true" CodeBehind="Detailes_Control.aspx.cs" Inherits="Real_Estate_Management.User_Pages.Detailes_Control" %>
<%@ Register src="../User_Control/Detailes_Control_Control.ascx" tagname="Detailes_Control_Control" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Detailes_Control_Control ID="Detailes_Control_Control1" runat="server" />
</asp:Content>
