<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Land_Control.ascx.cs" Inherits="Real_Estate_Management.Admin_Control.Land_Control" %>
<p>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<asp:ListView ID="ListView1" runat="server" DataSourceID="Land_ObjectDataSource" InsertItemPosition="LastItem" DataKeyNames="ID" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">
    <EditItemTemplate>
        <li style="background-color: #FFCC66;color: #000080;">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            Area:
            <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
            <asp:RequiredFieldValidator ControlToValidate="AreaTextBox" ValidationGroup="Building_Insert" ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>
            <br />
              <asp:FileUpload ID="FileUpload1" runat="server" />

<%--            <asp:TextBox ID="ImagesTextBox" runat="server" Text='<%# Bind("Images") %>' />--%>
            <asp:RequiredFieldValidator ControlToValidate="FileUpload1" ValidationGroup="Building_Insert" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>
            <br />
           
            <asp:FileUpload ID="FileUpload2" runat="server" />
<%--            <asp:TextBox ID="Design_ImageTextBox" runat="server" Text='<%# Bind("Design_Image") %>' />--%>
            <asp:RequiredFieldValidator ControlToValidate="FileUpload1" ValidationGroup="Building_Insert" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />
            Descriptions:
            <asp:TextBox ID="DescriptionsTextBox" runat="server" Text='<%# Bind("Descriptions") %>' />
           <asp:RequiredFieldValidator ControlToValidate="DescriptionsTextBox" ValidationGroup="Building_Insert" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

             <br />
            Avalable:
            <asp:TextBox ID="AvalableTextBox" runat="server" Text='<%# Bind("Avalable") %>' />
           <asp:RequiredFieldValidator ControlToValidate="AvalableTextBox" ValidationGroup="Building_Insert" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>
             <br />
            <asp:TextBox ID="FK_UsersTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Users") %>' />
            <br />
            <asp:TextBox ID="FK_Purpoes_LandTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Purpoes_Land") %>' />
            
            
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Purpoe_ObjectDataSource" DataTextField="ID" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Purpoe_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Purpose_Apartment_DAL"></asp:ObjectDataSource>
<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="User_ObjectDataSource" DataTextField="First_Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="User_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Users_DAL"></asp:ObjectDataSource>



            
            
            
            
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <InsertItemTemplate>
        <li style="">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />Area:
            <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
           <asp:RequiredFieldValidator ControlToValidate="AreaTextBox" ValidationGroup="Building_Insert" ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>
             <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" />

<%--            <asp:TextBox ID="ImagesTextBox" runat="server" Text='<%# Bind("Images") %>' />--%>
            <asp:RequiredFieldValidator ControlToValidate="FileUpload1" ValidationGroup="Building_Insert" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />Design_Image:
<%--            <asp:TextBox ID="Design_ImageTextBox" runat="server" Text='<%# Bind("Design_Image") %>' />--%>
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="FileUpload2" ValidationGroup="Building_Insert" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>
            <br />Descriptions:
            <asp:TextBox ID="DescriptionsTextBox" runat="server" Text='<%# Bind("Descriptions") %>' />
            <asp:RequiredFieldValidator ControlToValidate="DescriptionsTextBox" ValidationGroup="Building_Insert" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>
            <br />Avalable:
            <asp:TextBox ID="AvalableTextBox" runat="server" Text='<%# Bind("Avalable") %>' />
            <asp:RequiredFieldValidator ControlToValidate="AvalableTextBox" ValidationGroup="Land_Insert" ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>

            <br />FK_Users:
            <asp:TextBox ID="FK_UsersTextBox" Visible="false"  runat="server" Text='<%# Bind("FK_Users") %>' />
            <br />FK_Purpoes_Land:
            <asp:TextBox ID="FK_Purpoes_LandTextBox" Visible="false"  runat="server" Text='<%# Bind("FK_Purpoes_Land") %>' />
           
            

            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Purpoe_ObjectDataSource" DataTextField="Name" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Purpoe_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Purpose_Apartment_DAL"></asp:ObjectDataSource>
<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="User_ObjectDataSource" DataTextField="ID" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="User_ObjectDataSource" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Users_DAL"></asp:ObjectDataSource>
            
            
            
            
             <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemTemplate>
        <li style="background-color: #FFFBD6;color: #333333;">
            <asp:Label ID="IDLabel" Visible="false" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Area:
            <asp:Label ID="AreaLabel" runat="server" Text='<%# Eval("Area") %>' />
            <br />
            
            <asp:Label ID="ImagesLabel"  Visible="false" runat="server" Text='<%# Eval("Images") %>' />
             <img alt="" src="../images/<%# Eval("Images") %>" height="200" width="200" />

            <br />
            <asp:Label ID="Design_ImageLabel" Visible="false" runat="server" Text='<%# Eval("Design_Image") %>' />
           <img alt="" src="../images/<%# Eval("Design_Image") %>" height="200" width="200" />

            <br />
            Descriptions:
            <asp:Label ID="DescriptionsLabel" runat="server" Text='<%# Eval("Descriptions") %>' />
            <br />
            Avalable:
            <asp:Label ID="AvalableLabel" runat="server" Text='<%# Eval("Avalable") %>' />
            <br />
            <asp:Label ID="FK_UsersLabel" Visible="false" runat="server" Text='<%# Eval("FK_Users") %>' />
            <br />
            <asp:Label ID="FK_Purpoes_LandLabel" Visible="false" runat="server" Text='<%# Eval("FK_Purpoes_Land") %>' />
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
<asp:ObjectDataSource ID="Land_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Room_Type" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Land_DAL" UpdateMethod="update"></asp:ObjectDataSource>



     

            


