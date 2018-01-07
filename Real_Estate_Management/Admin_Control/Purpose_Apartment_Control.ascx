<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Purpose_Apartment_Control.ascx.cs" Inherits="Real_Estate_Management.Admin_Control.Purpose_Apartment_Control" %>
<p>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="Purpose_Apartment_ObjectDataSource" InsertItemPosition="LastItem">
   
    <EditItemTemplate>
        <li style="">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ValidationGroup="Purpose_Apartment_Update" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            <asp:Button ID="UpdateButton" ValidationGroup="Purpose_Apartment_Update" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <InsertItemTemplate>
        <li style="">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ValidationGroup="Purpose_Apartment_Insert" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            <asp:Button ID="InsertButton" ValidationGroup="Purpose_Apartment_Insert" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemTemplate>
        <li style="">
            <asp:Label ID="IDLabel" Visible="false" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    
</asp:ListView>
<asp:ObjectDataSource ID="Purpose_Apartment_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Purpose_Apartment_DATA" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Purpose_Apartment_DAL" UpdateMethod="update"></asp:ObjectDataSource>

