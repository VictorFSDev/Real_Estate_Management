jQuery(document).ready(function(){
	jQuery('.btn_download_m').click(function(e){
		e.preventDefault();

		url = jQuery(this).data('url');
		tb_show('' ,url , null);
		w=jQuery('#TB_ajaxContent').width()+30;
		jQuery('#TB_ajaxContent').css({ 'padding':'0 0 10px', 'width': w+'px'});
		jQuery('#TB_closeAjaxWindow').css({ 'position' : 'absolute', 'right':0,'top':0, 'z-index':10 });
		jQuery('#TB_title').css(	{ 'height': '10px', 'border': 'none'});
		jQuery('.tb-close-icon:before').css({ 'font-size': '29px' });
	});
});