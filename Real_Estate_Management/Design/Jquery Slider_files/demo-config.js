jQuery( document ).ready( function( e ) {
	

	jQuery( 'button[name="ts_txt_align"], button[name="ts_img_align"], button[name="ts_sld_thumbs"]' ).click(function( e ) {
		
		e.preventDefault();
		$name = jQuery( this ).attr('name');
		
		jQuery('.block-option button[name="'+$name+'"]').removeClass('active');

		jQuery( this ).addClass( 'active' );

		//jQuery(this).toggleClass('active');
		$val = jQuery( this ).val();
		jQuery( 'input[name="'+$name+'"][value="'+$val+'"]' ).trigger('click');
	
	});

	// Buttons For Data Source
	var btnDataSource = 'button[name="ts_slider"]'

	
	jQuery( btnDataSource ).click( function( e ) {
		e.preventDefault()

		var name = jQuery( this ).attr( 'name' )
		,	val

		jQuery( '.block-option button[name="' + name + '"]' ).removeClass( 'active' )
		jQuery( this ).addClass( 'active' )

		val = $( this ).val()
		jQuery( 'input[name="' + name + '"][value="' + val + '"]' ).trigger( 'click' );
	})

	jQuery( 'button.ts_show_elements' ).click(function(e){
		
		e.preventDefault();

		$name = jQuery(this).attr('name');
		$id = jQuery(this).attr('id');
		jQuery(this).toggleClass('active');
		jQuery('input#'+$id+'[name="'+$name+'"]').trigger('click');

	});
	
	jQuery('.font_style').click(function(e){
		
		e.preventDefault();
		$name = jQuery(this).attr('name');
		$id = jQuery(this).attr('id');
		$relInput = jQuery(this).attr('data-rel_input');
		jQuery(this).toggleClass('active');
		jQuery('input#'+$relInput).trigger('click');

	});
	
	/* Switch taxonomies */
	jQuery( '#ts_sld_sht' ).bind( 'keyup change blur click', function( e ) {
		
		var this_form = jQuery( this ).serializeArray();
		txt_sht='[ts_sldshock ';
		// Loop through all the fields on the form
		jQuery( this_form ).each( function( index, field ) {

			switch( field.name ) {
				case 'ts_slider':
					txt_sht += 'type="' + field.value+'" ';
					
					switch( field.value ) {
						
						case 'category':
							txt_sht += 'value="' + jQuery( '#category_item' ).val() + '" ';
							break;

						case 'taxonomy':
							txt_sht += 'value="'+ jQuery( '#taxonomy' ).val() + '" ';
							break;

						case 'posttype':
							txt_sht+='value="' + jQuery( '#posttype' ).val()+'" ';
							break;

						case 'ts_sld_cpt':
							txt_sht += 'value="slides-' + jQuery( '#custom-slides' ).val() + '" ';
							break;

						case 'rss':
							txt_sht +='value="' + jQuery( '#rss-source' ).val()+'" ';
							break;

						case 'youtubepl':
							txt_sht+='value="http://gdata.youtube.com/feeds/api/playlists/' + jQuery('#youtube-playlist').val() +'/" ';
							break;

						case 'twitter':
							txt_sht+='value="http://api.twitter.com/1/statuses/user_timeline.rss?screen_name=' + jQuery( '#twitter-username' ).val()+'" ';
							break;

						case 'flickr':
							flick_id = jQuery('#flickr-id').val();

							txt_sht += 'value="http://api.flickr.com/services/feeds/photos_public.gne?id='+flick_id+'&format=rss_200" ';
							break;

						case 'instagram':
							var value_tag = jQuery('#instagram').val();
							txt_sht += 'value="http://instagram.com/tags/' + value_tag.replace(' ','_')+'/feed/recent.rss" ';
							break;											
					}

				break;

				case 'ts_sld_mode':
					txt_sht+='sld_mode="'+ field.value +'" ';
				break;
				case 'ts_autoplay':
					txt_sht+='autoplay="'+field.value+'" ';
				break;
				case 'ts_bg':
					txt_sht+='background_item="'+field.value+'" ';
				break;
				case 'ts_img_w':
					txt_sht+='img_w="'+field.value+'" ';
				break;
				case 'ts_img_h':
					txt_sht+='img_h="'+field.value+'" ';
				break;
				case 'txt_width':
					txt_sht+='ts_txt_w="'+field.value+'" ';
				break;
				case 'ts_imgm_t':
					txt_sht+='margin_top="'+field.value+'" ';
				break;
				case 'ts_imgm_l':
					txt_sht+='margin_left="'+field.value+'" ';
				break;
				case 'ts_squared':
					txt_sht+='squared="'+field.value+'" ';
				break;
				case 'ts_squared_pos':
					txt_sht+='sq_pos="'+field.value+'" ';
				break;				
				case 'ts_title':
					txt_sht+='title="'+field.value+'" ';
				break;
				case 'ts_date':
					txt_sht+='date="'+field.value+'" ';
				break;
				case 'ts_author':
					txt_sht+='author="'+field.value+'" ';
				break;
				case 'ts_text':
					txt_sht+='text="'+field.value+'" ';	
				break;
				case 'ts_txt_align':
					txt_sht+='txt_align="'+field.value+'" ';
				break;
				case 'ts_img_align':
					txt_sht+='img_align="'+field.value+'" ';
				break;
				case 'ts_txt_bk_color':

					/*
						R=hexToR(field.value)+' ';
						G=hexToG(field.value)+' ';
						B=hexToB(field.value);
					*/
					txt_sht+='txt_bk="'+field.value+'" ';
				break;
				case 'ts_title_color':
					txt_sht+='title_color="'+cutHex(field.value)+'" ';
				break;
				case 'ts_title_size':
					txt_sht+='title_size="'+field.value+'" ';				
				break;
				case 'ts_title_bold':
					txt_sht+='title_bold="'+field.value+'" ';				
				break;
				case 'ts_title_italic':
					txt_sht+='title_italic="'+field.value+'" ';				
				break;
				case 'ts_txt_fontsize':
					txt_sht+='txt_size="'+field.value+'" ';
				break;
				case 'ts_txt_color':
					txt_sht+='txt_color="'+cutHex(field.value)+'" ';
				break;
				case 'ts_txt_bold':
					txt_sht+='txt_bold="'+field.value+'" ';				
				break;
				case 'ts_txt_italic':
					txt_sht+='txt_italic="'+field.value+'" ';				
				break;
				case 'ts_skin':
					txt_sht+='skin="'+field.value+'" ';
				break;
				case 'ts_arrows':
					txt_sht+='arrows="'+field.value+'" ';
				break;
				case 'sld_number'	:
					txt_sht+='sld_number="'+field.value+'" ';
				break;
				case 'ts_title_font'	:
					txt_sht+='title_font="'+field.value+'" ';
				break;
				case 'ts_txt_font':
					txt_sht+='txt_font="'+field.value+'" ';
				break;
				case 'ts_slide_size':
					if(field.value==='responsive'){
						var hr=jQuery('input[name="ts_res_size_h"]').val();
						txt_sht+='size="'+field.value+'-'+hr+'" ';
					}else{
						var h=jQuery('input[name="ts_size_h"]').val();
						var w=jQuery('input[name="ts_size_w"]').val();

						txt_sht+='size="'+w+'-'+h+'" ';
					}
				break;

				case 'ts_sld_thumbs':
					txt_sht+='thumbs="'+field.value+'" ';
					break;

				case 'ts_effects_sld':
					txt_sht += 'effect="' + field.value + '" ';
					break;

			}
		});

		txt_sht += ']';

		jQuery('textarea[name="ts_generate_shortcode"]').val( txt_sht );

  });
	jQuery('div.ts_opt_images img').click(function(e) {
		jQuery(this).prev().trigger('click');
  });
	jQuery('textarea[name="ts_generate_shortcode"]').click(function(e) {
		jQuery(this).select();
	});
	jQuery.farbtastic('#ts_ilctabscolorpicker_1',function(color){
		jQuery("#ts_color_1").val(color);		
		jQuery("#ts_txt_colorpick").val(color);
		jQuery('#ts_txt_colorpick').attr('checked',true);
		jQuery("#ts_txt_colorpick").trigger('change');
	});
	jQuery.farbtastic('#ts_ilctabscolorpicker_2',function(color){
		jQuery("#ts_color_2").val(color);		
		jQuery("#ts_color_2").trigger('change');
	});
	jQuery.farbtastic('#ts_ilctabscolorpicker_3',function(color){
		jQuery("#ts_color_3").val(color);		
		jQuery("#ts_color_3").trigger('change');
	});
	jQuery.farbtastic('#ts_ilctabscolorpicker_4',function(color){
		jQuery("#ts_color_4").val(color);
		jQuery("#ts_colorpick").val(color);
		jQuery('#ts_colorpick').attr('checked',true);
		jQuery("#ts_colorpick").trigger('change');
	});	
	jQuery('#ts_taxonomy_item').change(function(e) {
		jQuery('.ts_cat_active').removeClass('ts_cat_active').addClass('ts_cat_inactive');
		jQuery('#'+jQuery(this).val()).removeClass('ts_cat_inactive').addClass('ts_cat_active');
	});
	jQuery('#ts_opt_image').ddslick({
		data: ddData_bk,
		width: 300,
		height:400,
		imagePosition: "left",
		selectText: "Select your pattern",
		onSelected: function(data){
			jQuery("#ts_bg").val(data.selectedData.value);
			jQuery("#ts_bg").attr('checked',true);
			jQuery("#ts_bg").trigger('change');
			//console.log(data);
		}
	});
	jQuery('#ts_txt_bk').ddslick({
		data: ddData_bk,
		width: 300,
		height:400,
		imagePosition: "left",
		selectText: "Select your pattern",
		onSelected: function(data){
			jQuery("#ts_txt_bg").val(data.selectedData.value);
			jQuery("#ts_txt_bg").attr('checked',true);
			jQuery("#ts_txt_bg").trigger('change');
			//console.log(data);
		}
	});	
	jQuery('#ts_frm_txt').ddslick({
		data: ddData_frm_txt,
		width: 300,
		height:400,
		imagePosition: "left",
		selectText: "Select your skin",
		defaultSelectedIndex:6,		
		onSelected: function(data){
			var input=jQuery("input[name='ts_frm_txt']");
			input.val(data.selectedData.value);
			input.trigger('change');
			//console.log(data);
		}
	});
	jQuery('#ts_skin').ddslick({
		data: ddData_skin,
		width: 300,
		height:400,
		imagePosition: "left",
		selectText: "Select your skin",
		defaultSelectedIndex:18,		
		onSelected: function(data){
			var input=jQuery("input[name='ts_skin']");
			input.val(data.selectedData.value);
			input.trigger('change');
			//console.log(data);
		}
	});
	jQuery('#ts_skin img').css({'max-width':'120px','height':'60px'});
	jQuery('#ts_arrows').ddslick({
		data: ddData_arrows,
		width: 300,
		height:400,
		imagePosition: "left",
		selectText: "Select your arrow",
		defaultSelectedIndex:3,
		onSelected: function(data){
			var input=jQuery("input[name='ts_arrows']");
			input.val(data.selectedData.value);
			input.trigger('change');
		}
	});
	
	/*HEXA to rgb*/
	function hexToR( h ) {return parseInt((cutHex(h)).substring(0,2),16)}
	function hexToG( h ) {return parseInt((cutHex(h)).substring(2,4),16)}
	function hexToB( h ) {return parseInt((cutHex(h)).substring(4,6),16)}
	function cutHex( h ) {return (h.charAt(0)=="#") ? h.substring(1,7):h}	
});