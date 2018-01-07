<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Update_To_Appartment.ascx.cs" Inherits="Real_Estate_Management.User_Control.Update_To_Appartment" %>
<style>

                .field-validation-error{ color: red; font-weight: bold; }


</style>
<p>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    &nbsp;<asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    &nbsp;<asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
</p>
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <div class="form-group row">
            <div class="form-group row">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
            </div>
            <div class="col-sm-2">
                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">area</label>
            </div>
            <div class="col-sm-2">
                <asp:TextBox ID="apartment_area"  ValidationGroup="next1" class="form-control form-control-sm" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator CssClass="field-validation-error" ValidationGroup="next1" ID="RequiredFieldValidator1" ControlToValidate="apartment_area" runat="server" ErrorMessage="enter area"></asp:RequiredFieldValidator>

            </div>
        </div>
        <br />
        <div class="form-group row">
            <div class="col-sm-2">
                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">apartment type</label>

            </div>
            <div class="col-sm-2">
                <asp:TextBox ID="apartment_type"  ValidationGroup="next1" class="form-control form-control-sm" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator  CssClass="field-validation-error" ValidationGroup="next1" ID="RequiredFieldValidator2" ControlToValidate="apartment_type" runat="server" ErrorMessage="enter type"></asp:RequiredFieldValidator>

            </div>
        </div>
        <br />

        <br />
        <div class="form-group row">
            <div class="col-sm-2">
                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">Description</label>
            </div>
            <div class="col-sm-2">
                <asp:TextBox ID="apartment_Description"  ValidationGroup="next1" class="form-control form-control-sm" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator  CssClass="field-validation-error" ValidationGroup="next1" ID="RequiredFieldValidator3" ControlToValidate="apartment_Description" runat="server" ErrorMessage="enter Description"></asp:RequiredFieldValidator>

            </div>
        </div>
        <br />
        <div class="form-group row">

            <div class="col-sm-2">
                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">floor</label>

            </div>
            <div class="col-sm-2">

                <asp:TextBox ID="floor" runat="server"  ValidationGroup="next1" class="form-control form-control-sm"></asp:TextBox>
<asp:RequiredFieldValidator  CssClass="field-validation-error" ValidationGroup="next1" ID="RequiredFieldValidator4" ControlToValidate="floor" runat="server" ErrorMessage="enter floor"></asp:RequiredFieldValidator>

            </div>

        </div>
        <br />
        <div class="form-group row">
            <div class="col-sm-2">
                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">apartment number</label>
            </div>

            <div class="col-sm-2">
                <asp:TextBox ID="TextBox5" class="form-control form-control-sm"  ValidationGroup="next1" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator  CssClass="field-validation-error" ValidationGroup="next1" ID="RequiredFieldValidator5" ControlToValidate="TextBox5" runat="server" ErrorMessage="enter apartment number"></asp:RequiredFieldValidator>

            </div>

        </div>
        <br />
        <div class="form-group row">
            <div class="col-sm-2">
                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">price</label>
            </div>
            <div class="col-sm-2">
                <asp:TextBox ID="price" runat="server" class="form-control form-control-sm"></asp:TextBox>
<asp:RequiredFieldValidator  CssClass="field-validation-error" ValidationGroup="next1" ID="RequiredFieldValidator6" ControlToValidate="price" runat="server" ErrorMessage="enter pricer"></asp:RequiredFieldValidator>

            </div>

        </div>
        <br />
        <div class="form-group row">
            <div class="col-sm-2">
                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">purpose</label>
            </div>
            <div class="col-sm-2">
                <asp:DropDownList ID="apartment_purpose" class="form-control form-control-sm" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name" DataValueField="ID">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Purpose_Apartment_DAL"></asp:ObjectDataSource>

            </div>

        </div>
        <br />
        <div class="form-group row">
            <div class="col-sm-2">
                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">image</label>

            </div>
            <div class="col-sm-2">


                <asp:Image ID="Image3" runat="server" Height="100px" Width="100px" />

                <asp:FileUpload ID="imge4" runat="server" ViewStateMode="Enabled" />
                <asp:Button ID="Button6" runat="server" Height="24px" OnClick="Button6_Click" Text="Button" />
            </div>
        </div>
        <br />
        <div class="form-group row">
            <div class="col-sm-2">
                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">image</label>

            </div>
            <div class="col-sm-2">
                <asp:Image ID="Image4" runat="server" Height="100px" Width="100px" />
                <asp:FileUpload ID="imge5" runat="server" />


                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Button" Style="height: 26px" />

            </div>
        </div>
        <br />
        <div class="form-group row">
            <div class="col-sm-2">
                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">image</label>
            </div>
            <div class="col-sm-2">
                <asp:Image ID="Image7" runat="server" Height="100px" Width="100px" />
                <asp:FileUpload ID="imge6" runat="server" />
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Button" />
            </div>
        </div>
        <br />
        <div class="form-group row">
            <div class="col-sm-2">
                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">image</label>
            </div>
            <div class="col-sm-2">
                <asp:Image ID="Image6" runat="server" Height="100px" Width="100px" />
                <asp:FileUpload ID="apartment_design" runat="server" />
                <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Button" />
                <br />
                <br />
&nbsp;<asp:Button ID="Button1" runat="server" ValidationGroup="next1" CssClass="btn-success" OnClick="Button1_Click" Text="next" Height="36px" Width="122px" />
            </div>
        </div>
        <br />
    </asp:View>
    <asp:View ID="View2" runat="server">

        <div class="form-group row">
            <div class="col-sm-2">

                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">area</label>
            </div>
            <div class="col-sm-2">

                <asp:TextBox ID="building_area" runat="server" ValidationGroup="next2" class="form-control form-control-sm"></asp:TextBox>
<asp:RequiredFieldValidator  CssClass="field-validation-error" ValidationGroup="next2" ID="RequiredFieldValidator7" ControlToValidate="building_area" runat="server" ErrorMessage="enter building area "></asp:RequiredFieldValidator>

            </div>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">LinkButton</asp:LinkButton>
        <br />
        <div class="form-group row">
            <div class="col-sm-2">

                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">description</label>
            </div>
            <div class="col-sm-2">


                <asp:TextBox ID="building_description" ValidationGroup="next2" class="form-control form-control-sm" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator  CssClass="field-validation-error" ValidationGroup="next2" ID="RequiredFieldValidator8" ControlToValidate="building_description" runat="server" ErrorMessage="enter building description"></asp:RequiredFieldValidator>


            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-2">

                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">year of building</label>
            </div>
            <div class="col-sm-2">
                <asp:Calendar ID="building_year" ValidationGroup="next2" class="form-control form-control-sm" runat="server"></asp:Calendar>

            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-2">

                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">image</label>
            </div>
            <div class="col-sm-2">
                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                <asp:FileUpload ID="building_img2" runat="server" />
                <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Button" />
            </div>
        </div>
        <br />
        <div class="form-group row">
            <div class="col-sm-2">

                <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">image</label>
            </div>
            <div class="col-sm-2">
                <asp:Image ID="Image2" runat="server" Height="100px" Width="100px" />

                <asp:FileUpload ID="building_deign" runat="server" />
                <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Button" />
            </div>

         
        </div>
           <div class="form-group row">
                <asp:Button ID="Button2" runat="server" ValidationGroup="next2" CssClass="btn-success"  OnClick="Button2_Click" Text="next" Height="34px" Width="118px" />
 </div>
    </asp:View>
    <asp:View ID="View3" runat="server">
         <div class="form-group row">
            <div class="col-sm-2">
        <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">country</label>
                </div>
                 <div class="col-sm-2">
        <asp:TextBox ID="country" class="form-control form-control-sm" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator  CssClass="field-validation-error" ValidationGroup="next3" ID="RequiredFieldValidator14" ControlToValidate="country" runat="server" ErrorMessage="enter country"></asp:RequiredFieldValidator>

                     </div>
             </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">LinkButton</asp:LinkButton>
        <br />
        <div class="form-group row">
        <div class="col-sm-2">
            <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">government</label>

            </div>
            <div class="col-sm-2">
            <asp:TextBox ID="government" ValidationGroup="next3" class="form-control form-control-sm" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator  CssClass="field-validation-error" ValidationGroup="next3" ID="RequiredFieldValidator10" ControlToValidate="government" runat="server" ErrorMessage="enter government"></asp:RequiredFieldValidator>

                </div>
        </div>
         <div class="form-group row">
        <div class="col-sm-2">
            <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">city</label>
            </div>
              <div class="col-sm-2">
            <asp:TextBox ID="city" runat="server" ValidationGroup="next3" class="form-control form-control-sm"></asp:TextBox>
<asp:RequiredFieldValidator  CssClass="field-validation-error" ValidationGroup="next3" ID="RequiredFieldValidator11" ControlToValidate="city" runat="server" ErrorMessage="enter city"></asp:RequiredFieldValidator>

                  </div>
        </div>
           <div class="form-group row">
        <div class="col-sm-2">
            <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">street name</label>
           </div>
                <div class="col-sm-2">
             <asp:TextBox ID="street_name" ValidationGroup="next3" class="form-control form-control-sm" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator  CssClass="field-validation-error" ValidationGroup="next3" ID="RequiredFieldValidator12" ControlToValidate="street_name" runat="server" ErrorMessage="enter street name"></asp:RequiredFieldValidator>

       </div>
                     </div>
        <br />
             <div class="form-group row">
        <div class="col-sm-2">
            <label for="smFormGroupInput" style="font-size: xx-large; color: crimson;" class="col-sm-2 col-form-label col-form-label-sm">building number</label>
            </div>
                  <div class="col-sm-2">  
            <asp:TextBox ID="building_number" class="form-control form-control-sm" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator  CssClass="field-validation-error" ValidationGroup="next3" ID="RequiredFieldValidator13" ControlToValidate="building_number" runat="server" ErrorMessage="enter building number"></asp:RequiredFieldValidator>

      </div>
                        </div>
         <div class="form-group row">
        <asp:Button ID="Button4" runat="server" ValidationGroup="next3"  CssClass="btn-success" OnClick="Button4_Click" Text="Next" Height="27px" Width="107px" />
</div>

    </asp:View>
    <asp:View ID="View4" runat="server">
        <asp:Button ID="Button5" runat="server" CssClass="btn-success" OnClick="Button5_Click" Text="ADD Room" />
        <br />

    </asp:View>

</asp:MultiView>



<p>
    <asp:Button ID="apply" runat="server" OnClick="apply_Click1" CssClass="btn-danger" Text="Apply" Visible="False" Height="43px" Width="119px" />
</p>

<script src="../Design/Jquery%20Slider_files/bootstrap.min.js"></script>

<link href="../Design/item_template/css/bootstrap.min.css" rel="stylesheet" />
