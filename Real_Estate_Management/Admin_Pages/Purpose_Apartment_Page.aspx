<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pages/Admin_Master_Page.Master" AutoEventWireup="true" CodeBehind="Purpose_Apartment_Page.aspx.cs" Inherits="Real_Estate_Management.Admin_Pages.Purpose_Apartment_Page" %>
<%@ Register src="../Admin_Control/Purpose_Apartment_Control.ascx" tagname="Purpose_Apartment_Control" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Purpose_Apartment_Control ID="Purpose_Apartment_Control1" runat="server" />
</asp:Content>
