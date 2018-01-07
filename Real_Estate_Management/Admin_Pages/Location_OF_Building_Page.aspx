<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pages/Admin_Master_Page.Master" AutoEventWireup="true" CodeBehind="Location_OF_Building_Page.aspx.cs" Inherits="Real_Estate_Management.Admin_Pages.Location_OF_Building_Page" %>
<%@ Register src="../Admin_Control/Location_OF_Building_Control.ascx" tagname="Location_OF_Building_Control" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Location_OF_Building_Control ID="Location_OF_Building_Control1" runat="server" />
</asp:Content>
