
 /* ==============================================
Page Loader
=============================================== */

$(window).load(function() {
	'use strict';
	$(".loader-item").delay(700).fadeOut();
	$("#pageloader").delay(1200).fadeOut("slow");
});


/* ==============================================
Navigation Scroll Effect
=============================================== */


$(document).ready(function () {
	'use strict';

    var menu = $('#navigation');

    $(window).scroll(function () {
        var y = $(this).scrollTop();
        var z = $('.waypoint').offset().top - 200;

        if (y >= z) {
            menu.removeClass('not-visible-nav').addClass('visible-nav');
        }
        else{
            menu.removeClass('visible-nav').addClass('not-visible-nav');
        }
    });

});


 /* ==============================================
Flex Slider Testimonials
=============================================== */	
	
 $(window).load(function(){
	  'use strict';
		
      $('.inner').flexslider({
        animation: "fade",
		selector: ".t-slides .monial",
		controlNav: false,
		directionNav: true ,
		slideshowSpeed: 7000,  
		direction: "horizontal",
        start: function(slider){
          $('body').removeClass('loading'); 
        }
      });
 });



 /* ==============================================
Scroll Navigation
=============================================== */	

$(function() {
		'use strict';

		$('.scroll').bind('click', function(event) {
			var $anchor = $(this);
			var headerH = $('#navigation').outerHeight();
			$('html, body').stop().animate({
				scrollTop : $($anchor.attr('href')).offset().top - headerH + "px"
			}, 1200, 'easeInOutExpo');

			event.preventDefault();
		});
	});




/* ==============================================
Flex Slider Home Page
=============================================== */	
	
 $(window).load(function(){
	  'use strict';

      $('.hometexts').flexslider({
        animation: "slide",
		selector: ".slide-text .hometext",
		controlNav: false,
		directionNav: false ,
		slideshowSpeed: 4000,  
		direction: "vertical",
        start: function(slider){
         $('body').removeClass('loading'); 
        }
      });
 });

 /* ==============================================
Scroll Navigation
=============================================== */	

$(function() {
		'use strict';

		$('.scroll').bind('click', function(event) {
			var $anchor = $(this);
			var headerH = $('#navigation').outerHeight();
			$('html, body').stop().animate({
				scrollTop : $($anchor.attr('href')).offset().top - headerH + "px"
			}, 1200, 'easeInOutExpo');

			event.preventDefault();
		});
	});


 /* ==============================================
Active Navigation Calling
=============================================== */




$(function () {
	'use stric'
  $('body').scrollspy({ 
	target: '.nav-menu',
	offset: 95
})
})


 /* ==============================================
Tooltips Calling
=============================================== */	

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})



/* ==============================================
Mobile Menu Button
=============================================== */	

$('.mini-nav-button').click(function() {
    $(".nav-menu").slideToggle("9000");
 });

$('.nav a').click(function () {
	if ($(window).width() < 970) {
    	$(".nav-menu").slideToggle("2000")}
	
});



/* ==============================================
Animated Items
=============================================== */	
	jQuery(document).ready(function($) {
	
	'use strict';

    	$('.animated').appear(function() {
	        var elem = $(this);
	        var animation = elem.data('animation');
	        if ( !elem.hasClass('visible') ) {
	        	var animationDelay = elem.data('animation-delay');
	            if ( animationDelay ) {

	                setTimeout(function(){
	                    elem.addClass( animation + " visible" );
	                }, animationDelay);

	            } else {
	                elem.addClass( animation + " visible" );
	            }
	        }
	    });
});


