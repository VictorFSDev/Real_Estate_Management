<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Saved_Apartment_Control.ascx.cs" Inherits="Real_Estate_Management.User_Control.Saved_Apartment_Control" %>

<html lang="en">

<head>


    <link href="../Design/item_template/css/bootstrap.css" rel="stylesheet" />
    <link href="../Design/item_template/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .item {
            border-left: none;
            border-right: none;
            text-align: center;
            margin: auto;
        }

        .header {
            border: none;
            text-align: center;
            margin: auto;
        }
    </style>
</head>
<body>

    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <div class="container">
    <asp:GridView class="table table-hover" ID="GridView1" BackColor="#fa9714" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

        <Columns>
            <asp:TemplateField Visible="false">
                <ItemTemplate>

                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ID") %>' Visible="false"></asp:Label>

                </ItemTemplate>
                <HeaderStyle CssClass="header" />
            </asp:TemplateField>
            <asp:BoundField ItemStyle-CssClass="item" DataField="Area" HeaderText="Area" SortExpression="Area">
                <HeaderStyle BorderStyle="None" CssClass="header" />
                <ItemStyle CssClass="item"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField ItemStyle-CssClass="item" DataField="Apartments_Type" HeaderText="Apartments_Type" SortExpression="Apartments_Type">
                <FooterStyle BorderStyle="None" />
                <HeaderStyle BorderStyle="None" CssClass="header" />
                <ItemStyle CssClass="item"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField ItemStyle-CssClass="item" DataField="Descriptions" HeaderText="Descriptions" SortExpression="Descriptions">
                <HeaderStyle BorderStyle="None" CssClass="header" />
                <ItemStyle CssClass="item"></ItemStyle>
            </asp:BoundField>
            <asp:ImageField ItemStyle-CssClass="item" DataImageUrlFormatString="../images/{0}" DataImageUrlField="Image_1" ControlStyle-Height="100" ControlStyle-Width="100" HeaderText="Image_1">
                <ControlStyle Height="100px" Width="100px"></ControlStyle>
                <HeaderStyle BorderStyle="None" CssClass="header" />

                <ItemStyle CssClass="item"></ItemStyle>
            </asp:ImageField>
            <asp:ImageField ItemStyle-CssClass="item" DataImageUrlFormatString="../images/{0}" DataImageUrlField="Image_2" ControlStyle-Height="100" ControlStyle-Width="100" HeaderText="Image_2">
                <ControlStyle Height="100px" Width="100px"></ControlStyle>
                <HeaderStyle BorderStyle="None" CssClass="header" />

                <ItemStyle CssClass="item"></ItemStyle>
            </asp:ImageField>
            <asp:ImageField ItemStyle-CssClass="item" DataImageUrlFormatString="../images/{0}" DataImageUrlField="Image_3" ControlStyle-Height="100" ControlStyle-Width="100" HeaderText="Image_3">
                <ControlStyle Height="100px" Width="100px"></ControlStyle>
                <HeaderStyle BorderStyle="None" CssClass="header" />

                <ItemStyle CssClass="item"></ItemStyle>
            </asp:ImageField>
            <asp:ImageField ItemStyle-CssClass="item" DataImageUrlFormatString="../images/{0}" DataImageUrlField="Design_Image" ControlStyle-Height="100" ControlStyle-Width="100" HeaderText="Design_Image">
                <ControlStyle Height="100px" Width="100px"></ControlStyle>
                <HeaderStyle BorderStyle="None" CssClass="header" />

                <ItemStyle CssClass="item"></ItemStyle>
            </asp:ImageField>
            <asp:CommandField ItemStyle-CssClass="item" ShowSelectButton="True">
                <HeaderStyle BorderStyle="None" />
                <ItemStyle BorderStyle="None" CssClass="item" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
        </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="select_All_saved_Apartments" TypeName="Real_Estate_Management.DAL.Saved_Apartment_DAL">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="ID" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>



    <script src="../Design/item_template/js/bootstrap.js"></script>
    <script src="../Design/item_template/js/bootstrap.min.js"></script>
    <script src="../Design/item_template/js/jquery.js"></script>

</body>
</html>
