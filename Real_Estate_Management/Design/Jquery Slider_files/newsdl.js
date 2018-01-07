$(document).ready(function(){

	$('input#mail_user').keydown(function(e) {

		if (e.keyCode==13){
			$('#submit_mail').trigger('click');
			return false;
		}
	});


	var ct=0;
	$('#submit_mail').click(function(){

		element_current=$(this);
		if(element_current.hasClass('is_processing')){
			return false;
		}
		var filter=/^[0-9A-Za-z][A-Za-z0-9_.-]*@[A-Za-z0-9_-]+\.[A-Za-z0-9_.]+[A-za-z]$/;
		var email=false;
		_this_d=$(this);
		var $mail_user = $('#mail_user').val();
		var $name_user = $('#name_user').val();
		$.each($('#contactform input').serializeArray(), function(i, field) {
			switch (field.name){
				case 'mail_user':
					if ( ! filter.test(field.value)){
						$('label.msg').text('Please enter a valid address').addClass('error').css({'color':'red','visibility':'visible'});
						$('#mail_user').css('border', '1px solid red');
						$('#submit_mail').removeClass('is_processing');
					}else{
						email=true;
					}
				break;
			}
		});

		if ( email===false ){
			return false;
		}
		console.log(ct);

		if($mail_user != '' && $mail_user != '' && ct==0 ){
			$('#submit_mail').button('loading');
			$.ajax({
				type : "POST" ,
				url : aURL ,
				data : $("#contactform").serialize(),
				success: function(data){
					if (ct===0){
						$('#mail_user').css('border', '1px solid #999');
						if ( _this_d.hasClass('item_mode') ) {
							obj = JSON.parse(data);
							$('label.msg').css('color','#008000').css('visibility','visible').html(obj.resp.description);
						} else {
							$('label.msg').css('color','#008000').css('visibility','visible').html(data);
						}
					}else{
						$('.ts_info_tmp').html(data);
					}
					$('#submit_mail').button('reset');
					ct=1;
				}
			});
		}
	});
});