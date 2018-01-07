(function($) {
    $.fn.extend({
        ts_gallery: function(options) {
            var settings = $.extend({
                random: false, 
								autoscroll: false,
                circular: false, 
								masked: false,
                animation: 'fillin',
                noofthumbnails: 6,
                thumbnailscrollspeed: 2000,
                animationspeed: 500,
                stickthumbnails: true,
                imagedisplaytime: 33000
            }, options);
            return this.each(function() {
                var gallerywrapper;
                var images;
                var thumbnails;
                var currentImageIndex = 0;
                var previousImageIndex = 0;
                var currentImage = null;
                var previousImage = null;
								var currentImage_tmp=null;
                var previousImage_tmp = null;								
                var preview;
                var bottom;
                var shortcontainer;
                var longcontainer;
                var leftcontainer;
                var rightcontainer;
                var middlecontainer;
                var thumbnailcontainer;
                var total = 0;
                var index = 0;
                var start = 0;
                var current = $('<div/>');
                var noOfBlocks;
                var interval;
                var display = settings.noofthumbnails
                var speed = settings.thumbnailscrollspeed;
                var top;
                var left;
                var height;
                var containerHeight;
                var containerWidth;
                var direction = "forward";
                var navDirection = "forward";
                var scrolling = true;
                var animating = false;
                var previewWidth = 0;
                var endindex = 0;
                var startindex = 0;
                var src;
                var animationwrapper;
                var animationInterval;
                var isLoaded = false;
				var thumb=false;
                var animationList = ['fadein', 'blind', 'fallingbars', 'appear', 'fillin', 'explode', 'jumble', 'risingbars', 'paint', 'diagonal', 'crunchingbars', 'slidein'];
                gallerywrapper = $(this).addClass('min-gallery');
                var bigcontent = gallerywrapper.find('div.ts_border');
                var bigImages = gallerywrapper.find('div.ts_border img');
                thumbnails = gallerywrapper.find('img');
                bigImages.remove();
                preview = $('<div/>').addClass('preview');
                bottom = $('<div/>').addClass('bottom');
                shortcontainer = $('<div/>').addClass('short');
                longcontainer = $('<div/>').css('display', 'none').addClass('long');
                leftcontainer = $('<div/>').addClass('left');
                rightcontainer = $('<div/>').addClass('right');
                middlecontainer = $('<div/>').addClass('middle');
                if (settings.stickthumbnails) {
                    $('<div/>').html('close').addClass('close').click(function() {
                        shortcontainer.css('display', ''); isLoaded = false; autoAnimate(); longcontainer.stop(false, true).animate({ marginTop: $('.bottom').height() }, settings.animationspeed, function() { $(this).css('display', 'none'); });
                    }).appendTo(longcontainer);
                }
                bigImages.each(function(index) {
                    $(this).addClass('' + (index + 1));
                });
								preview.appendTo(gallerywrapper.children('.carousel-inner')).attr('style',jQuery(bigcontent).parent('.item').attr('style'));
//                gallerywrapper.append(preview); 
				longcontainer.append($('<div/>').addClass('clear-fix'));
                var slidercontents = $('<div/>').addClass('thumbnails-contents');
                var backbutton = jQuery('#'+this.id+' a[data-rs="prev"]');//jQuery('<div/>').addClass('gallery-nav-left');
                var forwardbutton = jQuery('#'+this.id+' a[data-rs="next"]');;
				jQuery('#'+this.id+' a.ts_refine_st').click(function(e){
					e.preventDefault();
					if (!animating) {
						currentImageIndex = jQuery(this).attr('data-to')-1;//parseInt($(this).attr('class').split(' ')[0]) - 1;
						previousImageIndex = preview.find('div.previous').prevAll().length;
						if (currentImageIndex != previousImageIndex){
							stopAutoAnimate();
							showImage();
							setNextImage();
							autoAnimate();
							thumb=true;
						}
					}
                });
                function stopAnimate() {
                    scrolling = false;
                    clearTimeout(interval);
                    thumbnailcontainer.children().clearQueue();
                    thumbnailcontainer.children().stop(false, true);
                }
                function animate() {
                    clearTimeout(interval);
                    if (settings.autoscroll)
                        interval = setTimeout(changeSlide, settings.delay);
                }
                function changeSlide() {
                    if (direction == "forward") {
                        if (index <= 0) index = noOfBlocks;
                    } else {
                        if (index >= noOfBlocks - 1) { index = -1; }
                    }
                    showThumbs();
                    interval = setTimeout(changeSlide, settings.delay);
                }
                function getDimensions(value) {
                    return value + 'px';
                }
                function showThumbs() {
                    scrolling = true;
                    var current = $('.visible', slidercontents);
                    var scrollSpeed = speed;
                    if (direction == "forward") {
                        index--;
                        if (index >= 0) {
                            $('>div:eq(' + index + ')', slidercontents).css('left', getDimensions(containerWidth)).removeClass('hidden').addClass('visible').stop(false, true).animate({ 'left': '-=' + getDimensions(containerWidth) }, scrollSpeed,
                         function() {
                             scrolling = false;
                             currentImageIndex = parseInt($(this).find('img:eq(0)').attr('class').split(' ')[0]) - 1;
                             previousImageIndex = preview.find('img.previous').prevAll().length;
                             showImage();
                         });
                            current.stop(false, true).animate({ 'left': '-=' + getDimensions(containerWidth) }, scrollSpeed, function() {
                                $(this).removeClass('visible').addClass('hidden');
                                $(this).css('left', left);
                                scrolling = false;
                            });
                        } else index = 0;
                    }
                    else if (direction == "backward") {
                        index++;
                        if (index < noOfBlocks) {
                            $('>div:eq(' + index + ')', slidercontents).removeClass('hidden').addClass('visible').css({
                                'left': getDimensions(-containerWidth)
                            }).stop(false, true).animate({ 'left': '+=' + getDimensions(containerWidth) }, scrollSpeed,
                        function() {
                            scrolling = false;
                            currentImageIndex = parseInt($(this).find('img:eq(0)').attr('class').split(' ')[0]) - 1;
                            previousImageIndex = preview.find('img.previous').prevAll().length;
                            showImage();
                        });

                            current.stop(false, true).animate({ 'left': '+=' + getDimensions(containerWidth) }, scrollSpeed,
                            function() {
                                $(this).removeClass('visible').addClass('hidden');
                                $(this).css('left', getDimensions(-containerWidth));
                                scrolling = false;
                            });
                        } else index = noOfBlocks - 1;
                    }
                }
                //end temp
                $('> div > div', slidercontents).css('cursor', 'pointer');
                index = 0;
                $('> div', slidercontents).addClass('hidden');
                $('> div > div', slidercontents).css('display', '');
                left = $('> div:eq(' + index + ')', slidercontents).css('left');
                containerWidth = slidercontents.width();
                $('> div', slidercontents).css('left', '-' + containerWidth + 'px');
                // $('> div:eq(' + index + ')', slidercontents).css({ left: 0 }).addClass('visible').removeClass('hidden'); 
                scrolling = false;
                if (settings.autoscroll)
                    animate();
                

                //End Thumbnail slider contents

                var loadcounter = 0;
//								alert('aa');

                for (var i = 0; i < bigcontent.length; i++) {
									
										var src=$(bigImages[i]).attr('src');
										current_width=0;
                    var img = $('<img/>').attr('src', src);

                    img.load(function() {
                        loadcounter++;
                        if (loadcounter == bigImages.length) {
                            preview.find('img').remove();
                            $.each(bigImages, function(index, image) {
							 get_bk=jQuery(bigcontent[index]).attr('style');
							 //console.log(jQuery(bigcontent[index]).attr('style'),'asasa');
							 // alert(get_bk)
                              preview.append($('<div/>').append($('<img/>').addClass($(image).attr('class')).attr({'src' : $(image).attr('src'),'width':$(image).attr('width'),'height':$(image).attr('height'),'style':$(image).attr('style')})).append(jQuery(bigcontent[index]).html()).attr('style',get_bk).css({'height':'100%','width':'100%'}).addClass($(image).attr('class')).attr('ct_data','main'));
                            });
														
                            images = preview.find('div[ct_data="main"]');
                            images.css('z-index', '98');
														images.find('.carousel-caption').show();
                            preview.find('div:eq(0)').css('z-index', '101')
                            //preview.find('div:gt(0)').css('z-index', '98').css('display', '');
                            currentImageIndex = 0;
							previousImageIndex = images.length;
                            autoAnimate();
                        }
                    });
                }

								
				//	console.log(this.id);
                //var shortbackward = $('<div/>').addClass('gallery-nav-left');
                //var shortforward =  $('<div/>').addClass('gallery-nav-right');
//                shortbackward.html('&nbsp;');
                //shortforward.html('&nbsp;');
                var shortthumbnailcontainer = $('<div/>').addClass('short-thumbnail-container');
                //middlecontainer.append(shortbackward).append(shortthumbnailcontainer).append(shortforward);
                for (var i = 0; i < 9; i++) {
                    shortthumbnailcontainer.append($('<div/>').addClass('thumbnail-button'));
                }
                shortthumbnailcontainer.click(function() {
                    stopAutoAnimate();
                    longcontainer.css('display', '').stop(false, true).animate({ marginTop: 0 }, settings.animationspeed, function() {
                        shortcontainer.css('display', 'none');
                        scrolling = false;
                        index = parseInt(currentImageIndex / settings.noofthumbnails) + 1;
                        //if (index > 1)
                        showThumbs();
                    });

                });
				forwardbutton.click(function(e) {
	                e.preventDefault();
                    if (!animating) {
                        navDirection = "forward";
						stopAutoAnimate();
						if (thumb==true){
							setNextImage();
							thumb=false;
						}
                        isLoaded = false;
                        autoAnimate();
						//console.log(currentImageIndex);
                       // showImage(); //next image will be automatically displayed on next timer call
                    }
                });
                backbutton.click(function(e) {
					e.preventDefault();
                    if (!animating) {
                        navDirection = "backward";
						stopAutoAnimate();						
						if (thumb==true){
							setNextImage();
							thumb=false;
						}
                        //setNextImage();
                        //showImage();
                        isLoaded = false;
                        autoAnimate();
						//console.log(currentImageIndex);						
			
                    }
                });				
/*                shortbackward.click(function() {
                    if (!animating) {
                        navDirection = "backward";
                        //setNextImage();
                        //showImage();
                        stopAutoAnimate();
                        isLoaded = false;
                        autoAnimate();
                    }
                });
                shortforward.click(function() {
                    //stopAutoAnimate();
                    if (!animating) {
                        navDirection = "forward";
                        //setNextImage();
                        stopAutoAnimate();
                        isLoaded = false;
                        autoAnimate();
                        //  showImage(); next image will be automatically displayed on next timer call
                    }
                });*/
                function setNextImage() {
                    if (navDirection == "forward") {
                        if (currentImageIndex < images.length - 1)
                            currentImageIndex++;
                        else currentImageIndex = 0;
                        previousImageIndex = currentImageIndex - 1;
                        if (previousImageIndex == -1)
                            previousImageIndex = images.length - 1;
                    }
                    else if (navDirection == "backward") {
                        if (currentImageIndex > 0) currentImageIndex--;
                        else currentImageIndex = images.length - 1;
                        previousImageIndex = currentImageIndex + 1;
                        if (previousImageIndex == images.length)
                            previousImageIndex = 0;
                    }
                }
                function stopAutoAnimate() {
                    clearInterval(animationInterval);
                    animating = false;
                    scrolling = false;
                }
                function autoAnimate() {
                    if (!isLoaded) { isLoaded = true; showImage(); setNextImage(); }
                    animationInterval = setInterval(function() { showImage(); setNextImage(); }, settings.imagedisplaytime);
                }
                function getAnimataion() {
                    if (settings.random)
                        return animationList[Math.floor(Math.random() * 12)];
                    else
                        return settings.animation;
                }
                function showImage() {
                    if (!animating) {
                        animating = true;
                        var animation = getAnimataion();
                        currentImage = $(images.find('img')[currentImageIndex]);
                        previousImage = $(images.find('img')[previousImageIndex]);
                        currentImage_tmp = $(images[currentImageIndex]);
                        previousImage_tmp = $(images[previousImageIndex]);		
                        $('.anim-wrapper', gallerywrapper).remove();
                        images.removeClass('previous');
                        src = currentImage.attr('src');
												currentImage_tmp.addClass('previous').attr('previous');
												currentImage=currentImage_tmp;
												previousImage=previousImage_tmp;
												//console.log(currentImage);
												var position_t;
												var anim_css={ width: preview.find('img:eq(0)').width(), height: preview.find('img:eq(0)').height(), position: 'absolute', zIndex: 101 };
												switch(preview.find('img:eq(0)').css('text-align')){
													case 'left':
														anim_css['left']=(parseInt(preview.find('img:eq(0)').css('left'))+parseInt(preview.find('img:eq(0)').css('margin-left')));
														//console.log(preview.find('img:eq(0)').css('left'),-(parseInt(preview.find('img:eq(0)').css('left'))));
														anim_css['margin-top']=preview.find('img:eq(0)').css('margin-top');	
													//	anim_css['margin-left']=preview.find('img:eq(0)').css('left');
													break;													
													case 'center':
														anim_css['left']=50+'%';
														//anim_css['margin-left']=-((preview.find('img:eq(0)').width() / 2)+(-parseInt(preview.find('img:eq(0)').css('left')))+5);
														//console.log((preview.find('img:eq(0)').width() / 2),(-parseInt(preview.find('img:eq(0)').position().left)+10));
														//anim_css['margin-left']=(-(preview.find('img:eq(0)').width() / 2)+(-parseInt(preview.find('img:eq(0)').position().left)+10));
														left_pos=-(preview.find('img:eq(0)').width() / 2);
														get_margin=preview.find('img:eq(0)').css('margin-left');
														margin_final=left_pos+(parseInt(get_margin)+parseInt(get_margin)/2)
														//console.log(margin_final);
														anim_css['margin-left']=margin_final;
														
														//anim_css['left']=preview.find('img:eq(0)').position().left;
														//
														//console.log(preview.find('img:eq(0)').position(),preview.find('img:eq(0)').width() / 2,preview.find('img:eq(0)').width(),preview.find('img:eq(0)').css('left') );
													//alert((-parseInt(preview.find('img:eq(0)').css('left')))+5)
														anim_css['margin-top']=preview.find('img:eq(0)').css('margin-top');														
													break;
													case 'right':
														anim_css['left']=parseInt(preview.find('img:eq(0)').position().left)+1;
														anim_css['margin-top']=preview.find('img:eq(0)').css('margin-top');
//														anim_css['margin-left']=preview.find('img:eq(0)').css('left');
													break;
												}
												//alert(preview.find('img:eq(0)').css('text-align'));

												
                        animationwrapper = $('<div/>').addClass('anim-wrapper').css(anim_css);

                        if (animation != 'fadein'){
                            preview.append(animationwrapper);
												}
                        if (animation == 'fadein') {
                            fade();
                        }
                        else if (animation == 'blind') {
                            blind();
                        }
                        else if (animation == "fallingbars") {
                            fallingbars();
                        }
                        else if (animation == "risingbars") {
                            risingbars();
                        }
                        else if (animation == "crunchingbars") {
                            crunchingbars();
                        }
                        else if (animation == "slidein") {
                            slidein();
                        }
                        else if (animation == "fillin") {
                            randomBars();
                        }
                        else if (animation == "appear") {
                            appear();
                        }
                        else if (animation == "explode") {
                            explode();
                        }
                        else if (animation == "jumble") {
                            jumble();
                        }
                        else if (animation == "diagonal") {
                            diagonal();
                        }
                        else if (animation == "paint") {
                            paint();
                        }
	

                        /*leftcontainer.html($(images[currentImageIndex]).attr('alt'));
                        rightcontainer.html('' + (currentImageIndex + 1) + ' of ' + images.length + '');*/
                    }
										preview.find('div[ct_data]').each(function(index, element) {
											if (jQuery(this).hasClass('previous')){
												jQuery(this).find('.carousel-caption').show();			
											}else{
												jQuery(this).find('.carousel-caption').hide();																		
											}
										});					
                }
                function diagonal() {
                    var w = preview.find('img:eq(0)').width() / 6;
                    var h = preview.find('img:eq(0)').height() / 6;
                    for (var row = 0; row < 6; row++) {
                        for (var col = 0; col < 6; col++) {
                            $('<div/>').addClass('dg').css({ width: w, height: h, left: Math.ceil(col * w), top: Math.ceil(row * h), position: 'absolute', opacity: 0 })
                                .css({ 'background-image': 'url(' + src + ')','background-size':preview.find('img:eq(0)').width()+'px '+preview.find('img:eq(0)').height()+'px', 'background-position': '' + (-(col * w)) + 'px ' + (-(row * h)) + 'px' })
                                .appendTo(animationwrapper);
                        }
                    }
                    var compeleteCount = 0;
                    var rows = 6;
                    var cols = 6;
                    var elementstoanimate;
                    var speed = settings.animationspeed / 18;
                    var diagonal = new Array(17);
                    for (var i = 0; i < rows + cols - 1; i++) {
                        diagonal[i] = new Array();
                        for (var j = Math.min(rows, i + 1) - 1; j >= Math.max(0, i - cols + 1); j--) {
                            diagonal[i].push((j * cols) + i - j);
                        }
                    }
                    animateDiagonally(diagonal, speed, 0);
                }
                function animateDiagonally(diagonal, speed, i) {
                    var running = true;
                    if (diagonal[i]) {
                        for (var count = 0; count < diagonal[i].length; count++) {
                            var n = diagonal[i][count];
                            $('.anim-wrapper .dg:eq(' + n + ')', gallerywrapper).stop(false, true).animate({ opacity: 1 }, speed, function() {
                                if (running) {
                                    animateDiagonally(diagonal, speed, ++i);
                                    if (i == 11) {
                                        currentImage.addClass('previous').css('z-index', '100').fadeIn("slow", function() {
                                            previousImage.css('z-index', '98');
																						

                                        }); 
	                                    animationwrapper.fadeOut("fase", function() { $(this).remove(); });
																			animating = false;
                                    }
                                    running = false;
                                }
                            });
                        }
                    }
                }
                function jumble() {
                    var w = preview.find('img:eq(0)').width() / 4;
                    var h = preview.find('img:eq(0)').height() / 4;
                    var l = 0;
                    var t = 0;
                    for (var row = 0; row < 4; row++) {
                        if (row == 0) { l = 0; t = 0; }
                        if (row == 1) { l =preview.find('img:eq(0)').width() - w; t = 0 }
                        if (row == 2) { l = 0; t = preview.find('img:eq(0)').height() - h; }
                        if (row == 4) { l = preview.find('img:eq(0)').width() - w; t = preview.find('img:eq(0)').width() - h }
                        l = Math.ceil(l);
                        t = Math.ceil(t);
                        for (var col = 0; col < 4; col++) {
                            $('<div/>').css({ width: w, height: h, left: l, top: t, opacity: 0, position: 'absolute' })
                                .css({'background-image': 'url(' + src + ')','background-size':preview.find('img:eq(0)').width()+'px '+preview.find('img:eq(0)').height()+'px'}).addClass(" " + (col * w) + "").addClass("" + (row * h) + "").css('background-position', '' + (-(col * w)) + 'px ' + (-(row * h)) + 'px')
                                .appendTo(animationwrapper);
                        }
                    }

                    var parts = animationwrapper.find('div');
                    var completeCount = 0;
                    var speed = settings.animationspeed;
                    var rParts = shuffle(parts);
                    $.each(rParts, function(index, part) {
                        var el = $(part);
                        var l = parseFloat(el.attr('class').split(' ')[0]);
                        var t = t = parseFloat(el.attr('class').split(' ')[1]);

                        el.stop(false, true).animate({ left: l, top: t, opacity: 1 }, speed, function() {
                            ++completeCount;
                            if (completeCount == parts.length) {
                                currentImage.addClass('previous').css('z-index', '100').fadeIn("slow", function() {
                                    previousImage.css('z-index', '98');
                                    animationwrapper.fadeOut("fase", function() { $(this).remove(); });
                                    animating = false;
                                });
                            }
                        });
                    });
                }
                function randomSort(a, b) {
                    return (parseInt(Math.random() * 10) % 2);
                }

                function shuffle(array) {
                    var tmp, current, top = array.length;

                    if (top) while (--top) {
                        current = Math.floor(Math.random() * (top + 1));
                        tmp = array[current];
                        array[current] = array[top];
                        array[top] = tmp;
                    }
                    return array;
                }
                function fade() {
                    images.removeClass('previous');
                    currentImage.css({ 'z-index': '101', opacity: 0 });
                    currentImage.stop(true, true).animate({ opacity: 1 }, settings.animationspeed, function() {
                        if (previousImage != null) {
                            previousImage.css('z-index', '98');
                        } $(this).addClass('previous');
                        animating = false;
                    });
                }
                function blind() {
                    for (var i = 0; i < 12; i++) {
												part=(i * preview.find('img:eq(0)').width() / 12);
                        $('<div/>').css({ width: 0, height: preview.find('img:eq(0)').height(), left: Math.ceil(part), position: 'absolute' }).css({ 'background-image': 'url(' + src + ')', 'background-position': '' + (-(part)) + 'px 0px','background-size':preview.find('img:eq(0)').width()+'px '+preview.find('img:eq(0)').height()+'px'}).appendTo(animationwrapper);
												//.html('<img src="'+src+'" width="100%" height="100%"')
                    }
                    animationwrapper.find('div').animate({ width:preview.find('img:eq(0)').width() / 12 }, settings.animationspeed, function() {
                        currentImage.fadeIn("slow", function() { $(this).css('z-index', '100'); });
                        previousImage.css('z-index', '98');
 	                      animationwrapper.fadeOut("fase", function() { $(this).remove(); });
                        animating = false;

                    });
                }
                function fallingbars() {
                    for (var i = 0; i < 12; i++) {
                        $('<div/>').css({ width: Math.ceil(preview.find('img:eq(0)').width() / 12),
                            height: preview.find('img:eq(0)').height(),
                            marginTop: -(preview.find('img:eq(0)').height()),
                            left: Math.ceil((i * preview.find('img:eq(0)').width() / 12)),
                            position: 'absolute',
                            backgroundImage: 'url(' + src + ')',
                            backgroundPosition: '' + (-(i * preview.find('img:eq(0)').width()/ 12)) + 'px 0px',
														'background-size':preview.find('img:eq(0)').width()+'px '+preview.find('img:eq(0)').height()+'px',
                            opacity: 0
                        }).appendTo(animationwrapper);
                    }
                    var parts = animationwrapper.find('div');
                    var speed = settings.animationspeed;
                    var completeCount = 0;
                    for (var count = 0; count < parts.length; count++) {
                        speed -= 50;
                        $(parts[count]).stop(false, true).animate({ marginTop: 0, opacity: 1 }, speed, function() {
                            ++completeCount;
                            if (completeCount == parts.length) {
                                currentImage.fadeIn("slow", function() { $(this).css('z-index', '100'); });
                                previousImage.css('z-index', '98');
                                animationwrapper.fadeOut("fase", function() { $(this).remove(); });
                                animating = false;
                            }
                        });
                    }
                }
                function risingbars() {
//										console.log(preview.find('img:eq(0)').width());									
                    for (var i = 0; i < 12; i++) {
                        $('<div/>').css({ width: Math.ceil(preview.find('img:eq(0)').width() / 12),
                            height: preview.find('img:eq(0)').height(),
                            marginTop: (preview.find('img:eq(0)').height()),
                            left: Math.ceil((i * preview.find('img:eq(0)').width() / 12)),
                            position: 'absolute',
                            backgroundImage: 'url(' + src + ')',
                            backgroundPosition: '' + (-(i * preview.find('img:eq(0)').width() / 12)) + 'px 0px',
														'background-size':preview.find('img:eq(0)').width()+'px '+preview.find('img:eq(0)').height()+'px',
                            opacity: 0
                        }).appendTo(animationwrapper);
                    }

                    var parts = animationwrapper.find('div');
                    var speed = settings.animationspeed;
                    var completeCount = 0;
                    for (var count = 0; count < parts.length; count++) {
                        speed -= 50;
                        $(parts[count]).stop(false, true).animate({ marginTop: 0, opacity: 1 }, speed, function() {
                            ++completeCount;
                            if (completeCount == parts.length) {
                                currentImage.fadeIn("slow", function() { $(this).css('z-index', '100'); });
                                previousImage.css('z-index', '98');
                                animationwrapper.fadeOut("fase", function() { $(this).remove(); });
                                animating = false;
                            }
                        });
                    }
                }
                function crunchingbars() {

                    for (var i = 0; i < 12; i++) {
                        $('<div/>').css({ width: Math.ceil(preview.find('img:eq(0)').width() / 12),
                            height: preview.find('img:eq(0)').height(),
                            marginTop: ((i % 2 == 0) ? -(preview.find('img:eq(0)').height()) : preview.find('img:eq(0)').height()),
                            left: Math.ceil((i * preview.find('img:eq(0)').width() / 12)),
                            position: 'absolute',
                            backgroundImage: 'url(' + src + ')',
                            backgroundPosition: '' + (-(i * preview.find('img:eq(0)').width() / 12)) + 'px 0px',
														'background-size':preview.find('img:eq(0)').width()+'px '+preview.find('img:eq(0)').height()+'px',
                            opacity: 0
                        }).appendTo(animationwrapper);
                    }

                    var parts = animationwrapper.find('div');
                    var speed = settings.animationspeed;
                    var completeCount = 0;
                    for (var count = 0; count < parts.length; count++) {
                        // speed -= 50;
                        $(parts[count]).stop(false, true).animate({ marginTop: 0, opacity: 1 }, speed, function() {
                            ++completeCount;
                            if (completeCount == parts.length) {
                                currentImage.fadeIn("slow", function() { $(this).css('z-index', '100'); });
                                previousImage.css('z-index', '98');
                                animationwrapper.fadeOut("fase", function() { $(this).remove(); });
                                animating = false;
                            }
                        });
                    }

                }
                function slidein() {

                    for (var i = 0; i < 12; i++) {
                        $('<div/>').css({ width: preview.find('img:eq(0)').width(),
                            height: Math.ceil(preview.find('img:eq(0)').height() / 12),
                            marginLeft: -preview.find('img:eq(0)').width(),
                            top: Math.ceil((i * preview.find('img:eq(0)').height() / 12)),
                            position: 'absolute',
                            backgroundImage: 'url(' + src + ')',
                            backgroundPosition: '0px ' + (-(i * preview.find('img:eq(0)').height() / 12)) + 'px',
														'background-size':preview.find('img:eq(0)').width()+'px '+preview.find('img:eq(0)').height()+'px',														
                            opacity: 0
                        }).appendTo(animationwrapper);
                    }
                    var parts = animationwrapper.find('div');
                    var speed = settings.animationspeed;
                    var completeCount = 0;
                    for (var count = 0; count < parts.length; count++) {
                        speed -= 50;
                        $(parts[count]).stop(false, true).animate({ marginLeft: 0, opacity: 1 }, speed, function() {
                            ++completeCount;
                            if (completeCount == parts.length) {
                                currentImage.fadeIn("slow", function() { $(this).css('z-index', '100'); });
                                previousImage.css('z-index', '98');
                                animationwrapper.fadeOut("fase", function() { $(this).remove(); });
                                animating = false;
                            }
                        });
                    }
                }
                function randomBars() {

                    for (var i = 0; i < 12; i++) {
                        $('<div/>').css({ width: preview.find('img:eq(0)').width(),
                            height: preview.find('img:eq(0)').height() / 12,
                            marginLeft: ((i % 2 == 0) ? -preview.find('img:eq(0)').width() :preview.find('img:eq(0)').width()),
                            top: Math.ceil((i * preview.find('img:eq(0)').height() / 12)),
                            position: 'absolute',
                            backgroundImage: 'url(' + src + ')',
                            backgroundPosition: '0px ' + (-(i * preview.find('img:eq(0)').height() / 12)) + 'px',
														'background-size':preview.find('img:eq(0)').width()+'px '+preview.find('img:eq(0)').height()+'px',
                            opacity: 0
                        }).appendTo(animationwrapper);
                    }

                    var parts = animationwrapper.find('div');
                    var speed = settings.animationspeed;
                    var completeCount = 0;
                    for (var count = 0; count < parts.length; count++) {
                        //     speed -= 50;
                        $(parts[count]).stop(false, true).animate({ marginLeft: 0, opacity: 1 }, speed, function() {
                            ++completeCount;
                            if (completeCount == parts.length) {
                                currentImage.fadeIn("slow", function() { $(this).css('z-index', '100'); });
                                previousImage.css('z-index', '98');
                                animationwrapper.fadeOut("fase", function() { $(this).remove(); });
                                animating = false;
                            }
                        });
                    }

                }
                function appear() {
                    var w = preview.find('img:eq(0)').width() / 4;
                    var h = preview.find('img:eq(0)').height() / 4;
                    for (var row = 0; row < 4; row++) {
                        for (var col = 0; col < 4; col++) {
                            $('<div/>').css({ width: w, height: h, left: Math.ceil(col * w), top: Math.ceil(row * h), position: 'absolute' })
                                .append($('<div/>').addClass('checker').css({ backgroundImage: 'url(' + src + ')', width: 0, height: 0, 'background-position': '' + (-(col * w)) + 'px ' + (-(row * h)) + 'px','background-size':preview.find('img:eq(0)').width()+'px '+preview.find('img:eq(0)').height()+'px' }))
                                .appendTo(animationwrapper);
                        }
                    }

                    animationwrapper.find('.checker').animate({ width: w, height: h }, settings.animationspeed, function() {
                        currentImage.fadeIn("slow", function() { $(this).css('z-index', '100'); });
                        previousImage.css('z-index', '98');
                        animationwrapper.fadeOut("fase", function() { $(this).remove(); });
                        animating = false;
                    });
                }
                function explode() {
                    var w = preview.find('img:eq(0)').width() / 4;
                    var h = preview.find('img:eq(0)').height() / 4;
                    for (var row = 0; row < 4; row++) {
                        for (var col = 0; col < 4; col++) {
/*													ht=preview.find('img:eq(0)').height()
													wt=preview.find('img:eq(0)').width();*/
                            $('<div/>').css({ width: w, height: h, left: Math.ceil((preview.find('img:eq(0)').width() / 2 - w / 2)), top: Math.ceil((preview.find('img:eq(0)').height() / 2 - h / 2)), opacity: 0, position: 'absolute' })
                                .css({'background-image': 'url(' + src + ')','background-size':preview.find('img:eq(0)').width()+'px '+preview.find('img:eq(0)').height()+'px'}).addClass(" " + (col * w) + "").addClass("" + (row * h) + "").css({'background-position': '' + (-(col * w)) + 'px ' + (-(row * h)) + 'px'}).appendTo(animationwrapper);
                        }
                    }

                    var parts = animationwrapper.find('div');
                    var completeCount = 0;
                    for (var count = 0; count < parts.length; count++) {
                        var el = $(parts[count]);
                        var l = parseFloat(el.attr('class').split(' ')[0]);
                        var t = 0;
                        if (count > 0) t = parseFloat(el.attr('class').split(' ')[1]);
                        el.stop(false, true).animate({ left: l, top: t, opacity: 1 }, settings.animationspeed, function() {
                            ++completeCount;
                            if (completeCount == parts.length) {
                                currentImage.fadeIn("slow", function() { $(this).css('z-index', '100'); });
                                previousImage.css('z-index', '98');
                                animationwrapper.fadeOut("fase", function() { $(this).remove(); });
                                animating = false;
                            }
                        });
                    }
                }
                function paint() {
                    var w = preview.find('img:eq(0)').width() / 4;
                    var h = preview.find('img:eq(0)').height() / 4;
                    for (var row = 0; row < 4; row++) {
                        for (var col = 0; col < 4; col++) {
                            $('<div/>').css({ width: w, height: h, left: Math.ceil(col * w), top: Math.ceil(row * h), position: 'absolute' })
                                .append($('<div/>').addClass('rboxes').css({ 'background-image': 'url(' + src + ')','background-size':preview.find('img:eq(0)').width()+'px '+preview.find('img:eq(0)').height()+'px', width: 0, height: 0, opacity: 0, display: 'none', 'background-position': '' + (-(col * w)) + 'px ' + (-(row * h)) + 'px' }))
                                .appendTo(animationwrapper);
                        }
                    }

                    var parts = animationwrapper.find('.rboxes');
                    var speed = settings.animationspeed / parts.length;
					console.log(parts);					
                    nextAnim(parts, speed / 2, w, h);

                }				
                function nextAnim(pieces, speed, w, h) {
                    pieces.eq(0).css('display', '').animate({ width: w, height: h, opacity: 1 }, speed,
                    function() {

                        nextAnim(pieces.slice(1), speed, w, h);
                        if (pieces.length == 1) {
                            currentImage.fadeIn("slow", function() { $(this).css('z-index', '100'); });
                            previousImage.css('z-index', '98');
							$('.anim-wrapper').fadeOut("fast");						
                            animating = false;
                        }
                    }
                 );
                }
                function animatePlaceIt(pieces, speed) {
                    var randomSlice = Math.floor(Math.random() * (pieces.length))
                    var el = pieces.eq(randomSlice);
                    if (el.length > 0) {
                        var l = parseFloat(el.attr('class').split(' ')[0]);
                        var t = 0;
                        if (el.attr('class').split(' ').length > 1) t = parseFloat(el.attr('class').split(' ')[1]);

                        pieces.eq(0).css('display', '').animate({ left: l, top: t, opacity: 1 }, speed,
                                    function() {
                                        animatePlaceIt(pieces.slice(1), speed);
                                        if (pieces.length == 1) {
                                            currentImage.fadeIn("slow", function() { $(this).css('z-index', '100'); });
                                            previousImage.css('z-index', '98');
                                            $('.anim-wrapper').fadeOut("fast");
                                            animating = false;
                                        }
                                    });
                    }
                }

            });
        }
    });
})(jQuery);