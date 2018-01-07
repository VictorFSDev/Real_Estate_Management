<%@ Page Title="" Language="C#" MasterPageFile="~/User_Pages/User_Master_Page.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Real_Estate_Management.User_Pages.WebForm1" %>
<%@ Register src="WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc2:WebUserControl1 ID="WebUserControl11" runat="server" />
</asp:Content>
