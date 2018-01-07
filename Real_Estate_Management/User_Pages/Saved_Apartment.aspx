<%@ Page Title="" Language="C#" MasterPageFile="~/User_Pages/User_Master_Page.Master" AutoEventWireup="true" CodeBehind="Saved_Apartment.aspx.cs" Inherits="Real_Estate_Management.User_Pages.Saved_Apartment" %>
<%@ Register src="../User_Control/Saved_Apartment_Control.ascx" tagname="Saved_Apartment_Control" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Saved_Apartment_Control ID="Saved_Apartment_Control1" runat="server" />
</asp:Content>
