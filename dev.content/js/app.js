/* Foundation v2.1.5 http://foundation.zurb.com */
$(document).ready(function () {

	/* Use this js doc for all application specific JS */

	// Account Dropdown
	$("#accountMenu").click(function() {
		$(".accountDrop").slideToggle('medium');
	});
	
	// Help Dropdown
	$("#helpMenu").click(function() {
		$(".helpDrop").slideToggle('medium');
	});
	

	/*
	 * Accordion Menu
	 */
	$('.menu').initMenu();

	/*
	 * Dropdown-menu for left sidebar
	 */
	$('.user-button').click(function() {
		$('.dropdown-username-menu').slideToggle();
	});
	
	$(document).click(function(e){
		if (!$(e.target).is('.user-button, .arrow-link-down, .dropdown-username-menu *')) {
			$('.dropdown-username-menu').slideUp();
		}
	});
	
	var ddumTimer;
	
	$('.user-button, ul.dropdown-username-menu').mouseleave(function(e) {
		ddumTimer = setTimeout(function() {
			$('.dropdown-username-menu').slideUp();
		},400);
	});
	
	$('.user-button, ul.dropdown-username-menu').mouseenter(function(e) {
		clearTimeout(ddumTimer);
	});
	


	/* TABS --------------------------------- */
	/* Remove if you don't need :) */

	function activateTab($tab) {
		var $activeTab = $tab.closest('dl').find('a.active'),
				contentLocation = $tab.attr("href") + 'Tab';

		//Make Tab Active
		$activeTab.removeClass('active');
		$tab.addClass('active');

    	//Show Tab Content
		$(contentLocation).closest('.tabs-content').children('li').hide();
		$(contentLocation).show();
	}

	$('dl.tabs').each(function () {
		//Get all tabs
		var tabs = $(this).children('dd').children('a');
		tabs.click(function (e) {
			activateTab($(this));
		});
	});

	if (window.location.hash) {
		activateTab($('a[href="' + window.location.hash + '"]'));
	}

	/* ALERT BOXES ------------ */
	$(".alert-box").delegate("a.close", "click", function(event) {
    event.preventDefault();
	  $(this).closest(".alert-box").fadeOut(function(event){
	    $(this).remove();
	  });
	});


	/* PLACEHOLDER FOR FORMS ------------- */
	/* Remove this and jquery.placeholder.min.js if you don't need :) */

	$('input, textarea').placeholder();



	/* UNCOMMENT THE LINE YOU WANT BELOW IF YOU WANT IE6/7/8 SUPPORT AND ARE USING .block-grids */
//	$('.block-grid.two-up>li:nth-child(2n+1)').css({clear: 'left'});
//	$('.block-grid.three-up>li:nth-child(3n+1)').css({clear: 'left'});
//	$('.block-grid.four-up>li:nth-child(4n+1)').css({clear: 'left'});
//	$('.block-grid.five-up>li:nth-child(5n+1)').css({clear: 'left'});



	/* DROPDOWN NAV ------------- */

	var lockNavBar = false;
	$('.nav-bar a.flyout-toggle').live('click', function(e) {
		e.preventDefault();
		var flyout = $(this).siblings('.flyout');
		if (lockNavBar === false) {
			$('.nav-bar .flyout').not(flyout).slideUp(500);
			flyout.slideToggle(500, function(){
				lockNavBar = false;
			});
		}
		lockNavBar = true;
	});
  if (Modernizr.touch) {
    $('.nav-bar>li.has-flyout>a.main').css({
      'padding-right' : '75px',
    });
        $('.nav-bar>li.has-flyout>a.main').css({
      'padding-right' : '75px',
    });
    $('.nav-bar>li.has-flyout>a.flyout-toggle').css({
      'border-left' : '1px dashed #eee'
    });
  } else {
    $('.nav-bar>li.has-flyout').hover(function() {
      $(this).children('.flyout').show();
    }, function() {
      $(this).children('.flyout').hide();
    })
  }


	/* DISABLED BUTTONS ------------- */
	/* Gives elements with a class of 'disabled' a return: false; */
  

});





/*
 * Accordion Menu
 */

jQuery.fn.initMenu = function() {  
    return this.each(function(){
        var theMenu = $(this).get(0);
        
       /* $('li:has(ul)',this).each(function() {
			$('>a', this).append("<span class='arrow'></span>");
		}); */
        
        $('.sub', this).hide();
        $('li.expand > .sub', this).show();
        $('li.expand > .sub', this).prev().addClass('active');
        $('li a', this).click(
            function(e) {
                e.stopImmediatePropagation();
                var theElement = $(this).next();
                var parent = this.parentNode.parentNode;
                if($(this).hasClass('active-icon')) {
                	$(this).addClass('non-active-icon');
                	$(this).removeClass('active-icon');
                }else{
                	$(this).addClass('active-icon');
                	$(this).removeClass('non-active-icon');
                }
                if($(parent).hasClass('noaccordion')) {
                    if(theElement[0] === undefined) {
                        window.location.href = this.href;
                    }
                    $(theElement).slideToggle('normal', function() {
                        if ($(this).is(':visible')) {
                            $(this).prev().addClass('active');
                        }
                        else {
                            $(this).prev().removeClass('active');
                            $(this).prev().removeClass('active-icon');
                        }    
                    });
                    return false;
                }
                else {
                    if(theElement.hasClass('sub') && theElement.is(':visible')) {
                        if($(parent).hasClass('collapsible')) {
                            $('.sub:visible', parent).first().slideUp('normal', 
                            function() {
                                $(this).prev().removeClass('active');
                                $(this).prev().removeClass('active-icon');
                            }
                        );
                        return false;  
                    }
                    return false;
                }
                if(theElement.hasClass('sub') && !theElement.is(':visible')) {         
                    $('.sub:visible', parent).first().slideUp('normal', function() {
                        $(this).prev().removeClass('active');
                        $(this).prev().removeClass('active-icon');
                    });
                    theElement.slideDown('normal', function() {
                        $(this).prev().addClass('active');
                    });
                    return false;
                }
            }
        }
    );
	});
};


$(function()
{
	// this initialises the demo scollpanes on the page.
	$('.scroll-pane').jScrollPane({scrollbarWidth:20, scrollbarMargin:10});
    
	// this allows you to click a link to add content to #pane4 and shows how to 
	// reinitialise the scrollbars when you have done this.
	$('#ToC').bind(
		'click',
		function()
		{
			$('.scroll-pane').append($('<p></p>').html($('.flyout').html())).jScrollPane({scrollbarWidth:20, scrollbarMargin:10});
		}
	);
	// and this allows you to click the link to reduce the amount of content in
	// #pane4 and reinitialise the scrollbars.
	$('#remove-content').bind(
		'click',
		function()
		{
			$('.scroll-pane').empty().append($('<p></p>').html($('#intro').html())).jScrollPane({scrollbarWidth:20, scrollbarMargin:10});
		}
	);
});

			
$('.define[title]').qtip({
   position: {
      my: 'bottom center',  // Position my top left...
      at: 'top center', // at the top center of...
      viewport: $(window),
      adjust: {
		method: $('#flip').val(),
		x: parseInt($('0').val(), 10) || 0,
		y: parseInt($('0').val(), 10) || 0
	}
   },
	style: {
      classes: 'ui-tooltip-dark ui-tooltip-rounded ui-tooltip-shadow'
    }
})





$(document).ready(function(){

	// hide #back-top first
	$("#back-top").hide();
	
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 300) {
				$('#back-top').slideDown();
			} else {
				$('#back-top').slideUp();
			}
		});

		// scroll body to 0px on click
		$('#back-top a').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});

});







$(document).ready(function(){
$(".inline").colorbox({inline:true, width:"100%", opacity:"1" });
$('.inline').colorbox({onLoad: function() {
    $('#cboxClose').css('display', 'none');
}});
});

$('#cboxContent .closebutton').live('click', function(){
 $.fn.colorbox.close();
});

$(document).ready(function () {
    $('a.gallery').colorbox({ opacity:0.95 , rel:'group1', photo: true });
});
