<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Building_Control.ascx.cs" Inherits="Real_Estate_Management.Admin_Control.Building_Control" %>
<p>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label" OnLoad="Label1_Load"></asp:Label>
</p>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="Building_ObjectDataSource" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">

    <EditItemTemplate>
        <li style="background-color: #FFCC66;color: #000080;">
            <asp:TextBox ID="IDTextBox" Visible="false" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            Area:
            <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
            <asp:RequiredFieldValidator ValidationGroup="Building_Update" ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="AreaTextBox"></asp:RequiredFieldValidator>
            <br />
            Floor_Number:
            <asp:TextBox ID="Floor_NumberTextBox" runat="server" Text='<%# Bind("Floor_Number") %>' />
            <asp:RequiredFieldValidator ValidationGroup="Building_Update" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Floor_NumberTextBox"></asp:RequiredFieldValidator>
            <br />
            Apartment_Number:
            <asp:TextBox ID="Apartment_NumberTextBox" runat="server" Text='<%# Bind("Apartment_Number") %>' />
           <asp:RequiredFieldValidator ValidationGroup="Building_Update" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Apartment_NumberTextBox"></asp:RequiredFieldValidator>
             <br />
            Descriptions:
            <asp:TextBox ID="DescriptionsTextBox" runat="server" Text='<%# Bind("Descriptions") %>' />
           <asp:RequiredFieldValidator ValidationGroup="Building_Update" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DescriptionsTextBox"></asp:RequiredFieldValidator>
             <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />

<%--            <asp:TextBox ID="Image_1TextBox" runat="server" Text='<%# Bind("Image_1") %>' />--%>
            <asp:RequiredFieldValidator ValidationGroup="Building_Update" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
            <br />
                            <asp:FileUpload ID="FileUpload2" runat="server" />

<%--            <asp:TextBox ID="Desgin_ImageTextBox" runat="server" Text='<%# Bind("Desgin_Image") %>' />--%>
           <asp:RequiredFieldValidator ValidationGroup="Building_Update" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload2"></asp:RequiredFieldValidator>
             <br />
            <asp:TextBox ID="Year_Of_BuildingTextBox"  runat="server" Text='<%# Bind("Year_Of_Building") %>' />
            <asp:RequiredFieldValidator ValidationGroup="Building_Update" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Year_Of_BuildingTextBox"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="FK_Location_OF_BuildingTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Location_OF_Building") %>' />
            
            
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Location_Of_BuildingObjectDataSource1" DataTextField="City" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Location_Of_BuildingObjectDataSource1" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Location_OF_Building_DAL"></asp:ObjectDataSource>
            
            
            
            
            <br />
            <asp:Button ID="UpdateButton" runat="server" ValidationGroup="Building_Update" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <InsertItemTemplate>
        <li style="">ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            <br />Area:
            <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
           <asp:RequiredFieldValidator ControlToValidate="AreaTextBox" ValidationGroup="Building_Insert" ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>
             <br />Floor_Number:
            <asp:TextBox ID="Floor_NumberTextBox" runat="server" Text='<%# Bind("Floor_Number") %>' />
           <asp:RequiredFieldValidator ValidationGroup="Building_Insert" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Floor_NumberTextBox"></asp:RequiredFieldValidator>

             <br />Apartment_Number:
            <asp:TextBox ID="Apartment_NumberTextBox" runat="server" Text='<%# Bind("Apartment_Number") %>' />
           <asp:RequiredFieldValidator ValidationGroup="Building_Insert" ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Apartment_NumberTextBox"></asp:RequiredFieldValidator>
             <br />Descriptions:
            <asp:TextBox ID="DescriptionsTextBox" runat="server" Text='<%# Bind("Descriptions") %>' />
            <br />   <asp:FileUpload ID="FileUpload1" runat="server" />

<%--            <asp:TextBox ID="Image_1TextBox" runat="server" Text='<%# Bind("Image_1") %>' />--%>
            <asp:RequiredFieldValidator ValidationGroup="Building_Insert" ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>

            <br />
                            <asp:FileUpload ID="FileUpload2" runat="server" />

<%--            <asp:TextBox ID="Desgin_ImageTextBox" runat="server" Text='<%# Bind("Desgin_Image") %>' />--%>
           <asp:RequiredFieldValidator ValidationGroup="Building_Insert" ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload2"></asp:RequiredFieldValidator>

             <br />Year_Of_Building:
            <asp:TextBox ID="Year_Of_BuildingTextBox" runat="server" Text='<%# Bind("Year_Of_Building") %>' />
            <asp:RequiredFieldValidator ValidationGroup="Building_Insert" ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Year_Of_BuildingTextBox"></asp:RequiredFieldValidator>

            <br />
            <asp:TextBox ID="FK_Location_OF_BuildingTextBox" Visible="false" runat="server" Text='<%# Bind("FK_Location_OF_Building") %>' />
            
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Location_Of_BuildingObjectDataSource1" DataTextField="City" DataValueField="ID">
</asp:DropDownList>
<asp:ObjectDataSource ID="Location_Of_BuildingObjectDataSource1" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Location_OF_Building_DAL"></asp:ObjectDataSource>
            
            
            
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
            Floor_Number:
            <asp:Label ID="Floor_NumberLabel" runat="server" Text='<%# Eval("Floor_Number") %>' />
            <br />
            Apartment_Number:
            <asp:Label ID="Apartment_NumberLabel" runat="server" Text='<%# Eval("Apartment_Number") %>' />
            <br />
            Descriptions:
            <asp:Label ID="DescriptionsLabel" runat="server" Text='<%# Eval("Descriptions") %>' />
            <br />
            <asp:Label ID="Image_1Label" Visible="false" runat="server" Text='<%# Eval("Image_1") %>' />
            <img alt="" src="../images/<%# Eval("Image_1") %>" height="200" width="200" />

            <br />
            
            <asp:Label ID="Desgin_ImageLabel" Visible="false" runat="server" Text='<%# Eval("Desgin_Image") %>' />
            <img alt="" src="../images/<%# Eval("Desgin_Image") %>" height="200" width="200" />

            <br />
            Year_Of_Building:
            <asp:Label ID="Year_Of_BuildingLabel" runat="server" Text='<%# Eval("Year_Of_Building") %>' />
            <br />
            <asp:Label ID="FK_Location_OF_BuildingLabel" Visible="false" runat="server" Text='<%# Eval("FK_Location_OF_Building") %>' />
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
<asp:ObjectDataSource ID="Building_ObjectDataSource" runat="server" DataObjectTypeName="Real_Estate_Management.DATA.Building_DATA" DeleteMethod="delete" InsertMethod="insert" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Building_DAL" UpdateMethod="update"></asp:ObjectDataSource>




