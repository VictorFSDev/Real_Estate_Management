<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Roles_Control.ascx.cs" Inherits="Real_Estate_Management.Admin_Control.Roles_Control" %>
<p>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="Roles_ObjectDataSource" InsertItemPosition="LastItem">
    
    <EditItemTemplate>
        <li style="background-color: #008A8C; color: #FFFFFF;">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            Role_Name:
            <asp:TextBox ID="Role_NameTextBox" runat="server" Text='<%# Bind("Role_Name") %>' />
             <asp:RequiredFieldValidator ControlToValidate="Role_NameTextBox" ValidationGroup="Roles_Update" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            <asp:Button ID="UpdateButton" ValidationGroup="Roles_Update"  runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <InsertItemTemplate>
        <li style="">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />Role_Name:
            <asp:TextBox ID="Role_NameTextBox" runat="server" Text='<%# Bind("Role_Name") %>' />
           <asp:RequiredFieldValidator ControlToValidate="Role_NameTextBox" ValidationGroup="Roles_Insert" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            <asp:Button ID="InsertButton" ValidationGroup="Roles_Insert" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC; color: #000000;">
            <asp:Label ID="IDLabel" Visible="false" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Role_Name:
            <asp:Label ID="Role_NameLabel" runat="server" Text='<%# Eval("Role_Name") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    
</asp:ListView>
<asp:ObjectDataSource ID="Roles_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Roles_DATA" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Roles_DAL" UpdateMethod="update"></asp:ObjectDataSource>

