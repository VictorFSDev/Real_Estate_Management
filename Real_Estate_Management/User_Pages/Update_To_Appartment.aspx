<%@ Page Title="" Language="C#" MasterPageFile="~/User_Pages/User_Master_Page.Master" AutoEventWireup="true" CodeBehind="Update_To_Appartment.aspx.cs" Inherits="Real_Estate_Management.User_Pages.Update_To_Appartment" %>
<%@ Register src="../User_Control/Update_To_Appartment.ascx" tagname="Update_To_Appartment" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Update_To_Appartment ID="Update_To_Appartment1" runat="server" />
</asp:Content>
