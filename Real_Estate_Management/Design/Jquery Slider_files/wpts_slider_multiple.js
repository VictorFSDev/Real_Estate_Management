/*===============================================================================
 * ThemeShock Slider Plugin
 * http://wordpressThemeshock.com
 * ================================================= 
 * Copyright 2012 DesignShock, Inc.
 *
 * This plugins is built on top of twiiter bootstrap carousel plugin
 * and also uses the jsuqery gallery plugin from codrops
 * 
 * ======================================================
 *
 *	In order for this plugin to work properly you'll need to include some
 *  scripts and styles 
 *  
 * @requires: bootstrap-carousel.css
 * @requires: bootstrap-carousel.js
 * @requires: bootstrap-transition.js -> not vital but better for smoth transitios
 * @requires: ts-slider.css
 * 
 * For 3D mode
 * @requires: 3d-style.css
 * @requires: modernizr.custom.53451.js
 * @requires: 3dGallery.js
 * 
 *
 * ===================================================== */

 !function ( $ ) {


 	/* TSSLIDER CLASS DEFINITION
 	 ================================ */

 	 var WptsSlider = function( element, options ) {
 	 	this.$element = $(element)
 	 	this.options = options
 	 	this.mainId =  this.$element.find('.carousel').attr('id')
 	 }

 	 WptsSlider.prototype = {
 	 	

 	 	normalMode : function( customizable ) {

 	 		// Apply Carousel to the Element we've the id of
 	 		this.id = this.$element.find('.carousel').attr('id')

 	 		//Get Elements
 	 		this.$leftControl = this.$element.find('[href=#' + this.id + ']:nth-child(2)')
 	 		this.$rightControl = this.$element.find('[href=#' + this.id + ']:nth-child(3)' )

 	 		//Add the Skin Class
 	 		this.$element.addClass(  this.options.skin  )
 	 		this.$element.css('visibility', 'hidden')

 	 		//Add arrow Classes
 	 		this.$leftControl.html('<p class="arrow-inside">‹</p>')
 	 		this.$leftControl.addClass( this.options.arrows )
 	 		this.$leftControl.addClass(  this.options.arrows + '-left' )

 	 		this.$rightControl.html('<p class="arrow-inside">›</p>')
 	 		this.$rightControl.addClass(  this.options.arrows )
 	 		this.$rightControl.addClass(  this.options.arrows + '-right' )
			var autoplay=this.options.autoplay;
			var effects=this.options.effects;

 	 		//if( customizable ) return

 	 		// Carousel Method
			if(effects==''){
				this.carrousel_bosstrap("#"+this.id,autoplay);
			}
 	 		var $mainElement = this.$element

 	 		//Make the element visible only when it is ready
 	 		$(window).load( function(){
 	 			$mainElement.css('visibility', 'visible')
 	 		})
 	 	},
		carrousel_bosstrap:function(element,autoplay){
			jQuery(element).carousel({
				interval: autoplay
			});
		},
 	 	mode3d: function(  ) {

 	 		//Take the id of the children with .carousel class and get its ID
 	 		this.id = this.$element.find('.carousel').attr('id')

 	 		// First child element - .carousel
 	 		this.$inner = $( '#' + this.id )

 	 		// Fetch Images
 	 		this.imagesArray = this.fetchImagesArray( this.id )

 	 		//Reset The Container
 	 		this.$inner.html('')

 	 		// Remove and add classes
 	 		this.$element.removeClass()
 	 		this.$inner.removeClass()
 	 		this.$element.addClass('dg-container')
 	 		this.$inner.addClass('dg-wrapper')

 	 		// Hide the container until we place the elements inside it
 	 		this.$inner.css('visibility', 'hidden')

 	 		this.$inner.attr('id', '')

 	 		// Append the new elements to the containers
 	 		this.appendElements( 'dg-wrapper', this.imagesArray, 'item' ) 
 	 		// Append Arrows
 	 		this.appendElements( '', '', 'arrow'  )
 	 		
 	 		//Add functinality
 	 		var mainElement = this.$element
 	 		$(window).load(function(){
 	 			mainElement.gallery()
 	 		});
 	 	},
		refineslider:function(main_id,element,effects,css_var,autoplay){
			if(jQuery.browser.msie){
				effects='fade';
			}
			//alert(element);
			autoplay_st=(autoplay===0)?false:true;
			jQuery(element).each(function(index, e) {
				jQuery(this).replaceWith('<ul id="'+this.id+'" class="'+this.className+'" >'+jQuery(this).html()+'</ul>');
			});
			jQuery(element+' .item').each(function(index, element) {
				jQuery(this).replaceWith('<li class="'+this.className+'" >'+jQuery(this).html()+'</li>');
			});
		 get_height=jQuery(element+' .item').height();
		 jQuery(element).refineSlide({
					transition : effects,
					autoPlay  : autoplay_st,
					delay : autoplay,
					onInit : function (object_rs) {
					var _this=object_rs;
						jQuery(main_id+' a[data-rs="prev"]').click(function(e) {
							e.preventDefault();
							_this.settings['slider'].prev();
						});
						jQuery(main_id+' a[data-rs="next"]').click(function(e) {
							e.preventDefault();
							_this.settings['slider'].next();				
						});
						jQuery(main_id+' a.ts_refine_st').click(function(e){
							e.preventDefault();
							get_cur_pos=jQuery(this).attr('data-to')-1;
							_this.settings['slider'].transition(get_cur_pos, true);
						});
						jQuery(element+' li[class*="rs-slide-"]').css(css_var);
					},
					onChange:function(){
						jQuery(element+' li[class*="rs-slide-"]').css(css_var);
					},
					afterChange:function(){
						jQuery(element+' li[class*="rs-slide-"]').css(css_var);
					},				
					controls : 'arrows'
				});
			jQuery(element+' .rs-slider li').addClass('item');			
		},
		slider_gallery:function(){
			var effects=this.options.effects;						
			autoplay_smg=this.options.autoplay;
			jQuery('#'+this.mainId).ts_gallery({ stickthumbnails: false,animation:effects,imagedisplaytime:autoplay_smg});
		},
		box_slider:function(){
			var effects=this.options.effects;
			autoplay_smg=this.options.autoplay;					
			var $box = $('#'+this.mainId+' .carousel-inner')
				, $indicators = $('#'+this.mainId+' .ts_refine_st')
				, $effects = $('.effect')
				, slideInterval = autoplay_smg;
			$('#'+this.mainId).on('click', '.ts_refine_st', function (ev) {
				$box.boxSlider('showSlide', $(this).data('slideindex'));
				ev.preventDefault();
			});
			// initialize the plugin with the desired settings
			$box.boxSlider({
					speed: 1000
				, autoScroll: true
				, timeout: slideInterval
				, next: '#'+this.mainId+' a[data-rs="next"]'
				, prev: '#'+this.mainId+' a[data-rs="prev"]'
				, effect:effects
				, blindCount: 10
			});
		}
		,
 	 	customizable : function() {
			/**/

 	 		this.normalMode( customizable = true )
			var effects=this.options.effects;			
			/*refdefine silider*/
			id_inner='#'+this.$element.find('.carousel-inner').attr('id');//id del tercer contenedor
			img_align=this.options.imgAlignment;
			height_slider=this.options.sliderHeight;
			switch(img_align){
				case 'center':
				case 'left':
				case 'right':
					text_align= img_align;
				break;
				default:
					text_align= 'left';	
				break;
			}
			css_var={'height': height_slider
							,'text-align': text_align
							,width:'100%'
							};
			switch(effects){
				case 'random':
				case 'cubeH': 
				case 'cubeV': 
				case 'fade': 
				case 'sliceH': 
				case 'sliceV': 
				case 'slideH': 
				case 'slideV': 
				case 'scale': 
				case 'blockScale':
				case 'kaleidoscope':
				case 'fan': 
				case 'blindH':
				case 'blindV':
					this.refineslider('#'+this.mainId,id_inner,effects,css_var,this.options.autoplay);
					element_find='li[class*="rs-slide-"]';				
				break;
				break;
				case 'fadein':
				case 'blind':
				case 'fallingbars':
				case 'appear': 
				case 'fillin':
				case 'explode': 
				case 'jumble': 
				case 'risingbars': 
				case 'paint': 
				case 'diagonal': 
				case 'crunchingbars':
				case 'slidein':
				case 'scrollVert3d':
				case 'scrollHorz3d':
				case 'scrollVert':
				case 'scrollHorz':
						element_find='.item';
						var this_s=this;
				break;
				default:
					jQuery(id_inner).removeClass('rs-slider');
					element_find='.item';
				break;
			}
			/**/
 	 		/*
 	 		* Makes the slider available for users to put elements in it in
 	 		* a custom way
 	 		* 
 	 		* @param -> sliderHeight .item - height
 	 		*
 	 		*/

 	 		var that = this
 	 		, mainId = this.mainId
 	 		,	$sliderHeight = this.options.sliderHeight
 	 		,   $mainContainer = this.$element
 	 		,	$carouselContainer = $mainContainer.find('.carousel')
 	 		,	$carouselInner = $carouselContainer.find('.carousel-inner')
 	 		,	$carouselItem = $carouselInner.find(element_find)
 	 		,	$carouselImg = $carouselItem.find('img')
 	 		,	$carouselCaption = $carouselItem.find('.carousel-caption')
 	 		,	$captionTitle = $carouselCaption.find('h4')
 	 		,	$captionContent = $carouselCaption.find('p')
 	 		,	$itemHeight	= this.options.sliderHeight
 	 		,	$imgHeight = this.options.imgHeight
 	 		,	$imgWidth = this.options.imgWidth
 	 		,	$textPosition = this.options.textPosition
 	 		,	$textWidth = this.options.textWidth
 	 		,	$imgAlignment = this.options.imgAlignment
 	 		,   $imgMarginTop = this.options.imgMarginTop
 	 		,	$imgMarginBottom = this.options.imgMarginBottom
 	 		,	$imgMarginLeft = this.options.imgMarginLeft
 	 		,	$imgMarginRight = this.options.imgMarginRight
 	 		,	$textBgColor = this.options.textBgColor.split(' ')
 	 		,	$textColor = this.options.textColor
			
			,	$textBold = this.options.textBold
			,	$textItalic = this.options.textItalic
			,	$titleBold = this.options.titleBold
			,	$titleItalic = this.options.titleItalic
			
 	 		,	$showText = this.options.showText
 	 		,	$imgFrame = this.options.imgFrame
 	 		,	$textFrame = this.options.textFrame
 	 		,	$squared = this.options.squared
 	 		,	$textSquarePosition = this.options.textSquarePosition
//			$carouselContainer.find('.carousel-inner').css('background','#000')

 	 		$(window).load(function() {
 	 			

 	 			// Set the items height and content alignment
				$carouselItem.css(css_var);
 	 			$carouselItem.css({
 	 				'height' : $itemHeight
 	 			})

				//alert($titleBold +'--->'+ $titleItalic +'--->'+ $textBold +'--->'+ $textItalic);

 	 			// Set the images width and height
 	 			$carouselImg.css({
 	 					'width' : $imgWidth + '%'
					,	'max-width':'100%'
					, 'max-height':'100%'						
 	 				,   'height' : $imgHeight + '%'
 	 				,   'margin-top': $imgMarginTop
 	 				,	'margin-bottom': $imgMarginBottom
 	 				,	'margin-left': $imgMarginLeft
 	 				,   'margin-right': $imgMarginRight
					,'display':'inline-block'
					,'position':'relative'
 	 			})

 	 			// If showText is false, hide the text
 	 			if( ! $showText ) $carouselCaption.css({ 'visibility': 'hidden' })
				
				if ( $titleBold === 'true' ) $captionTitle.css('font-weight', 'bold');
				if ( $titleItalic === 'true' ) $captionTitle.css('font-style', 'italic');
				if ( $textBold === 'true' ) $captionContent.css('font-weight', 'bold');
				if ( $textItalic === 'true' ) $captionContent.css('font-style', 'italic');

 	 			// Set the title color
 	 			/*	$captionTitle.css({
 	 				'color': '#' + $textColor
 	 			})*/

 	 			// Set the content color
 	 			$captionContent.css({
 	 				'color': '#' + $textColor
 	 			})

 	 			// Set the image frame 
 	 		/*	$carouselImg.css( {'border':'1px solid #FFF','outline':'1px solid #'+$textFrame} );

 	 			// Set the image frame
	 			$carouselCaption.css( {'border':'1px solid #FFF','outline':'1px solid #'+$textFrame});*/

 	 			// If the text is squared
 	 			if( $squared ) {
 	 				$instance = new WptsSlider()
 	 			 	$instance.positionSquaredItems( $carouselCaption, $textWidth, $textSquarePosition, $textBgColor )
					switch(effects){	
						case 'fadein':
						case 'blind':
						case 'fallingbars':
						case 'appear': 
						case 'fillin':
						case 'explode': 
						case 'jumble': 
						case 'risingbars': 
						case 'paint': 
						case 'diagonal': 
						case 'crunchingbars':
						case 'slidein':
							$carouselCaption.css('display','none');						
							$carouselImg.css({'position':'relative',left:$imgMarginLeft}).attr({'width':$imgWidth+'%','height':$imgHeight+'%'});						
							this_s.slider_gallery();
						break; 
						case 'scrollVert3d':
						case 'scrollHorz3d':
						case 'scrollVert':
						case 'scrollHorz':
							this_s.box_slider();
						break;								
					}					
 	 			 	return
 	 			} 

 	 			// Set the caption position
//				console.log( $textPosition );
				
 	 			switch( $textPosition )	{
 	 				
 	 				case 'top' :
 	 					$carouselCaption.css({ 
 	 						'top' : 0, 'left': 0,'bottom':'auto'
 	 					,	'background': 'rgba(' + $textBgColor[0] + ', ' + $textBgColor[1] + ', ' + $textBgColor[2] + ', '  + '.75)'
 	 					})
 	 				break

 	 				case 'bottom' :
 	 				  	$carouselCaption.css({ 
 	 				  		'bottom' : 0, 'left': 0,'top':'auto'
 	 				  	,	'background': 'rgba(' + $textBgColor[0] + ', ' + $textBgColor[1] + ', ' + $textBgColor[2] + ', '  + '.75)'
 	 				  	})
 	 				break

 	 				case 'left' :

 	 					if ( $textWidth < 10 ) $textWidth = 10

 	 					$carouselCaption.css({ 
 	 						'right': 'auto'
 	 					,	'left': 0
	 	 				,	'top': 0
 	 					,	'bottom': 0
 	 					,	'width' : $textWidth + '%'
 	 					,	'background': 'rgba(' + $textBgColor[0] + ', ' + $textBgColor[1] + ', ' + $textBgColor[2] + ', '  + '.75)'
 	 					})
 	 				break

 	 				case 'right' :

 	 					if ( $textWidth < 10 ) $textWidth = 10

 	 					$carouselCaption.css({
							'left':'auto'
 	 					,	'right': 0
 	 					,	'top': 0
 	 					,	'bottom': 0
 	 					,	'width': $textWidth + '%'
 	 					,	'background': 'rgba(' + $textBgColor[0] + ', ' + $textBgColor[1] + ', ' + $textBgColor[2] + ', '  + '.75)'
 	 					 })
 	 				break

 	 				case 'center':

 	 					// Center the text container inside its container
 	 					if ( $textWidth < 10 ) $textWidth = 10

 	 					// No centered 50% top but 0% top
 	 					$carouselCaption.css({
 	 						'top': 0 + '%'
 	 					,	'left': 50 + '%'
 	 					
 	 					})

						var $captionHeight = $carouselCaption.height()
						,	$captionWidth = $carouselCaption.width()


						$carouselCaption.css({
							/*'margin-top': - $captionHeight / 2
						,*/	'margin-left': - parseInt( $textWidth / 2 ) - 2.4  + '%'
						,	'width': $textWidth + '%'
						,	'background': 'rgba(' + $textBgColor[0] + ', ' + $textBgColor[1] + ', ' + $textBgColor[2] + ', '  + '.75)'
						})

 	 				break

 	 			}
				switch(effects){	
					case 'fadein':
					case 'blind':
					case 'fallingbars':
					case 'appear': 
					case 'fillin':
					case 'explode': 
					case 'jumble': 
					case 'risingbars': 
					case 'paint': 
					case 'diagonal': 
					case 'crunchingbars':
					case 'slidein':
						$carouselCaption.css('display','none');					
						$carouselImg.attr({'width':$imgWidth+'%','height':$imgHeight+'%'});
						this_s.slider_gallery();
					break; 
					case 'scrollVert3d':
					case 'scrollHorz3d':
					case 'scrollVert':
					case 'scrollHorz':
						this_s.box_slider();
					break;
				}
 	 		})
 	 	},
 	 	positionSquaredItems: function( element, width, position, bgColor ) {
			
			// No less than 10% width
			if ( width < 10 ) width = 10;

 	 		//alert( 'Position squared items ')
 	 		switch( position ) {
 	 			case 1:
 	 				addSquareCss( element, width, bgColor, 5, '', 'auto', 5, false )
 	 			break
 	 			case 2:
 	 				addSquareCss( element, width, bgColor, 5, 5, 'auto', 'auto', false )
 	 			break
 	 			case 3:
 	 				addSquareCss( element, width, bgColor, 'auto', 5, 5, 'auto', false )
 	 			break
 	 			case 4:
 	 				addSquareCss( element, width, bgColor, 'auto', 'auto', 5, 5, false )
 	 			break
 	 			case 5:
 	 				addSquareCss( element, width, bgColor, '50%', 'auto', 'auto', '50%', true )
 	 			break
 	 		}	 //marginLeft, marginTop,

 	 		function addSquareCss( element, width, textBgColor, a, b, c, d, centered ) {
 	 				
 	 			// Predefined 50% width
 	 			if ( centered ) width = 50

 	 			element.css({
 	 				'top': a
 	 			,	'right': b
 	 			,	'bottom': c
 	 			,	'left': d
 	 			,	'width': width + '%'
 	 			,	'background': 'rgba(' + textBgColor[0] + ', ' + textBgColor[1] + ', ' + textBgColor[2] + ', '  + '.75)'
 	 			})

 	 			// Stop execution if the text is not centered
 	 			if( ! centered ) return

 	 			/* Note: in order for the squared box to be centered, the added 30's had to be remmoved
 	 			var elHeight = element.height() + 30,
 	 				elWidth	 = width + 30
				*/

				var elHeight = element.height(),
					elWidth = width;

 	 			//console.log(  elHeight )
 	 			//'margin-left': - parseInt( elWidth / 2 ) + '%'


 	 			element.css({
 	 				'margin-left': - parseInt( elWidth / 2 ) + -3.5 + '%'
 	 			,	'margin-top': - parseInt( elHeight / 1.7 ) 
 	 			})

 	 		}
 	 	},

 	 	ControlFontFix : function() {

 	 		
 	 		$(window).bind('resize', this.fontFix )
 	 		// FixMe -> There is a problem in detecting the dimensions
 	 		// of the element once it has been resized by javascript
 	 		// we should run the following actions once the element has been loaded
 	 		// not before otherwise it'll be buggy - 
 	 		$(window).bind('load', this.fontFix )
 	 		$(window).load( this.fontFix )

 	 	},

 	 	fontFix : function( ) {

 	 		var mainElement = this.$element
 	 		  , $pTargets    = $('p.arrow-inside')

 	 			$pTargets.each(function(){
 	 				var $pContainer  = $('a.carousel-custom')
 					  , $pContWidth  = $pContainer.width()
 					  ,	$pContHeight = $pContainer.height()
 					  ,	$pHeight     = $pTargets.height()
 				 var line_height=$pContHeight-3;
 					//$('#monitor').text( $pContainer.width() )
 					if( $pContainer.width() > 44 ) {

 						$(this).css({ 
 							'font-size': 39,
							'line-height':line_height+'px'						
													/*'margin-top': - ( $(this).height() / 2 )
							,
 							'margin-left': - ( $(this).width() /2 ) */
 						})

 					}

 					else if( $pContainer.width() <= 44 ) {
 						$(this).css({
		 	 				'font-size': $pContWidth,
							'line-height':line_height+'px'
					/*		'line-height':$(this).height()-3*/
							/*,
		 	 				'margin-top' : - ( $(this).height() / 2 ),
		 	 				'margin-left' : - ( $(this).width() / 2)*/
 	 					})
 					}
 	 			})

 	 	},

 	 	fetchImagesArray : function( containerId ) {

 	 		var imagesArray = new Array()
 	 		    imagesArray[0] = []
 	 		    imagesArray[1] = []
 	 		    imagesArray[2] = []

 	 		$('#' + containerId ).find('.carousel-inner .item img').each(function(){
 	 			
 	 			//Get each image source
 	 			this.imageSource = $(this).attr('src')

 	 			// Get the image alt
 	 			this.imageAlt = $(this).attr('alt')

 	 			// Get the image href
 	 			this.imageHref = $(this).attr('href')

 	 			// Push each source in an array
 	 			imagesArray[0].push( this.imageSource )

 	 			// Push the alt in the alt array
 	 			imagesArray[1].push( this.imageAlt )

 	 			// Push the href in the alt array
 	 			imagesArray[2].push( this.imageHref )


 	 		});

 	 		return imagesArray

 	 	},

 	 	appendElements : function( target, elements, itemsOrArrows ) {

 	 		if( itemsOrArrows == 'item' ) {

 	 			var parentElement = this.$element,
 	 				ind = 0

 	 			$.each(elements[0], function(){

 	 				// Item element
 	 				this.$item = " <a href=" + elements[2][ind]  +"> " + 
										"<img src='" + this + "' alt='image01' >" +
										"<div>" + elements[1][ind] + "</div>" +
									"</a>"
					ind ++
					
					// Append each Item to the contaier
 	 				parentElement.find( '.' + target ).append( $( this.$item ))

 	 			})

 	 		}
 	 		else if ( itemsOrArrows == 'arrow' ) {

 	 			// Control Elements
 	 			this.$arrows = "<nav>" +
							            " <span class='dg-prev'>&lt;</span> " +
							            " <span class='dg-next'>&gt;</span> " +
							         "</nav> "

				// Append control elements to the main container			         
				this.$element.append( $(this.$arrows ))

 	 		}
 	 	}
 	 }


 	 /* SLIDER PLUGIN DEFINITION
 	  * =================================== */

 	  $.fn.tsSlider = function ( option ) {

 	  	return this.each(function () {
 	  		var $this = $(this)
 	  		  , options = $.extend({}, $.fn.tsSlider.defaults, typeof option == 'object' && option)
 	  		  , $instance = new WptsSlider( this, options )
 	  		  if( options.mode3d ) $instance.mode3d()
 	  		  else if ( options.normalMode ) $instance.normalMode(), $instance.ControlFontFix()
 	  		  else if ( options.customizable ) $instance.customizable(), $instance.ControlFontFix()
 	  	})
 	  }

 	  $.fn.tsSlider.defaults = {
 	  	mode3d: false
 	  ,	normalMode: false
 	  , customizable: false
 	  , sliderHeight: 400
 	  , skin: 'ts-border-1'
 	  ,	arrows: 'ts-arrow-1'
 	  , textWidth: 30
 	  , imgMarginTop: 0
 	  , imgMarginBottom: 0
 	  , imgMarginLeft: 0
 	  , imgMarginRight: 0
 	  , textBgColor: '000'
 	  , textColor: 'fff'
 	  ,	showText: false
 	  , imgFrame: ''
 	  ,	textFrame: ''
 	  ,	squared: false
	  , autoplay:false
 	  }

 }(window.jQuery);