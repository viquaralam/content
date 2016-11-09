jQuery(document).ready(function() {


        
// Sliders

jQuery('.imagess').cycle({
            fx:     'fade',
            speed:    1500,
            timeout:  1500,
            pager:  '.slider2-nav',
            pagerAnchorBuilder: function(idx, slide) {
                // return selector string for existing anchor
                return '.slider2-nav li:eq(' + idx + ') a';}
        });

          jQuery('.imagess-thumb').cycle({
            fx:     'fade',
            speed:    1500,
            timeout:  1500,
            pager:  '.slider2-nav-thumbs',
            pagerAnchorBuilder: function(idx, slide) {
                // return selector string for existing anchor
                return '.slider2-nav-thumbs li:eq(' + idx + ') a';}
        });

         jQuery('.imagess-wide').cycle({
            fx:     'fade',
            speed:    1500,
            timeout:  1500,
            pager:  '.slider2-nav-wide',
            pagerAnchorBuilder: function(idx, slide) {
                // return selector string for existing anchor
                return '.slider2-nav-wide li:eq(' + idx + ') a';}
        });

          jQuery('.imagess-wide-thumb').cycle({
            fx:     'fade',
            speed:    1500,
            timeout:  1500,
            pager:  '.slider2-nav-thumbs',
            pagerAnchorBuilder: function(idx, slide) {
                // return selector string for existing anchor
                return '.slider2-nav-thumbs li:eq(' + idx + ') a';}
        });
        
    jQuery('.content-slider2').cycle({
            'fx' : 'fade',
            'timeout' : 4000,
            'pager' : '#content-slider2-pager',
            'next':   '#next-arrow',
            'pause':   1,
    'prev':   '#prev-arrow'
         });



  
// Widgets




        jQuery('.simple-slider').cycle({
            'before' : before_cycle_simple_slider,
            'fx' : 'fade',

            speed:   600,
            timeout: 4000,
            pause:   1,

            'pager' : '.slider2-pagers'
        });


        function before_cycle_simple_slider(curr, next, opts, fwd) {

            var index = opts.currSlide;
            var jQueryht = jQuery(this).outerHeight();
            jQuery(this).parent().animate({
                height: jQueryht
            }, 200);

        }


        function before_cycle(curr, next, opts, fwd) {

            var index = opts.currSlide;
            var jQueryht = jQuery(this).outerHeight();
            jQuery(this).parent().animate({
                height: jQueryht
            }, 200);


        }





        
    });
