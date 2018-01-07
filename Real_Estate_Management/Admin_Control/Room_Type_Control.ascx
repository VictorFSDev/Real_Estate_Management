<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Room_Type_Control.ascx.cs" Inherits="Real_Estate_Management.Admin_Control.Room_Type_Control" %>
<p>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<asp:ListView ID="ListView1" runat="server" DataSourceID="Room_Type_ObjectDataSource" InsertItemPosition="LastItem" DataKeyNames="ID">
    
    <EditItemTemplate>
        <li style="background-color: #FFCC66;color: #000080;">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            Room_Type_Name:
            <asp:TextBox ID="Room_Type_NameTextBox" runat="server" Text='<%# Bind("Room_Type_Name") %>' />
            <asp:RequiredFieldValidator ControlToValidate="Room_Type_NameTextBox" ValidationGroup="Room_Type_Update" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            <asp:Button ID="UpdateButton" ValidationGroup="Room_Type_Update" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <InsertItemTemplate>
        <li style="">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />Room_Type_Name:
            <asp:TextBox ID="Room_Type_NameTextBox" runat="server" Text='<%# Bind("Room_Type_Name") %>' />
             <asp:RequiredFieldValidator ControlToValidate="Room_Type_NameTextBox" ValidationGroup="Room_Type_Insert" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

             <br />
            <asp:Button ID="InsertButton" ValidationGroup="Room_Type_Insert" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemTemplate>
        <li style="background-color: #FFFBD6;color: #333333;">
            <asp:Label ID="IDLabel" Visible="false" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Room_Type_Name:
            <asp:Label ID="Room_Type_NameLabel" runat="server" Text='<%# Eval("Room_Type_Name") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    
</asp:ListView>
<asp:ObjectDataSource ID="Room_Type_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Room_Type_DATA" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Room_Type_DAL" UpdateMethod="update"></asp:ObjectDataSource>

