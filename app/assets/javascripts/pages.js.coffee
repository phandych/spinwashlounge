# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



	# Page Loader

	$(document).on 'page:change', ->
		$(".loader-item").delay(700).fadeOut("slow")
		$("#pageloader").delay(1200).fadeOut("slow")


	# Drop Down Menu Fade Effect

	$(document).ready ->
		$('.nav-toggle').hover(
			->
				$(@).find('.dropdown-menu').first().stop(true, true).slideDown(250)
			->
				$(@).find('.dropdown-menu').first().stop(true, true).slideUp(250)
			)
		


	# Flex Slider Home Page	
	
	$(document).ready ->
		 $('.hometexts').flexslider
		 	animation: "slide"
				selector: ".slide-text .hometext"
				controlNav: false
				directionNav: false
				slideshowSpeed: 4000 
				direction: "vertical"
			start: (slider) ->
         		$('body').removeClass('loading')
         
		    
	# Tooltips Calling
	$ ->
		$('[data-toggle="tooltip"]').tooltip()

	# Active Navigation Calling

	$ ->
		$('body').scrollspy
			target: '.nav-menu'
			offset: 95

	#

	$(document).on 'page:change', ->
		menu = $('#navigation')

		$(window).scroll ->
			y = $(@).scrollTop()
			z = $('.waypoint').offset().top - 200
			
			if (y >= z) 
            	menu.removeClass('not-visible-nav').addClass('visible-nav')
        	else
            	menu.removeClass('visible-nav').addClass('not-visible-nav')
    
	# Scroll Navigation

	$ ->
		$('.scroll').bind 'click', (event) ->
			$anchor = $(@)
			headerH = $('#navigation').outerHeight()
			$('html, body').stop().animate
				scrollTop : $($anchor.attr('href')).offset().top - headerH + "px", 1200, 'easeInOutExpo'
				event.preventDefault()


	# Animated Items

	jQuery(document).ready ($) ->
		$('.animated').appear ->
				elem = $(@)
				animation = elem.data('animation')
				if ( !elem.hasClass('visible'))
					animationDelay = elem.data('animation-delay')
					if (animationDelay)
						setTimeout ->
							elem.addClass(animation + " visible") 
					animationDelay
				else
					elem.addClass(animation + " visible")
			

	# Mobile Menu Button
	$ -> 
		$('.nav a').on 'click', ->
			if ($(window).width() < 970)
				$('.nav-menu').slideToggle("2000")
		$('.mini-nav-button').on 'click', ->
			$('.nav-menu').slideToggle("9000")


	# Google_Map
	$ ->
		$( ".google-map-big-button" ).on 'click', ->
			$( "#map-button" ).toggleClass( "close-map-button", "open-map-button", 1000 )
			$( "#map-button" ).toggleClass( "open-map-button", "close-map-button", 1000 )
			$( "#map" ).toggleClass( "close-map", "open-map", 1000 )
			$( "#map" ).toggleClass( "open-map", "close-map", 1000 )