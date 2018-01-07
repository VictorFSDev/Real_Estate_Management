<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="sent_message_to_new_user.ascx.cs" Inherits="Real_Estate_Management.User_Control.sent_message_to_new_user" %>
   

<div class="container">
    <div class="row">
        <div class="col-md-12">
 <asp:TextBox ID="TextBox1" runat="server" Height="156px" Rows="10" Width="654px"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
        <div class="col-md-4">
<asp:Button CssClass="btn-success" ID="Button1" runat="server" OnClick="Button1_Click" Text="send" Height="35px" Width="179px" />
</div>
</div>
    </div>
<link href="../Design/item_template/css/bootstrap.min.css" rel="stylesheet" />
