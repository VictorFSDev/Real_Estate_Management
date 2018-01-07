<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="announces.ascx.cs" Inherits="Real_Estate_Management.User_Control.announces" %>
<!DOCTYPE html>
<html lang="en">

<head>


<link href="../Design/item_template/css/bootstrap.css" rel="stylesheet" />
<link href="../Design/item_template/css/bootstrap.min.css" rel="stylesheet" />
<style>
    .item{

       border-left:none;
       border-right:none;
       text-align:center;
      margin:auto;


    }  
    .header{
       text-align:center;
      margin:auto;
      border:none;


    }
   .table table-hover{
       background-color:aqua !important;
   }


</style>
</head>
<body>

<p>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
</p>
    <div class="container">
<p>
    <asp:GridView class="table table-hover"  BackColor="#EB4538" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged3" style="margin-right: 0px" Width="1064px">
       
        
        <EditRowStyle BackColor= />
         <Columns>
            <asp:TemplateField AccessibleHeaderText="ID2"  Visible="false">
                <ItemTemplate>
                    
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ID") %>'  Visible="false"></asp:Label>
                    
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField ItemStyle-CssClass="item"  DataField="views_numbers" HeaderText="views_numbers" SortExpression="views_numbers" >
            <HeaderStyle CssClass="header" />
<ItemStyle CssClass="item"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField ItemStyle-CssClass="item"  DataField="Area" HeaderText="Area" SortExpression="Area" >
            <HeaderStyle CssClass="header" />
<ItemStyle CssClass="item"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField ItemStyle-CssClass="item" DataField="Apartments_Type" HeaderText="Apartments_Type" SortExpression="Apartments_Type" >
              <HeaderStyle CssClass="header" />
<ItemStyle CssClass="item"></ItemStyle>
            </asp:BoundField>
              <asp:BoundField ItemStyle-CssClass="item" DataField="Descriptions" HeaderText="Descriptions" SortExpression="Descriptions" >
             <HeaderStyle CssClass="header" />
<ItemStyle CssClass="item"></ItemStyle>
            </asp:BoundField>
             <asp:ImageField ItemStyle-CssClass="item" DataImageUrlFormatString="../images/{0}" DataImageUrlField="Image_1" HeaderText="Image_1" ControlStyle-Height="100" ControlStyle-Width="100">
<ControlStyle Height="100px" Width="100px"></ControlStyle>

                 <HeaderStyle CssClass="header" />

<ItemStyle CssClass="item"></ItemStyle>
            </asp:ImageField>
            <asp:ImageField ItemStyle-CssClass="item"  DataImageUrlFormatString="../images/{0}" DataImageUrlField="Image_2" HeaderText="Image_1" ControlStyle-Height="100" ControlStyle-Width="100">
<ControlStyle Height="100px" Width="100px"></ControlStyle>

                <HeaderStyle CssClass="header" />

<ItemStyle CssClass="item"></ItemStyle>
            </asp:ImageField>
            <asp:ImageField ItemStyle-CssClass="item" DataImageUrlFormatString="../images/{0}" DataImageUrlField="Image_3" HeaderText="Image_1" ControlStyle-Height="100" ControlStyle-Width="100">
<ControlStyle Height="100px" Width="100px"></ControlStyle>

                <HeaderStyle CssClass="header" />

<ItemStyle CssClass="item"></ItemStyle>
            </asp:ImageField>
             
            <asp:ImageField ItemStyle-CssClass="item"  DataImageUrlFormatString="../images/{0}" DataImageUrlField="Design_Image" HeaderText="Image_1" ControlStyle-Height="100" ControlStyle-Width="100">
<ControlStyle Height="100px" Width="100px"></ControlStyle>

                <HeaderStyle CssClass="header" />

<ItemStyle CssClass="item"></ItemStyle>
            </asp:ImageField>
            <asp:CommandField ShowSelectButton="True" SelectText="update" >
            <HeaderStyle BorderStyle="None" />
            <ItemStyle BorderStyle="None" />
            </asp:CommandField>
        </Columns>
   
    </asp:GridView>
    <br />
</p>
        </div>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Announce_DAL">
    <SelectParameters>
        <asp:ControlParameter ControlID="Label1" Name="user_ID" PropertyName="Text" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>

    </body>
    </html>