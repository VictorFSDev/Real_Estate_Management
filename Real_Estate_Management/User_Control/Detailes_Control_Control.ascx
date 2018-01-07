<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Detailes_Control_Control.ascx.cs" Inherits="Real_Estate_Management.User_Control.Detailes_Control_Control" %>
<!Doctype>
<html>
<head>

   
	<meta name="author" content="Ste Brennan - Code Computerlove - http://www.codecomputerlove.com/" />
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
    <link href="../Design/3.0.5/examples/styles.css" rel="stylesheet" />
    <link href="../Design/3.0.5/photoswipe.css" rel="stylesheet" />
    <script src="../Design/3.0.5/lib/klass.min.js" type="text/javascript" ></script>

    <script src="../Design/3.0.5/code.photoswipe.jquery-3.0.5.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">

		(function(window, PhotoSwipe){
		
			document.addEventListener('DOMContentLoaded', function(){
			
				var
					options = {},
					instance = PhotoSwipe.attach( window.document.querySelectorAll('#Gallery a'), options );
			
			}, false);
			
			
		}(window, window.Code.PhotoSwipe));
		
	</script>
	


    <meta charset="utf-8" />
    <title>3D Image Transitions</title>
    <!--[if lte IE 8]>
 			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen" title="no title" charset="utf-8">
    <link href='http://fonts.googleapis.com/css?family=Antic+Slab' rel='stylesheet' type='text/css'>

    <!-- Use jQuery for best compatibility with other CSS3 enabled browsers -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js" type="text/javascript" charset="utf-8"></script>

    <script src="js/flux.js" type="text/javascript" charset="utf-8"></script>

    <script type="text/javascript" charset="utf-8">
        $(function () {
            //if (!flux.browser.supportsTransitions)
            //    alert("Flux Slider requires a browser that supports CSS3 transitions");

            window.f = new flux.slider('#slider', {
                pagination: false,
                controls: true,
                transitions: ['explode', 'tiles3d', 'bars3d', 'cube', 'turn'],
                autoplay: false
            });

            $('.transitions').click(function (event) {
                event.preventDefault();
                window.f.next($(event.target).data('transition'), $(event.target).data('params'));
            });
        });
    </script>
    <style>



</style>
</head>

<body>
    <script src="../Design/3d-image-transitions/js/flux.js"></script>

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <div class="container">
        <div class="row" style="background-color: goldenrod">
            <img src="../images/joede-location-symbol.png" height="30" width="30" />
            <asp:Label ID="Country" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Govern" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="City" runat="server" Text="Label"></asp:Label>
            <br />
            <img src="../images/map-512.png" height="30" width="30" />
            <asp:Label ID="Area" runat="server" Text="Label"></asp:Label>

            <br />
            <img src="../images/currency-2022440_960_720.png" height="30" width="30" />
            <asp:Label ID="Total_Price" runat="server" Text="Label"></asp:Label>
            <br />
            &nbsp;Description:
            <asp:Label ID="Disription" runat="server" Text="Label"></asp:Label>

        </div>
    </div>
    <br />

    <section class="container">

        <div id="slider">

          
        </div>
    </section>

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="select_All" TypeName="Real_Estate_Management.DAL.Apartments_Rooms">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <p>



         <div id="slider1_container" class="container" style="position: relative; width: 720px;
        height: 480px; overflow: hidden;">

        <!-- Loading Screen -->
        <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="../svg/loading/static-svg/spin.svg" />
        </div>

        <!-- Slides Container -->
        <div u="slides"  style="position: absolute; left: 0px; top: 0px; width: 720px; height: 480px;
            overflow: hidden;">
            <div>

                          <asp:Image CssClass="" ID="Image1" Height="400" Width="700" runat="server" />
                                    <asp:Image u="thumb" CssClass="" ID="Image4" runat="server" />

                
            </div>
            <div>
<asp:Image CssClass="img-responsive" ID="Image2" runat="server" Height="400" Width="700" />
                          <asp:Image u="thumb" CssClass="" ID="Image5" runat="server" />
            </div>
            <div>
        <asp:Image  CssClass="img-responsive" ID="Image3" runat="server" Height="400" Width="700" />
                          <asp:Image u="thumb" CssClass="" ID="Image6" runat="server" />
            </div>
            <div>
       <asp:Image CssClass="img-responsive" ID="Design_img" runat="server" Height="400" Width="700" />
       <asp:Image u="thumb" CssClass="img-responsive" ID="Design_img1" runat="server" />
            </div>
     
     
       
        </div>
        <!--#region Thumbnail Navigator Skin Begin -->
        <!-- Help: https://www.jssor.com/development/slider-with-thumbnail-navigator.html -->
        <style>
            /* jssor slider loading skin spin css */
            .jssorl-009-spin img {
                animation-name: jssorl-009-spin;
                animation-duration: 1.6s;
                animation-iteration-count: infinite;
                animation-timing-function: linear;
            }

            @keyframes jssorl-009-spin {
                from {
                    transform: rotate(0deg);
                }

                to {
                    transform: rotate(360deg);
                }
            }

            /* jssor slider thumbnail navigator skin 07 css */
            /*
            .jssort07 .p            (normal)
            .jssort07 .p:hover      (normal mouseover)
            .jssort07 .pav          (active)
            .jssort07 .pav:hover    (active mouseover)
            .jssort07 .pdn          (mousedown)
            */
            .jssort07 {
                position: absolute;
                /* size of thumbnail navigator container */
                width: 800px;
                height: 100px;
            }

                .jssort07 .p {
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 99px;
                    height: 66px;
                }

                .jssort07 .i {
                    position: absolute;
                    top: 0px;
                    left: 0px;
                    width: 99px;
                    height: 66px;
                    filter: alpha(opacity=80);
                    opacity: .8;
                }

                .jssort07 .p:hover .i, .jssort07 .pav .i {
                    filter: alpha(opacity=100);
                    opacity: 1;
                }

                .jssort07 .o {
                    position: absolute;
                    top: 0px;
                    left: 0px;
                    width: 97px;
                    height: 64px;
                    border: 1px solid #000;
                    box-sizing: content-box;
                    transition: border-color .6s;
                    -moz-transition: border-color .6s;
                    -webkit-transition: border-color .6s;
                    -o-transition: border-color .6s;
                }

                .jssort07 .pav .o {
                    border-color: #0099ff;
                }

                .jssort07 .p:hover .o {
                    border-color: #fff;
                    transition: none;
                    -moz-transition: none;
                    -webkit-transition: none;
                    -o-transition: none;
                }

                .jssort07 .p.pdn .o {
                    border-color: #0099ff;
                }

                * html .jssort07 .o {
                    /* ie quirks mode adjust */
                    width /**/: 99px;
                    height /**/: 66px;
                }
        </style>
        <!-- thumbnail navigator container -->
        <div u="thumbnavigator" class="jssort07" style="width: 720px; height: 100px; left: 0px; bottom: 0px;">
            <!-- Thumbnail Item Skin Begin -->
            <div u="slides" style="cursor: default;">
                <div u="prototype" class="p">
                    <div u="thumbnailtemplate" class="i"></div>
                    <div class="o"></div>
                </div>
            </div>
            <!-- Thumbnail Item Skin End -->
            
            <!--#region Arrow Navigator Skin Begin -->
            <!-- Help: https://www.jssor.com/development/slider-with-arrow-navigator.html -->
            <style>
                .jssora051 {display:block;position:absolute;cursor:pointer;}
                .jssora051 .a {fill:none;stroke:#fff;stroke-width:360;stroke-miterlimit:10;}
                .jssora051:hover {opacity:.8;}
                .jssora051.jssora051dn {opacity:.5;}
                .jssora051.jssora051ds {opacity:.3;pointer-events:none;}
            </style>
            <div data-u="arrowleft" class="jssora051" style="width:40px;height:40px;top:123px;left:8px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
                <svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
                </svg>
            </div>
            <div data-u="arrowright" class="jssora051" style="width:40px;height:40px;top:123px;right:8px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
                <svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
                </svg>
            </div>
            <!--#endregion Arrow Navigator Skin End -->

        </div>
        <!--#endregion Thumbnail Navigator Skin End -->

    </div>
    <!-- Jssor Slider End -->




      






        <link href="../Design/item_template/css/bootstrap.css" rel="stylesheet" />






        <!--      here    -->

    <!-- Jssor Slider Begin -->
        <script src="../Design/slider-master/js/jquery-1.9.1.min.js"></script>
        <script src="../Design/slider-master/js/jssor.slider.min.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            var options = {
                $AutoPlay: 1,                                    //[Optional] Auto play or not, to enable slideshow, this option must be set to greater than 0. Default value is 0. 0: no auto play, 1: continuously, 2: stop at last slide, 4: stop on click, 8: stop on user navigation (by arrow/bullet/thumbnail/drag/arrow key navigation)
                $Idle: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $Cols is greater than 1, or parking position is not 0)
                $UISearchMode: 0,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).

                $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,              //[Required] Class to create thumbnail navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always

                    $Loop: 1,                                       //[Optional] Enable loop(circular) of carousel or not, 0: stop, 1: loop, default value is 1
                    $SpacingX: 3,                                   //[Optional] Horizontal space between each thumbnail in pixel, default value is 0
                    $SpacingY: 3,                                   //[Optional] Vertical space between each thumbnail in pixel, default value is 0
                    $Cols: 6,                              //[Optional] Number of pieces to display, default value is 1
                    $Align: 253,                          //[Optional] The offset position to park thumbnail,

                    $ArrowNavigatorOptions: {
                        $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                        $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                        $Steps: 6                                       //[Optional] Steps to go for each navigation request, default value is 1
                    }
                }
            };

            var jssor_slider1 = new $JssorSlider$('slider1_container', options);

            /*#region responsive code begin*/
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth)
                    jssor_slider1.$ScaleWidth(Math.min(parentWidth, 720));
                else
                    $Jssor$.$Delay(ScaleSlider, 30);
            }

            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        });
    </script>
    
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField ItemStyle-Height="20" ItemStyle-Width="20" DataField="Room_Type_Name" HeaderText="Room_Type_Name" SortExpression="Room_Type_Name" />
            <asp:BoundField ItemStyle-Height="20" ItemStyle-Width="20" DataField="Room_Name" HeaderText="Room_Name" SortExpression="Room_Name" />
            <asp:BoundField ItemStyle-Height="20" ItemStyle-Width="20" DataField="Area" HeaderText="Area" SortExpression="Area" />
            <asp:ImageField ControlStyle-Width="75" ControlStyle-Height="75" ItemStyle-Height="100" ItemStyle-Width="100" DataImageUrlField="Image_1" DataImageUrlFormatString="../images/{0}" HeaderText="img"></asp:ImageField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <PagerTemplate>
            `
        </PagerTemplate>
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        <br />
          <div class="container">
            <div class="row">
                <asp:Button ID="Button1" CssClass="btn-danger" runat="server" OnClick="LinkButton1_Click" Text="send message to owner" Height="42px" Width="188px" />
            </div>
        </div>



</body>
</html>
