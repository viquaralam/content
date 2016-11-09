/* Foundation v2.1.5 http://foundation.zurb.com */
(function(a){a("a[data-reveal-id]").live("click",function(c){c.preventDefault();var b=a(this).attr("data-reveal-id");a("#"+b).reveal(a(this).data())});a.fn.reveal=function(b){var c={animation:"fadeAndPop",animationSpeed:300,closeOnBackgroundClick:true,dismissModalClass:"close-reveal-modal"};var b=a.extend({},c,b);return this.each(function(){var l=a(this),g=parseInt(l.css("top")),i=l.height()+g,h=false,e=a(".reveal-modal-bg");if(e.length==0){e=a('<div class="reveal-modal-bg" />').insertAfter(l);e.fadeTo("fast",0.8)}function k(){e.unbind("click.modalEvent");a("."+b.dismissModalClass).unbind("click.modalEvent");if(!h){m();if(b.animation=="fadeAndPop"){l.css({top:a(document).scrollTop()-i,opacity:0,visibility:"visible"});e.fadeIn(b.animationSpeed/2);l.delay(b.animationSpeed/2).animate({top:a(document).scrollTop()+g+"px",opacity:1},b.animationSpeed,j)}if(b.animation=="fade"){l.css({opacity:0,visibility:"visible",top:a(document).scrollTop()+g});e.fadeIn(b.animationSpeed/2);l.delay(b.animationSpeed/2).animate({opacity:1},b.animationSpeed,j)}if(b.animation=="none"){l.css({visibility:"visible",top:a(document).scrollTop()+g});e.css({display:"block"});j()}}l.unbind("reveal:open",k)}l.bind("reveal:open",k);function f(){if(!h){m();if(b.animation=="fadeAndPop"){e.delay(b.animationSpeed).fadeOut(b.animationSpeed);l.animate({top:a(document).scrollTop()-i+"px",opacity:0},b.animationSpeed/2,function(){l.css({top:g,opacity:1,visibility:"hidden"});j()})}if(b.animation=="fade"){e.delay(b.animationSpeed).fadeOut(b.animationSpeed);l.animate({opacity:0},b.animationSpeed,function(){l.css({opacity:1,visibility:"hidden",top:g});j()})}if(b.animation=="none"){l.css({visibility:"hidden",top:g});e.css({display:"none"})}}l.unbind("reveal:close",f)}l.bind("reveal:close",f);l.trigger("reveal:open");var d=a("."+b.dismissModalClass).bind("click.modalEvent",function(){l.trigger("reveal:close")});if(b.closeOnBackgroundClick){e.css({cursor:"pointer"});e.bind("click.modalEvent",function(){l.trigger("reveal:close")})}a("body").keyup(function(n){if(n.which===27){l.trigger("reveal:close")}});function j(){h=false}function m(){h=true}})}})(jQuery);(function(b){b.fn.findFirstImage=function(){return this.first().find("img").andSelf().filter("img").first()};var a={defaults:{animation:"horizontal-push",animationSpeed:600,timer:true,advanceSpeed:4000,pauseOnHover:false,startClockOnMouseOut:false,startClockOnMouseOutAfter:1000,directionalNav:true,captions:true,captionAnimation:"fade",captionAnimationSpeed:600,bullets:false,bulletThumbs:false,bulletThumbLocation:"",afterSlideChange:b.noop,fluid:true,centerBullets:true},activeSlide:0,numberSlides:0,orbitWidth:null,orbitHeight:null,locked:null,timerRunning:null,degrees:0,wrapperHTML:'<div class="orbit-wrapper" />',timerHTML:'<div class="timer"><span class="mask"><span class="rotator"></span></span><span class="pause"></span></div>',captionHTML:'<div class="orbit-caption"></div>',directionalNavHTML:'<div class="slider-nav"><span class="right">Right</span><span class="left">Left</span></div>',bulletHTML:'<ul class="orbit-bullets"></ul>',init:function(f,e){var c,g=0,d=this;this.clickTimer=b.proxy(this.clickTimer,this);this.addBullet=b.proxy(this.addBullet,this);this.resetAndUnlock=b.proxy(this.resetAndUnlock,this);this.stopClock=b.proxy(this.stopClock,this);this.startTimerAfterMouseLeave=b.proxy(this.startTimerAfterMouseLeave,this);this.clearClockMouseLeaveTimer=b.proxy(this.clearClockMouseLeaveTimer,this);this.rotateTimer=b.proxy(this.rotateTimer,this);this.options=b.extend({},this.defaults,e);if(this.options.timer==="false"){this.options.timer=false}if(this.options.captions==="false"){this.options.captions=false}if(this.options.directionalNav==="false"){this.options.directionalNav=false}this.$element=b(f);this.$wrapper=this.$element.wrap(this.wrapperHTML).parent();this.$slides=this.$element.children("img, a, div");this.$element.bind("orbit.next",function(){d.shift("next")});this.$element.bind("orbit.prev",function(){d.shift("prev")});this.$element.bind("orbit.goto",function(i,h){d.shift(h)});this.$element.bind("orbit.start",function(i,h){d.startClock()});this.$element.bind("orbit.stop",function(i,h){d.stopClock()});c=this.$slides.filter("img");if(c.length===0){this.loaded()}else{c.bind("imageready",function(){g+=1;if(g===c.length){d.loaded()}})}},loaded:function(){this.$element.addClass("orbit").css({width:"1px",height:"1px"});this.$slides.addClass("orbit-slide");this.setDimentionsFromLargestSlide();this.updateOptionsIfOnlyOneSlide();this.setupFirstSlide();if(this.options.timer){this.setupTimer();this.startClock()}if(this.options.captions){this.setupCaptions()}if(this.options.directionalNav){this.setupDirectionalNav()}if(this.options.bullets){this.setupBulletNav();this.setActiveBullet()}},currentSlide:function(){return this.$slides.eq(this.activeSlide)},setDimentionsFromLargestSlide:function(){var d=this,c;d.$element.add(d.$wrapper).width(this.$slides.first().width());d.$element.add(d.$wrapper).height(this.$slides.first().height());d.orbitWidth=this.$slides.first().width();d.orbitHeight=this.$slides.first().height();c=this.$slides.first().findFirstImage().clone();this.$slides.each(function(){var e=b(this),g=e.width(),f=e.height();if(g>d.$element.width()){d.$element.add(d.$wrapper).width(g);d.orbitWidth=d.$element.width()}if(f>d.$element.height()){d.$element.add(d.$wrapper).height(f);d.orbitHeight=d.$element.height();c=b(this).findFirstImage().clone()}d.numberSlides+=1});if(this.options.fluid){if(typeof this.options.fluid==="string"){c=b('<img src="http://placehold.it/'+this.options.fluid+'" />')}d.$element.prepend(c);c.addClass("fluid-placeholder");d.$element.add(d.$wrapper).css({width:"inherit"});d.$element.add(d.$wrapper).css({height:"inherit"});b(window).bind("resize",function(){d.orbitWidth=d.$element.width();d.orbitHeight=d.$element.height()})}},lock:function(){this.locked=true},unlock:function(){this.locked=false},updateOptionsIfOnlyOneSlide:function(){if(this.$slides.length===1){this.options.directionalNav=false;this.options.timer=false;this.options.bullets=false}},setupFirstSlide:function(){var c=this;this.$slides.first().css({"z-index":3}).fadeIn(function(){c.$slides.css({display:"block"})})},startClock:function(){var c=this;if(!this.options.timer){return false}if(this.$timer.is(":hidden")){this.clock=setInterval(function(){c.$element.trigger("orbit.next")},this.options.advanceSpeed)}else{this.timerRunning=true;this.$pause.removeClass("active");this.clock=setInterval(this.rotateTimer,this.options.advanceSpeed/180)}},rotateTimer:function(){var c="rotate("+this.degrees+"deg)";this.degrees+=2;this.$rotator.css({"-webkit-transform":c,"-moz-transform":c,"-o-transform":c});if(this.degrees>180){this.$rotator.addClass("move");this.$mask.addClass("move")}if(this.degrees>360){this.$rotator.removeClass("move");this.$mask.removeClass("move");this.degrees=0;this.$element.trigger("orbit.next")}},stopClock:function(){if(!this.options.timer){return false}else{this.timerRunning=false;clearInterval(this.clock);this.$pause.addClass("active")}},setupTimer:function(){this.$timer=b(this.timerHTML);this.$wrapper.append(this.$timer);this.$rotator=this.$timer.find(".rotator");this.$mask=this.$timer.find(".mask");this.$pause=this.$timer.find(".pause");this.$timer.click(this.clickTimer);if(this.options.startClockOnMouseOut){this.$wrapper.mouseleave(this.startTimerAfterMouseLeave);this.$wrapper.mouseenter(this.clearClockMouseLeaveTimer)}if(this.options.pauseOnHover){this.$wrapper.mouseenter(this.stopClock)}},startTimerAfterMouseLeave:function(){var c=this;this.outTimer=setTimeout(function(){if(!c.timerRunning){c.startClock()}},this.options.startClockOnMouseOutAfter)},clearClockMouseLeaveTimer:function(){clearTimeout(this.outTimer)},clickTimer:function(){if(!this.timerRunning){this.startClock()}else{this.stopClock()}},setupCaptions:function(){this.$caption=b(this.captionHTML);this.$wrapper.append(this.$caption);this.setCaption()},setCaption:function(){var d=this.currentSlide().attr("data-caption"),c;if(!this.options.captions){return false}if(d){c=b(d).html();this.$caption.attr("id",d).html(c);switch(this.options.captionAnimation){case"none":this.$caption.show();break;case"fade":this.$caption.fadeIn(this.options.captionAnimationSpeed);break;case"slideOpen":this.$caption.slideDown(this.options.captionAnimationSpeed);break}}else{switch(this.options.captionAnimation){case"none":this.$caption.hide();break;case"fade":this.$caption.fadeOut(this.options.captionAnimationSpeed);break;case"slideOpen":this.$caption.slideUp(this.options.captionAnimationSpeed);break}}},setupDirectionalNav:function(){var c=this;this.$wrapper.append(this.directionalNavHTML);this.$wrapper.find(".left").click(function(){c.stopClock();c.$element.trigger("orbit.prev")});this.$wrapper.find(".right").click(function(){c.stopClock();c.$element.trigger("orbit.next")})},setupBulletNav:function(){this.$bullets=b(this.bulletHTML);this.$wrapper.append(this.$bullets);this.$slides.each(this.addBullet);this.$element.addClass("with-bullets");if(this.options.centerBullets){this.$bullets.css("margin-left",-this.$bullets.width()/2)}},addBullet:function(g,e){var d=g+1,h=b("<li>"+(d)+"</li>"),c,f=this;if(this.options.bulletThumbs){c=b(e).attr("data-thumb");if(c){h.addClass("has-thumb").css({background:"url("+this.options.bulletThumbLocation+c+") no-repeat"})}}this.$bullets.append(h);h.data("index",g);h.click(function(){f.stopClock();f.$element.trigger("orbit.goto",[h.data("index")])})},setActiveBullet:function(){if(!this.options.bullets){return false}else{this.$bullets.find("li").removeClass("active").eq(this.activeSlide).addClass("active")}},resetAndUnlock:function(){this.$slides.eq(this.prevActiveSlide).css({"z-index":1});this.unlock();this.options.afterSlideChange.call(this,this.$slides.eq(this.prevActiveSlide),this.$slides.eq(this.activeSlide))},shift:function(d){var c=d;this.prevActiveSlide=this.activeSlide;if(this.prevActiveSlide==c){return false}if(this.$slides.length=="1"){return false}if(!this.locked){this.lock();if(d=="next"){this.activeSlide++;if(this.activeSlide==this.numberSlides){this.activeSlide=0}}else{if(d=="prev"){this.activeSlide--;if(this.activeSlide<0){this.activeSlide=this.numberSlides-1}}else{this.activeSlide=d;if(this.prevActiveSlide<this.activeSlide){c="next"}else{if(this.prevActiveSlide>this.activeSlide){c="prev"}}}}this.setActiveBullet();this.$slides.eq(this.prevActiveSlide).css({"z-index":2});if(this.options.animation=="fade"){this.$slides.eq(this.activeSlide).css({opacity:0,"z-index":3}).animate({opacity:1},this.options.animationSpeed,this.resetAndUnlock)}if(this.options.animation=="horizontal-slide"){if(c=="next"){this.$slides.eq(this.activeSlide).css({left:this.orbitWidth,"z-index":3}).animate({left:0},this.options.animationSpeed,this.resetAndUnlock)}if(c=="prev"){this.$slides.eq(this.activeSlide).css({left:-this.orbitWidth,"z-index":3}).animate({left:0},this.options.animationSpeed,this.resetAndUnlock)}}if(this.options.animation=="vertical-slide"){if(c=="prev"){this.$slides.eq(this.activeSlide).css({top:this.orbitHeight,"z-index":3}).animate({top:0},this.options.animationSpeed,this.resetAndUnlock)}if(c=="next"){this.$slides.eq(this.activeSlide).css({top:-this.orbitHeight,"z-index":3}).animate({top:0},this.options.animationSpeed,this.resetAndUnlock)}}if(this.options.animation=="horizontal-push"){if(c=="next"){this.$slides.eq(this.activeSlide).css({left:this.orbitWidth,"z-index":3}).animate({left:0},this.options.animationSpeed,this.resetAndUnlock);this.$slides.eq(this.prevActiveSlide).animate({left:-this.orbitWidth},this.options.animationSpeed)}if(c=="prev"){this.$slides.eq(this.activeSlide).css({left:-this.orbitWidth,"z-index":3}).animate({left:0},this.options.animationSpeed,this.resetAndUnlock);this.$slides.eq(this.prevActiveSlide).animate({left:this.orbitWidth},this.options.animationSpeed)}}if(this.options.animation=="vertical-push"){if(c=="next"){this.$slides.eq(this.activeSlide).css({top:-this.orbitHeight,"z-index":3}).animate({top:0},this.options.animationSpeed,this.resetAndUnlock);this.$slides.eq(this.prevActiveSlide).animate({top:this.orbitHeight},this.options.animationSpeed)}if(c=="prev"){this.$slides.eq(this.activeSlide).css({top:this.orbitHeight,"z-index":3}).animate({top:0},this.options.animationSpeed,this.resetAndUnlock);this.$slides.eq(this.prevActiveSlide).animate({top:-this.orbitHeight},this.options.animationSpeed)}}this.setCaption()}}};b.fn.orbit=function(c){return this.each(function(){var d=b.extend({},a);d.init(this,c)})}})(jQuery);
/*!
 * jQuery imageready Plugin
 * http://www.zurb.com/playground/
 *
 * Copyright 2011, ZURB
 * Released under the MIT License
 */
(function(c){var b={};c.event.special.imageready={setup:function(f,e,d){b=f||b},add:function(d){var e=c(this),f;if(this.nodeType===1&&this.tagName.toLowerCase()==="img"&&this.src!==""){if(b.forceLoad){f=e.attr("src");e.attr("src","");a(this,d.handler);e.attr("src",f)}else{if(this.complete||this.readyState===4){d.handler.apply(this,arguments)}else{a(this,d.handler)}}}},teardown:function(d){c(this).unbind(".imageready")}};function a(d,f){var e=c(d);e.bind("load.imageready",function(){f.apply(d,arguments);e.unbind("load.imageready")})}}(jQuery));jQuery(document).ready(function(c){function b(d){c("form.custom input:"+d).each(function(){var f=c(this).hide(),e=f.next("span.custom."+d);if(e.length===0){e=c('<span class="custom '+d+'"></span>').insertAfter(f)}e.toggleClass("checked",f.is(":checked"));e.toggleClass("disabled",f.is(":disabled"))})}b("checkbox");b("radio");function a(f){var g=c(f),i=g.next("div.custom.dropdown"),d=g.find("option"),e=0,h;if(i.length===0){i=c('<div class="custom dropdown"><a href="#" class="selector"></a><ul></ul></div>"');d.each(function(){h=c("<li>"+c(this).html()+"</li>");i.find("ul").append(h)});i.prepend('<a href="#" class="current">'+d.first().html()+"</a>");g.after(i);g.hide()}else{i.find("ul").html("");d.each(function(){h=c("<li>"+c(this).html()+"</li>");i.find("ul").append(h)})}i.toggleClass("disabled",g.is(":disabled"));d.each(function(j){if(this.selected){i.find("li").eq(j).addClass("selected");i.find(".current").html(c(this).html())}});i.find("li").each(function(){i.addClass("open");if(c(this).outerWidth()>e){e=c(this).outerWidth()}i.removeClass("open")});i.css("width",e+18+"px");i.find("ul").css("width",e+16+"px")}c("form.custom select").each(function(){a(this)})});(function(c){function b(e){var f=0,g=e.next();$options=e.find("option");g.find("ul").html("");$options.each(function(){$li=c("<li>"+c(this).html()+"</li>");g.find("ul").append($li)});$options.each(function(h){if(this.selected){g.find("li").eq(h).addClass("selected");g.find(".current").html(c(this).html())}});g.removeAttr("style").find("ul").removeAttr("style");g.find("li").each(function(){g.addClass("open");if(c(this).outerWidth()>f){f=c(this).outerWidth()}g.removeClass("open")});g.css("width",f+18+"px");g.find("ul").css("width",f+16+"px")}function a(e){var g=e.prev(),f=g[0];if(false==g.is(":disabled")){f.checked=((f.checked)?false:true);e.toggleClass("checked");g.trigger("change")}}function d(e){var g=e.prev(),f=g[0];c('input:radio[name="'+g.attr("name")+'"]').each(function(){c(this).next().removeClass("checked")});f.checked=((f.checked)?false:true);e.toggleClass("checked");g.trigger("change")}c("form.custom span.custom.checkbox").live("click",function(e){e.preventDefault();e.stopPropagation();a(c(this))});c("form.custom span.custom.radio").live("click",function(e){e.preventDefault();e.stopPropagation();d(c(this))});c("form.custom select").live("change",function(e){b(c(this))});c("form.custom label").live("click",function(f){var e=c("#"+c(this).attr("for")),h,g;if(e.length!==0){if(e.attr("type")==="checkbox"){f.preventDefault();h=c(this).find("span.custom.checkbox");a(h)}else{if(e.attr("type")==="radio"){f.preventDefault();g=c(this).find("span.custom.radio");d(g)}}}});c("form.custom div.custom.dropdown a.current, form.custom div.custom.dropdown a.selector").live("click",function(f){var h=c(this),g=h.closest("div.custom.dropdown"),e=g.prev();f.preventDefault();if(false==e.is(":disabled")){g.toggleClass("open");if(g.hasClass("open")){c(document).bind("click.customdropdown",function(i){g.removeClass("open");c(document).unbind(".customdropdown")})}else{c(document).unbind(".customdropdown")}}});c("form.custom div.custom.dropdown li").live("click",function(h){var i=c(this),f=i.closest("div.custom.dropdown"),g=f.prev(),e=0;h.preventDefault();h.stopPropagation();i.closest("ul").find("li").removeClass("selected");i.addClass("selected");f.removeClass("open").find("a.current").html(i.html());i.closest("ul").find("li").each(function(j){if(i[0]==this){e=j}});g[0].selectedIndex=e;g.trigger("change")})})(jQuery);
/*! http://mths.be/placeholder v1.8.7 by @mathias */
(function(o,m,r){var t="placeholder" in m.createElement("input"),q="placeholder" in m.createElement("textarea"),l=r.fn,k;if(t&&q){k=l.placeholder=function(){return this};k.input=k.textarea=true}else{k=l.placeholder=function(){return this.filter((t?"textarea":":input")+"[placeholder]").not(".placeholder").bind("focus.placeholder",s).bind("blur.placeholder",p).trigger("blur.placeholder").end()};k.input=t;k.textarea=q;r(function(){r(m).delegate("form","submit.placeholder",function(){var a=r(".placeholder",this).each(s);setTimeout(function(){a.each(p)},10)})});r(o).bind("unload.placeholder",function(){r(".placeholder").val("")})}function n(b){var c={},a=/^jQuery\d+$/;r.each(b.attributes,function(d,e){if(e.specified&&!a.test(e.name)){c[e.name]=e.value}});return c}function s(){var a=r(this);if(a.val()===a.attr("placeholder")&&a.hasClass("placeholder")){if(a.data("placeholder-password")){a.hide().next().show().focus().attr("id",a.removeAttr("id").data("placeholder-id"))}else{a.val("").removeClass("placeholder")}}}function p(){var d,e=r(this),c=e,a=this.id;if(e.val()===""){if(e.is(":password")){if(!e.data("placeholder-textinput")){try{d=e.clone().attr({type:"text"})}catch(b){d=r("<input>").attr(r.extend(n(this),{type:"text"}))}d.removeAttr("name").data("placeholder-password",true).data("placeholder-id",a).bind("focus.placeholder",s);e.data("placeholder-textinput",d).data("placeholder-id",a).before(d)}e=e.removeAttr("id").hide().prev().attr("id",a).show()}e.addClass("placeholder").val(e.attr("placeholder"))}else{e.removeClass("placeholder")}}}(this,document,jQuery));
/*! Copyright (c) 2011 Brandon Aaron (http://brandonaaron.net)
 * Licensed under the MIT License (LICENSE.txt).
 *
 * Thanks to: http://adomas.org/javascript-mouse-wheel/ for some pointers.
 * Thanks to: Mathias Bank(http://www.mathias-bank.de) for a scope bug fix.
 * Thanks to: Seamus Leahy for adding deltaX and deltaY
 *
 * Version: 3.0.6
 * 
 * Requires: 1.2.2+
 */

(function($) {

var types = ['DOMMouseScroll', 'mousewheel'];

if ($.event.fixHooks) {
    for ( var i=types.length; i; ) {
        $.event.fixHooks[ types[--i] ] = $.event.mouseHooks;
    }
}

$.event.special.mousewheel = {
    setup: function() {
        if ( this.addEventListener ) {
            for ( var i=types.length; i; ) {
                this.addEventListener( types[--i], handler, false );
            }
        } else {
            this.onmousewheel = handler;
        }
    },
    
    teardown: function() {
        if ( this.removeEventListener ) {
            for ( var i=types.length; i; ) {
                this.removeEventListener( types[--i], handler, false );
            }
        } else {
            this.onmousewheel = null;
        }
    }
};

$.fn.extend({
    mousewheel: function(fn) {
        return fn ? this.bind("mousewheel", fn) : this.trigger("mousewheel");
    },
    
    unmousewheel: function(fn) {
        return this.unbind("mousewheel", fn);
    }
});


function handler(event) {
    var orgEvent = event || window.event, args = [].slice.call( arguments, 1 ), delta = 0, returnValue = true, deltaX = 0, deltaY = 0;
    event = $.event.fix(orgEvent);
    event.type = "mousewheel";
    
    // Old school scrollwheel delta
    if ( orgEvent.wheelDelta ) { delta = orgEvent.wheelDelta/120; }
    if ( orgEvent.detail     ) { delta = -orgEvent.detail/3; }
    
    // New school multidimensional scroll (touchpads) deltas
    deltaY = delta;
    
    // Gecko
    if ( orgEvent.axis !== undefined && orgEvent.axis === orgEvent.HORIZONTAL_AXIS ) {
        deltaY = 0;
        deltaX = -1*delta;
    }
    
    // Webkit
    if ( orgEvent.wheelDeltaY !== undefined ) { deltaY = orgEvent.wheelDeltaY/120; }
    if ( orgEvent.wheelDeltaX !== undefined ) { deltaX = -1*orgEvent.wheelDeltaX/120; }
    
    // Add event and delta to the front of the arguments
    args.unshift(event, delta, deltaX, deltaY);
    
    return ($.event.dispatch || $.event.handle).apply(this, args);
}

})(jQuery);




/*!
 * jQuery imageready Plugin
 * http://www.zurb.com/playground/
 *
 * Copyright 2011, ZURB
 * Released under the MIT License
 */
(function(c){var b={};c.event.special.imageready={setup:function(f,e,d){b=f||b},add:function(d){var e=c(this),f;if(this.nodeType===1&&this.tagName.toLowerCase()==="img"&&this.src!==""){if(b.forceLoad){f=e.attr("src");e.attr("src","");a(this,d.handler);e.attr("src",f)}else{if(this.complete||this.readyState===4){d.handler.apply(this,arguments)}else{a(this,d.handler)}}}},teardown:function(d){c(this).unbind(".imageready")}};function a(d,f){var e=c(d);e.bind("load.imageready",function(){f.apply(d,arguments);e.unbind("load.imageready")})}}(jQuery));new function(a){a.fn.placeholder=function(b){b=b||{};var j=b.dataKey||"placeholderValue";var f=b.attr||"placeholder";var h=b.className||"placeholder";var k=b.values||[];var c=b.blockSubmit||false;var e=b.blankSubmit||false;var g=b.onSubmit||false;var i=b.value||"";var d=b.cursor_position||0;return this.filter(":input").each(function(l){a.data(this,j,k[l]||a(this).attr(f))}).each(function(){if(a.trim(a(this).val())===""){a(this).addClass(h).val(a.data(this,j))}}).focus(function(){if(a.trim(a(this).val())===a.data(this,j)){a(this).removeClass(h).val(i)}if(a.fn.setCursorPosition){a(this).setCursorPosition(d)}}).blur(function(){if(a.trim(a(this).val())===i){a(this).addClass(h).val(a.data(this,j))}}).each(function(l,m){if(c){new function(n){a(n.form).submit(function(){return a.trim(a(n).val())!=a.data(n,j)})}(m)}else{if(e){new function(n){a(n.form).submit(function(){if(a.trim(a(n).val())==a.data(n,j)){a(n).removeClass(h).val("")}return true})}(m)}else{if(g){new function(n){a(n.form).submit(g)}(m)}}}})}}(jQuery);jQuery(document).ready(function(b){function a(c){b("form.custom input:"+c).each(function(){var e=b(this).hide(),d=e.next("span.custom."+c);if(d.length===0){d=b('<span class="custom '+c+'"></span>').insertAfter(e)}d.toggleClass("checked",e.is(":checked"))})}a("checkbox");a("radio");b("form.custom select").each(function(){var e=b(this),g=e.next("div.custom.dropdown"),c=e.find("option"),d=0,f;if(g.length===0){g=b('<div class="custom dropdown"><a href="#" class="selector"></a><ul></ul></div>"');c.each(function(){f=b("<li>"+b(this).html()+"</li>");g.find("ul").append(f)});g.prepend('<a href="#" class="current">'+c.first().html()+"</a>");e.after(g);e.hide()}c.each(function(h){if(this.selected){g.find("li").eq(h).addClass("selected");g.find(".current").html(b(this).html())}});g.find("li").each(function(){g.addClass("open");if(b(this).outerWidth()>d){d=b(this).outerWidth()}g.removeClass("open")});g.css("width",d+18+"px");g.find("ul").css("width",d+16+"px")})});(function(b){function a(d){var f=d.prev(),e=f[0];e.checked=((e.checked)?false:true);d.toggleClass("checked");f.trigger("change")}function c(d){var f=d.prev(),e=f[0];b('input:radio[name="'+f.attr("name")+'"]').each(function(){b(this).next().removeClass("checked")});e.checked=((e.checked)?false:true);d.toggleClass("checked");f.trigger("change")}b(document).on("click","form.custom span.custom.checkbox",function(d){d.preventDefault();d.stopPropagation();a(b(this))});b(document).on("click","form.custom span.custom.radio",function(d){d.preventDefault();d.stopPropagation();c(b(this))});b(document).on("click","form.custom label",function(e){var d=b("#"+b(this).attr("for")),g,f;if(d.length!==0){if(d.attr("type")==="checkbox"){e.preventDefault();g=b(this).find("span.custom.checkbox");a(g)}else{if(d.attr("type")==="radio"){e.preventDefault();f=b(this).find("span.custom.radio");c(f)}}}});b(document).on("click","form.custom div.custom.dropdown a.current, form.custom div.custom.dropdown a.selector",function(d){var f=b(this),e=f.closest("div.custom.dropdown");d.preventDefault();e.toggleClass("open");if(e.hasClass("open")){b(document).bind("click.customdropdown",function(g){e.removeClass("open");b(document).unbind(".customdropdown")})}else{b(document).unbind(".customdropdown")}});b(document).on("click","form.custom div.custom.dropdown li",function(g){var h=b(this),e=h.closest("div.custom.dropdown"),f=e.prev(),d=0;g.preventDefault();g.stopPropagation();h.closest("ul").find("li").removeClass("selected");h.addClass("selected");e.removeClass("open").find("a.current").html(h.html());h.closest("ul").find("li").each(function(i){if(h[0]==this){d=i}});f[0].selectedIndex=d;f.trigger("change")})})(jQuery);

/*! http://mths.be/placeholder v1.8.5 by @mathias */
(function(j,i,l){var k="placeholder" in i.createElement("input"),h="placeholder" in i.createElement("textarea");if(k&&h){l.fn.placeholder=function(){return this};l.fn.placeholder.input=l.fn.placeholder.textarea=true}else{l.fn.placeholder=function(){return this.filter((k?"textarea":":input")+"[placeholder]").bind("focus.placeholder",o).bind("blur.placeholder",m).trigger("blur.placeholder").end()};l.fn.placeholder.input=k;l.fn.placeholder.textarea=h;l(function(){l("form").bind("submit.placeholder",function(){var a=l(".placeholder",this).each(o);setTimeout(function(){a.each(m)},10)})});l(j).bind("unload.placeholder",function(){l(".placeholder").val("")})}function n(b){var c={},a=/^jQuery\d+$/;l.each(b.attributes,function(d,e){if(e.specified&&!a.test(e.name)){c[e.name]=e.value}});return c}function o(){var a=l(this);if(a.val()===a.attr("placeholder")&&a.hasClass("placeholder")){if(a.data("placeholder-password")){a.hide().next().show().focus().attr("id",a.removeAttr("id").data("placeholder-id"))}else{a.val("").removeClass("placeholder")}}}function m(){var a,b=l(this),e=b,c=this.id;if(b.val()===""){if(b.is(":password")){if(!b.data("placeholder-textinput")){try{a=b.clone().attr({type:"text"})}catch(d){a=l("<input>").attr(l.extend(n(this),{type:"text"}))}a.removeAttr("name").data("placeholder-password",true).data("placeholder-id",c).bind("focus.placeholder",o);b.data("placeholder-textinput",a).data("placeholder-id",c).before(a)}b=b.removeAttr("id").hide().prev().attr("id",c).show()}b.addClass("placeholder").val(b.attr("placeholder"))}else{b.removeClass("placeholder")}}}(this,document,jQuery));



/*
 *  SliderNav - A Simple Content Slider with a Navigation Bar
 *  Copyright 2010 Monjurul Dolon, http://mdolon.com/
 *  Released under the MIT, BSD, and GPL Licenses.
 *  More information: http://devgrow.com/slidernav
 */
$.fn.sliderNav=function(options){var defaults={items:["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"],debug:false,height:null,arrows:true};var opts=$.extend(defaults,options);var o=$.meta?$.extend({},opts,$$.data()):opts;var slider=$(this);$(slider).addClass('slider');$('.slider-content li:first',slider).addClass('selected');$(slider).append('<div class="slider-nav"><ul></ul></div>');for(var i in o.items)$('.slider-nav ul',slider).append("<li><a alt='#"+o.items[i]+"'>"+o.items[i]+"</a></li>");var height=$('.slider-nav',slider).height();if(o.height)height=o.height;$('.slider-content, .slider-nav',slider).css('height',height);if(o.debug)$(slider).append('<div id="debug">Scroll Offset: <span>0</span></div>');$('.slider-nav a',slider).mouseover(function(event){var target=$(this).attr('alt');var cOffset=$('.slider-content',slider).offset().top;var tOffset=$('.slider-content '+target,slider).offset().top;var height=$('.slider-nav',slider).height();if(o.height)height=o.height;var pScroll=(tOffset-cOffset)-height/8;$('.slider-content li',slider).removeClass('selected');$(target).addClass('selected');$('.slider-content',slider).stop().animate({scrollTop:'+='+pScroll+'px'});if(o.debug)$('#debug span',slider).html(tOffset);});if(o.arrows){$('.slider-nav',slider).css('top','20px');$(slider).prepend('<div class="slide-up end"><span class="arrow up"></span></div>');$(slider).append('<div class="slide-down"><span class="arrow down"></span></div>');$('.slide-down',slider).click(function(){$('.slider-content',slider).animate({scrollTop:"+="+height+"px"},500);});$('.slide-up',slider).click(function(){$('.slider-content',slider).animate({scrollTop:"-="+height+"px"},500);});}};




/*
 * jScrollPane - v2.0.0beta11 - 2011-07-04
 * http://jscrollpane.kelvinluck.com/
 *
 * Copyright (c) 2010 Kelvin Luck
 * Dual licensed under the MIT and GPL licenses.
 */
(function(b,a,c){b.fn.jScrollPane=function(e){function d(D,O){var az,Q=this,Y,ak,v,am,T,Z,y,q,aA,aF,av,i,I,h,j,aa,U,aq,X,t,A,ar,af,an,G,l,au,ay,x,aw,aI,f,L,aj=true,P=true,aH=false,k=false,ap=D.clone(false,false).empty(),ac=b.fn.mwheelIntent?"mwheelIntent.jsp":"mousewheel.jsp";aI=D.css("paddingTop")+" "+D.css("paddingRight")+" "+D.css("paddingBottom")+" "+D.css("paddingLeft");f=(parseInt(D.css("paddingLeft"),10)||0)+(parseInt(D.css("paddingRight"),10)||0);function at(aR){var aM,aO,aN,aK,aJ,aQ,aP=false,aL=false;az=aR;if(Y===c){aJ=D.scrollTop();aQ=D.scrollLeft();D.css({overflow:"hidden",padding:0});ak=D.innerWidth()+f;v=D.innerHeight();D.width(ak);Y=b('<div class="jspPane" />').css("padding",aI).append(D.children());am=b('<div class="jspContainer" />').css({width:ak+"px",height:v+"px"}).append(Y).appendTo(D)}else{D.css("width","");aP=az.stickToBottom&&K();aL=az.stickToRight&&B();aK=D.innerWidth()+f!=ak||D.outerHeight()!=v;if(aK){ak=D.innerWidth()+f;v=D.innerHeight();am.css({width:ak+"px",height:v+"px"})}if(!aK&&L==T&&Y.outerHeight()==Z){D.width(ak);return}L=T;Y.css("width","");D.width(ak);am.find(">.jspVerticalBar,>.jspHorizontalBar").remove().end()}Y.css("overflow","auto");if(aR.contentWidth){T=aR.contentWidth}else{T=Y[0].scrollWidth}Z=Y[0].scrollHeight;Y.css("overflow","");y=T/ak;q=Z/v;aA=q>1;aF=y>1;if(!(aF||aA)){D.removeClass("jspScrollable");Y.css({top:0,width:am.width()-f});n();E();R();w();ai()}else{D.addClass("jspScrollable");aM=az.maintainPosition&&(I||aa);if(aM){aO=aD();aN=aB()}aG();z();F();if(aM){N(aL?(T-ak):aO,false);M(aP?(Z-v):aN,false)}J();ag();ao();if(az.enableKeyboardNavigation){S()}if(az.clickOnTrack){p()}C();if(az.hijackInternalLinks){m()}}if(az.autoReinitialise&&!aw){aw=setInterval(function(){at(az)},az.autoReinitialiseDelay)}else{if(!az.autoReinitialise&&aw){clearInterval(aw)}}aJ&&D.scrollTop(0)&&M(aJ,false);aQ&&D.scrollLeft(0)&&N(aQ,false);D.trigger("jsp-initialised",[aF||aA])}function aG(){if(aA){am.append(b('<div class="jspVerticalBar" />').append(b('<div class="jspCap jspCapTop" />'),b('<div class="jspTrack" />').append(b('<div class="jspDrag" />').append(b('<div class="jspDragTop" />'),b('<div class="jspDragBottom" />'))),b('<div class="jspCap jspCapBottom" />')));U=am.find(">.jspVerticalBar");aq=U.find(">.jspTrack");av=aq.find(">.jspDrag");if(az.showArrows){ar=b('<a class="jspArrow jspArrowUp" />').bind("mousedown.jsp",aE(0,-1)).bind("click.jsp",aC);af=b('<a class="jspArrow jspArrowDown" />').bind("mousedown.jsp",aE(0,1)).bind("click.jsp",aC);if(az.arrowScrollOnHover){ar.bind("mouseover.jsp",aE(0,-1,ar));af.bind("mouseover.jsp",aE(0,1,af))}al(aq,az.verticalArrowPositions,ar,af)}t=v;am.find(">.jspVerticalBar>.jspCap:visible,>.jspVerticalBar>.jspArrow").each(function(){t-=b(this).outerHeight()});av.hover(function(){av.addClass("jspHover")},function(){av.removeClass("jspHover")}).bind("mousedown.jsp",function(aJ){b("html").bind("dragstart.jsp selectstart.jsp",aC);av.addClass("jspActive");var s=aJ.pageY-av.position().top;b("html").bind("mousemove.jsp",function(aK){V(aK.pageY-s,false)}).bind("mouseup.jsp mouseleave.jsp",ax);return false});o()}}function o(){aq.height(t+"px");I=0;X=az.verticalGutter+aq.outerWidth();Y.width(ak-X-f);try{if(U.position().left===0){Y.css("margin-left",X+"px")}}catch(s){}}function z(){if(aF){am.append(b('<div class="jspHorizontalBar" />').append(b('<div class="jspCap jspCapLeft" />'),b('<div class="jspTrack" />').append(b('<div class="jspDrag" />').append(b('<div class="jspDragLeft" />'),b('<div class="jspDragRight" />'))),b('<div class="jspCap jspCapRight" />')));an=am.find(">.jspHorizontalBar");G=an.find(">.jspTrack");h=G.find(">.jspDrag");if(az.showArrows){ay=b('<a class="jspArrow jspArrowLeft" />').bind("mousedown.jsp",aE(-1,0)).bind("click.jsp",aC);x=b('<a class="jspArrow jspArrowRight" />').bind("mousedown.jsp",aE(1,0)).bind("click.jsp",aC);
if(az.arrowScrollOnHover){ay.bind("mouseover.jsp",aE(-1,0,ay));x.bind("mouseover.jsp",aE(1,0,x))}al(G,az.horizontalArrowPositions,ay,x)}h.hover(function(){h.addClass("jspHover")},function(){h.removeClass("jspHover")}).bind("mousedown.jsp",function(aJ){b("html").bind("dragstart.jsp selectstart.jsp",aC);h.addClass("jspActive");var s=aJ.pageX-h.position().left;b("html").bind("mousemove.jsp",function(aK){W(aK.pageX-s,false)}).bind("mouseup.jsp mouseleave.jsp",ax);return false});l=am.innerWidth();ah()}}function ah(){am.find(">.jspHorizontalBar>.jspCap:visible,>.jspHorizontalBar>.jspArrow").each(function(){l-=b(this).outerWidth()});G.width(l+"px");aa=0}function F(){if(aF&&aA){var aJ=G.outerHeight(),s=aq.outerWidth();t-=aJ;b(an).find(">.jspCap:visible,>.jspArrow").each(function(){l+=b(this).outerWidth()});l-=s;v-=s;ak-=aJ;G.parent().append(b('<div class="jspCorner" />').css("width",aJ+"px"));o();ah()}if(aF){Y.width((am.outerWidth()-f)+"px")}Z=Y.outerHeight();q=Z/v;if(aF){au=Math.ceil(1/y*l);if(au>az.horizontalDragMaxWidth){au=az.horizontalDragMaxWidth}else{if(au<az.horizontalDragMinWidth){au=az.horizontalDragMinWidth}}h.width(au+"px");j=l-au;ae(aa)}if(aA){A=Math.ceil(1/q*t);if(A>az.verticalDragMaxHeight){A=az.verticalDragMaxHeight}else{if(A<az.verticalDragMinHeight){A=az.verticalDragMinHeight}}av.height(A+"px");i=t-A;ad(I)}}function al(aK,aM,aJ,s){var aO="before",aL="after",aN;if(aM=="os"){aM=/Mac/.test(navigator.platform)?"after":"split"}if(aM==aO){aL=aM}else{if(aM==aL){aO=aM;aN=aJ;aJ=s;s=aN}}aK[aO](aJ)[aL](s)}function aE(aJ,s,aK){return function(){H(aJ,s,this,aK);this.blur();return false}}function H(aM,aL,aP,aO){aP=b(aP).addClass("jspActive");var aN,aK,aJ=true,s=function(){if(aM!==0){Q.scrollByX(aM*az.arrowButtonSpeed)}if(aL!==0){Q.scrollByY(aL*az.arrowButtonSpeed)}aK=setTimeout(s,aJ?az.initialDelay:az.arrowRepeatFreq);aJ=false};s();aN=aO?"mouseout.jsp":"mouseup.jsp";aO=aO||b("html");aO.bind(aN,function(){aP.removeClass("jspActive");aK&&clearTimeout(aK);aK=null;aO.unbind(aN)})}function p(){w();if(aA){aq.bind("mousedown.jsp",function(aO){if(aO.originalTarget===c||aO.originalTarget==aO.currentTarget){var aM=b(this),aP=aM.offset(),aN=aO.pageY-aP.top-I,aK,aJ=true,s=function(){var aS=aM.offset(),aT=aO.pageY-aS.top-A/2,aQ=v*az.scrollPagePercent,aR=i*aQ/(Z-v);if(aN<0){if(I-aR>aT){Q.scrollByY(-aQ)}else{V(aT)}}else{if(aN>0){if(I+aR<aT){Q.scrollByY(aQ)}else{V(aT)}}else{aL();return}}aK=setTimeout(s,aJ?az.initialDelay:az.trackClickRepeatFreq);aJ=false},aL=function(){aK&&clearTimeout(aK);aK=null;b(document).unbind("mouseup.jsp",aL)};s();b(document).bind("mouseup.jsp",aL);return false}})}if(aF){G.bind("mousedown.jsp",function(aO){if(aO.originalTarget===c||aO.originalTarget==aO.currentTarget){var aM=b(this),aP=aM.offset(),aN=aO.pageX-aP.left-aa,aK,aJ=true,s=function(){var aS=aM.offset(),aT=aO.pageX-aS.left-au/2,aQ=ak*az.scrollPagePercent,aR=j*aQ/(T-ak);if(aN<0){if(aa-aR>aT){Q.scrollByX(-aQ)}else{W(aT)}}else{if(aN>0){if(aa+aR<aT){Q.scrollByX(aQ)}else{W(aT)}}else{aL();return}}aK=setTimeout(s,aJ?az.initialDelay:az.trackClickRepeatFreq);aJ=false},aL=function(){aK&&clearTimeout(aK);aK=null;b(document).unbind("mouseup.jsp",aL)};s();b(document).bind("mouseup.jsp",aL);return false}})}}function w(){if(G){G.unbind("mousedown.jsp")}if(aq){aq.unbind("mousedown.jsp")}}function ax(){b("html").unbind("dragstart.jsp selectstart.jsp mousemove.jsp mouseup.jsp mouseleave.jsp");if(av){av.removeClass("jspActive")}if(h){h.removeClass("jspActive")}}function V(s,aJ){if(!aA){return}if(s<0){s=0}else{if(s>i){s=i}}if(aJ===c){aJ=az.animateScroll}if(aJ){Q.animate(av,"top",s,ad)}else{av.css("top",s);ad(s)}}function ad(aJ){if(aJ===c){aJ=av.position().top}am.scrollTop(0);I=aJ;var aM=I===0,aK=I==i,aL=aJ/i,s=-aL*(Z-v);if(aj!=aM||aH!=aK){aj=aM;aH=aK;D.trigger("jsp-arrow-change",[aj,aH,P,k])}u(aM,aK);Y.css("top",s);D.trigger("jsp-scroll-y",[-s,aM,aK]).trigger("scroll")}function W(aJ,s){if(!aF){return}if(aJ<0){aJ=0}else{if(aJ>j){aJ=j}}if(s===c){s=az.animateScroll}if(s){Q.animate(h,"left",aJ,ae)
}else{h.css("left",aJ);ae(aJ)}}function ae(aJ){if(aJ===c){aJ=h.position().left}am.scrollTop(0);aa=aJ;var aM=aa===0,aL=aa==j,aK=aJ/j,s=-aK*(T-ak);if(P!=aM||k!=aL){P=aM;k=aL;D.trigger("jsp-arrow-change",[aj,aH,P,k])}r(aM,aL);Y.css("left",s);D.trigger("jsp-scroll-x",[-s,aM,aL]).trigger("scroll")}function u(aJ,s){if(az.showArrows){ar[aJ?"addClass":"removeClass"]("jspDisabled");af[s?"addClass":"removeClass"]("jspDisabled")}}function r(aJ,s){if(az.showArrows){ay[aJ?"addClass":"removeClass"]("jspDisabled");x[s?"addClass":"removeClass"]("jspDisabled")}}function M(s,aJ){var aK=s/(Z-v);V(aK*i,aJ)}function N(aJ,s){var aK=aJ/(T-ak);W(aK*j,s)}function ab(aW,aR,aK){var aO,aL,aM,s=0,aV=0,aJ,aQ,aP,aT,aS,aU;try{aO=b(aW)}catch(aN){return}aL=aO.outerHeight();aM=aO.outerWidth();am.scrollTop(0);am.scrollLeft(0);while(!aO.is(".jspPane")){s+=aO.position().top;aV+=aO.position().left;aO=aO.offsetParent();if(/^body|html$/i.test(aO[0].nodeName)){return}}aJ=aB();aP=aJ+v;if(s<aJ||aR){aS=s-az.verticalGutter}else{if(s+aL>aP){aS=s-v+aL+az.verticalGutter}}if(aS){M(aS,aK)}aQ=aD();aT=aQ+ak;if(aV<aQ||aR){aU=aV-az.horizontalGutter}else{if(aV+aM>aT){aU=aV-ak+aM+az.horizontalGutter}}if(aU){N(aU,aK)}}function aD(){return -Y.position().left}function aB(){return -Y.position().top}function K(){var s=Z-v;return(s>20)&&(s-aB()<10)}function B(){var s=T-ak;return(s>20)&&(s-aD()<10)}function ag(){am.unbind(ac).bind(ac,function(aM,aN,aL,aJ){var aK=aa,s=I;Q.scrollBy(aL*az.mouseWheelSpeed,-aJ*az.mouseWheelSpeed,false);return aK==aa&&s==I})}function n(){am.unbind(ac)}function aC(){return false}function J(){Y.find(":input,a").unbind("focus.jsp").bind("focus.jsp",function(s){ab(s.target,false)})}function E(){Y.find(":input,a").unbind("focus.jsp")}function S(){var s,aJ,aL=[];aF&&aL.push(an[0]);aA&&aL.push(U[0]);Y.focus(function(){D.focus()});D.attr("tabindex",0).unbind("keydown.jsp keypress.jsp").bind("keydown.jsp",function(aO){if(aO.target!==this&&!(aL.length&&b(aO.target).closest(aL).length)){return}var aN=aa,aM=I;switch(aO.keyCode){case 40:case 38:case 34:case 32:case 33:case 39:case 37:s=aO.keyCode;aK();break;case 35:M(Z-v);s=null;break;case 36:M(0);s=null;break}aJ=aO.keyCode==s&&aN!=aa||aM!=I;return !aJ}).bind("keypress.jsp",function(aM){if(aM.keyCode==s){aK()}return !aJ});if(az.hideFocus){D.css("outline","none");if("hideFocus" in am[0]){D.attr("hideFocus",true)}}else{D.css("outline","");if("hideFocus" in am[0]){D.attr("hideFocus",false)}}function aK(){var aN=aa,aM=I;switch(s){case 40:Q.scrollByY(az.keyboardSpeed,false);break;case 38:Q.scrollByY(-az.keyboardSpeed,false);break;case 34:case 32:Q.scrollByY(v*az.scrollPagePercent,false);break;case 33:Q.scrollByY(-v*az.scrollPagePercent,false);break;case 39:Q.scrollByX(az.keyboardSpeed,false);break;case 37:Q.scrollByX(-az.keyboardSpeed,false);break}aJ=aN!=aa||aM!=I;return aJ}}function R(){D.attr("tabindex","-1").removeAttr("tabindex").unbind("keydown.jsp keypress.jsp")}function C(){if(location.hash&&location.hash.length>1){var aL,aJ,aK=escape(location.hash);try{aL=b(aK)}catch(s){return}if(aL.length&&Y.find(aK)){if(am.scrollTop()===0){aJ=setInterval(function(){if(am.scrollTop()>0){ab(aK,true);b(document).scrollTop(am.position().top);clearInterval(aJ)}},50)}else{ab(aK,true);b(document).scrollTop(am.position().top)}}}}function ai(){b("a.jspHijack").unbind("click.jsp-hijack").removeClass("jspHijack")}function m(){ai();b("a[href^=#]").addClass("jspHijack").bind("click.jsp-hijack",function(){var s=this.href.split("#"),aJ;if(s.length>1){aJ=s[1];if(aJ.length>0&&Y.find("#"+aJ).length>0){ab("#"+aJ,true);return false}}})}function ao(){var aK,aJ,aM,aL,aN,s=false;am.unbind("touchstart.jsp touchmove.jsp touchend.jsp click.jsp-touchclick").bind("touchstart.jsp",function(aO){var aP=aO.originalEvent.touches[0];aK=aD();aJ=aB();aM=aP.pageX;aL=aP.pageY;aN=false;s=true}).bind("touchmove.jsp",function(aR){if(!s){return}var aQ=aR.originalEvent.touches[0],aP=aa,aO=I;Q.scrollTo(aK+aM-aQ.pageX,aJ+aL-aQ.pageY);aN=aN||Math.abs(aM-aQ.pageX)>5||Math.abs(aL-aQ.pageY)>5;
return aP==aa&&aO==I}).bind("touchend.jsp",function(aO){s=false}).bind("click.jsp-touchclick",function(aO){if(aN){aN=false;return false}})}function g(){var s=aB(),aJ=aD();D.removeClass("jspScrollable").unbind(".jsp");D.replaceWith(ap.append(Y.children()));ap.scrollTop(s);ap.scrollLeft(aJ)}b.extend(Q,{reinitialise:function(aJ){aJ=b.extend({},az,aJ);at(aJ)},scrollToElement:function(aK,aJ,s){ab(aK,aJ,s)},scrollTo:function(aK,s,aJ){N(aK,aJ);M(s,aJ)},scrollToX:function(aJ,s){N(aJ,s)},scrollToY:function(s,aJ){M(s,aJ)},scrollToPercentX:function(aJ,s){N(aJ*(T-ak),s)},scrollToPercentY:function(aJ,s){M(aJ*(Z-v),s)},scrollBy:function(aJ,s,aK){Q.scrollByX(aJ,aK);Q.scrollByY(s,aK)},scrollByX:function(s,aK){var aJ=aD()+Math[s<0?"floor":"ceil"](s),aL=aJ/(T-ak);W(aL*j,aK)},scrollByY:function(s,aK){var aJ=aB()+Math[s<0?"floor":"ceil"](s),aL=aJ/(Z-v);V(aL*i,aK)},positionDragX:function(s,aJ){W(s,aJ)},positionDragY:function(aJ,s){V(aJ,s)},animate:function(aJ,aM,s,aL){var aK={};aK[aM]=s;aJ.animate(aK,{duration:az.animateDuration,easing:az.animateEase,queue:false,step:aL})},getContentPositionX:function(){return aD()},getContentPositionY:function(){return aB()},getContentWidth:function(){return T},getContentHeight:function(){return Z},getPercentScrolledX:function(){return aD()/(T-ak)},getPercentScrolledY:function(){return aB()/(Z-v)},getIsScrollableH:function(){return aF},getIsScrollableV:function(){return aA},getContentPane:function(){return Y},scrollToBottom:function(s){V(i,s)},hijackInternalLinks:function(){m()},destroy:function(){g()}});at(O)}e=b.extend({},b.fn.jScrollPane.defaults,e);b.each(["mouseWheelSpeed","arrowButtonSpeed","trackClickSpeed","keyboardSpeed"],function(){e[this]=e[this]||e.speed});return this.each(function(){var f=b(this),g=f.data("jsp");if(g){g.reinitialise(e)}else{g=new d(f,e);f.data("jsp",g)}})};b.fn.jScrollPane.defaults={showArrows:false,maintainPosition:true,stickToBottom:false,stickToRight:false,clickOnTrack:true,autoReinitialise:false,autoReinitialiseDelay:500,verticalDragMinHeight:0,verticalDragMaxHeight:99999,horizontalDragMinWidth:0,horizontalDragMaxWidth:99999,contentWidth:c,animateScroll:false,animateDuration:300,animateEase:"linear",hijackInternalLinks:false,verticalGutter:4,horizontalGutter:4,mouseWheelSpeed:0,arrowButtonSpeed:0,arrowRepeatFreq:50,arrowScrollOnHover:false,trackClickSpeed:0,trackClickRepeatFreq:70,verticalArrowPositions:"split",horizontalArrowPositions:"split",enableKeyboardNavigation:true,hideFocus:false,keyboardSpeed:0,initialDelay:300,speed:30,scrollPagePercent:0.8}})(jQuery,this);


/*!
Video.js - HTML5 Video Player
Version 3.0.7

LGPL v3 LICENSE INFO
This file is part of Video.js. Copyright 2011 Zencoder, Inc.

Video.js is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Video.js is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with Video.js.  If not, see <http://www.gnu.org/licenses/>.
*/
(function(window,undefined){var document=window.document,CDN_VERSION="3.0";document.createElement("video");document.createElement("audio");var VideoJS=function(id,addOptions,ready){var tag;if(typeof id=="string"){if(id.indexOf("#")===0){id=id.slice(1)}if(_V_.players[id]){return _V_.players[id]}else{tag=_V_.el(id)}}else{tag=id}if(!tag||!tag.nodeName){throw new TypeError("The element or ID supplied is not valid. (VideoJS)")}return tag.player||new _V_.Player(tag,addOptions,ready)},_V_=VideoJS;VideoJS.players={};VideoJS.options={techOrder:["html5","flash"],html5:{},flash:{swf:"http://vjs.zencdn.net/c/video-js.swf"},width:"auto",height:"auto",defaultVolume:0,components:["poster","loadingSpinner","bigPlayButton",{name:"controlBar",options:{components:["playToggle","fullscreenToggle","currentTimeDisplay","timeDivider","durationDisplay","remainingTimeDisplay",{name:"progressControl",options:{components:[{name:"seekBar",options:{components:["loadProgressBar","playProgressBar","seekHandle"]}}]}},{name:"volumeControl",options:{components:[{name:"volumeBar",options:{components:["volumeLevel","volumeHandle"]}}]}},"muteToggle"]}},"subtitlesDisplay"]};if(CDN_VERSION!="GENERATED_CDN_VSN"){_V_.options.flash.swf="http://vjs.zencdn.net/"+CDN_VERSION+"/video-js.swf"}_V_.autoSetup=function(){var options,vid,player,vids=document.getElementsByTagName("video");if(vids&&vids.length>0){for(var i=0,j=vids.length;i<j;i++){vid=vids[i];if(vid&&vid.getAttribute){if(vid.player===undefined){options=vid.getAttribute("data-setup");if(options!==null){options=JSON.parse(options||"{}");player=_V_(vid,options)}}}else{_V_.autoSetupTimeout(1);break}}}else{if(!_V_.windowLoaded){_V_.autoSetupTimeout(1)}}};_V_.autoSetupTimeout=function(wait){setTimeout(_V_.autoSetup,wait)};_V_.merge=function(obj1,obj2,safe){if(!obj2){obj2={}}for(var attrname in obj2){if(obj2.hasOwnProperty(attrname)&&(!safe||!obj1.hasOwnProperty(attrname))){obj1[attrname]=obj2[attrname]}}return obj1};_V_.extend=function(obj){this.merge(this,obj,true)};_V_.extend({tech:{},controlSets:{},isIE:function(){return !+"\v1"},isIPad:function(){return navigator.userAgent.match(/iPad/i)!==null},isIPhone:function(){return navigator.userAgent.match(/iPhone/i)!==null},isIOS:function(){return VideoJS.isIPhone()||VideoJS.isIPad()},iOSVersion:function(){var match=navigator.userAgent.match(/OS (\d+)_/i);if(match&&match[1]){return match[1]}},isAndroid:function(){return navigator.userAgent.match(/Android.*AppleWebKit/i)!==null},androidVersion:function(){var match=navigator.userAgent.match(/Android (\d+)\./i);if(match&&match[1]){return match[1]}},testVid:document.createElement("video"),ua:navigator.userAgent,support:{},each:function(arr,fn){if(!arr||arr.length===0){return}for(var i=0,j=arr.length;i<j;i++){fn.call(this,arr[i],i)}},el:function(id){return document.getElementById(id)},createElement:function(tagName,attributes){var el=document.createElement(tagName),attrname;for(attrname in attributes){if(attributes.hasOwnProperty(attrname)){if(attrname.indexOf("-")!==-1){el.setAttribute(attrname,attributes[attrname])}else{el[attrname]=attributes[attrname]}}}return el},insertFirst:function(node,parent){if(parent.firstChild){parent.insertBefore(node,parent.firstChild)}else{parent.appendChild(node)}},addClass:function(element,classToAdd){if((" "+element.className+" ").indexOf(" "+classToAdd+" ")==-1){element.className=element.className===""?classToAdd:element.className+" "+classToAdd}},removeClass:function(element,classToRemove){if(element.className.indexOf(classToRemove)==-1){return}var classNames=element.className.split(" ");classNames.splice(classNames.indexOf(classToRemove),1);element.className=classNames.join(" ")},remove:function(item,array){if(!array){return}var i=array.indexOf(item);if(i!=-1){return array.splice(i,1)}},blockTextSelection:function(){document.body.focus();document.onselectstart=function(){return false}},unblockTextSelection:function(){document.onselectstart=function(){return true}},formatTime:function(seconds,guide){var guide=guide||seconds,s=Math.floor(seconds%60),m=Math.floor(seconds/60%60),h=Math.floor(seconds/3600),gm=Math.floor(guide/60%60),gh=Math.floor(guide/3600);h=(h>0||gh>0)?h+":":"";m=(((h||gm>=10)&&m<10)?"0"+m:m)+":";s=(s<10)?"0"+s:s;return h+m+s},capitalize:function(string){return string.charAt(0).toUpperCase()+string.slice(1)},getRelativePosition:function(x,relativeElement){return Math.max(0,Math.min(1,(x-_V_.findPosX(relativeElement))/relativeElement.offsetWidth))},getComputedStyleValue:function(element,style){return window.getComputedStyle(element,null).getPropertyValue(style)},trim:function(string){return string.toString().replace(/^\s+/,"").replace(/\s+$/,"")},round:function(num,dec){if(!dec){dec=0}return Math.round(num*Math.pow(10,dec))/Math.pow(10,dec)},isEmpty:function(object){for(var prop in object){return false}return true},createTimeRange:function(start,end){return{length:1,start:function(){return start},end:function(){return end}}},cache:{},guid:1,expando:"vdata"+(new Date).getTime(),getData:function(elem){var id=elem[_V_.expando];if(!id){id=elem[_V_.expando]=_V_.guid++;_V_.cache[id]={}}return _V_.cache[id]},removeData:function(elem){var id=elem[_V_.expando];if(!id){return}delete _V_.cache[id];try{delete elem[_V_.expando]}catch(e){if(elem.removeAttribute){elem.removeAttribute(_V_.expando)}else{elem[_V_.expando]=null}}},proxy:function(context,fn){if(!fn.guid){fn.guid=_V_.guid++}var ret=function(){return fn.apply(context,arguments)};ret.guid=fn.guid;return ret},get:function(url,onSuccess,onError){var local=(url.indexOf("file:")==0||(window.location.href.indexOf("file:")==0&&url.indexOf("http:")==-1));if(typeof XMLHttpRequest=="undefined"){XMLHttpRequest=function(){try{return new ActiveXObject("Msxml2.XMLHTTP.6.0")}catch(e){}try{return new ActiveXObject("Msxml2.XMLHTTP.3.0")}catch(f){}try{return new ActiveXObject("Msxml2.XMLHTTP")}catch(g){}throw new Error("This browser does not support XMLHttpRequest.")}}var request=new XMLHttpRequest();try{request.open("GET",url)}catch(e){_V_.log("VideoJS XMLHttpRequest (open)",e);return false}request.onreadystatechange=_V_.proxy(this,function(){if(request.readyState==4){if(request.status==200||local&&request.status==0){onSuccess(request.responseText)}else{if(onError){onError()}}}});try{request.send()}catch(e){_V_.log("VideoJS XMLHttpRequest (send)",e);if(onError){onError(e)}}},setLocalStorage:function(key,value){var localStorage=localStorage||false;if(!localStorage){return}try{localStorage[key]=value}catch(e){if(e.code==22||e.code==1014){_V_.log("LocalStorage Full (VideoJS)",e)}else{_V_.log("LocalStorage Error (VideoJS)",e)}}}});_V_.log=function(){_V_.log.history=_V_.log.history||[];_V_.log.history.push(arguments);if(window.console){arguments.callee=arguments.callee.caller;var newarr=[].slice.call(arguments);(typeof console.log==="object"?_V_.log.apply.call(console.log,console,newarr):console.log.apply(console,newarr))}};(function(b){function c(){}for(var d="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,timeStamp,profile,profileEnd,time,timeEnd,trace,warn".split(","),a;a=d.pop();){b[a]=b[a]||c}})((function(){try{console.log();return window.console}catch(err){return window.console={}}})());if("getBoundingClientRect" in document.documentElement){_V_.findPosX=function(el){var box;try{box=el.getBoundingClientRect()}catch(e){}if(!box){return 0}var docEl=document.documentElement,body=document.body,clientLeft=docEl.clientLeft||body.clientLeft||0,scrollLeft=window.pageXOffset||body.scrollLeft,left=box.left+scrollLeft-clientLeft;return left}}else{_V_.findPosX=function(el){var curleft=el.offsetLeft;while(el=obj.offsetParent){if(el.className.indexOf("video-js")==-1){}else{}curleft+=el.offsetLeft}return curleft}}(function(){var initializing=false,fnTest=/xyz/.test(function(){xyz})?/\b_super\b/:/.*/;_V_.Class=function(){};_V_.Class.extend=function(prop){var _super=this.prototype;initializing=true;var prototype=new this();initializing=false;for(var name in prop){prototype[name]=typeof prop[name]=="function"&&typeof _super[name]=="function"&&fnTest.test(prop[name])?(function(name,fn){return function(){var tmp=this._super;this._super=_super[name];var ret=fn.apply(this,arguments);this._super=tmp;return ret}})(name,prop[name]):prop[name]}function Class(){if(!initializing&&this.init){return this.init.apply(this,arguments)}else{if(!initializing){return arguments.callee.prototype.init()}}}Class.prototype=prototype;Class.constructor=Class;Class.extend=arguments.callee;return Class}})();_V_.Component=_V_.Class.extend({init:function(player,options){this.player=player;if(options&&options.el){this.el=options.el}else{this.el=this.createElement()}if(options&&options.components){_V_.each.call(this,options.components,function(comp){this.addComponent(comp)})}},destroy:function(){},createElement:function(type,attrs){return _V_.createElement(type||"div",attrs)},buildCSSClass:function(){return""},addComponent:function(nameORobj){var name,componentClass,options,component;if(typeof nameORobj=="string"){name=nameORobj}else{name=nameORobj.name;componentClass=nameORobj.componentClass;options=nameORobj.options}if(!componentClass){componentClass=_V_.capitalize(name)}component=new _V_[componentClass](this.player||this,options);if(this.components===undefined){this.components=[]}this.components.push(component);this.el.appendChild(component.el)},show:function(){this.el.style.display="block"},hide:function(){this.el.style.display="none"},addClass:function(classToAdd){_V_.addClass(this.el,classToAdd)},removeClass:function(classToRemove){_V_.removeClass(this.el,classToRemove)},addEvent:function(type,fn){return _V_.addEvent(this.el,type,_V_.proxy(this,fn))},removeEvent:function(type,fn){return _V_.removeEvent(this.el,type,fn)},triggerEvent:function(type,e){return _V_.triggerEvent(this.el,type,e)},ready:function(fn){if(!fn){return this}if(this.isReady){fn.call(this)}else{if(this.readyQueue===undefined){this.readyQueue=[]}this.readyQueue.push(fn)}return this},triggerReady:function(){this.isReady=true;if(this.readyQueue&&this.readyQueue.length>0){this.each(this.readyQueue,function(fn){fn.call(this)});this.readyQueue=[]}},each:function(arr,fn){if(!arr||arr.length===0){return}for(var i=0,j=arr.length;i<j;i++){if(fn.call(this,arr[i],i)){break}}},extend:function(obj){for(var attrname in obj){if(obj.hasOwnProperty(attrname)){this[attrname]=obj[attrname]}}},proxy:function(fn){return _V_.proxy(this,fn)}});_V_.Control=_V_.Component.extend({buildCSSClass:function(){return"vjs-control "+this._super()}});_V_.Button=_V_.Control.extend({init:function(player,options){this._super(player,options);this.addEvent("click",this.onClick);this.addEvent("focus",this.onFocus);this.addEvent("blur",this.onBlur)},createElement:function(type,attrs){attrs=_V_.merge({className:this.buildCSSClass(),innerHTML:'<div><span class="vjs-control-text">'+(this.buttonText||"Need Text")+"</span></div>",role:"button",tabIndex:0},attrs);return this._super(type,attrs)},onClick:function(){},onFocus:function(){_V_.addEvent(document,"keyup",_V_.proxy(this,this.onKeyPress))},onKeyPress:function(event){if(event.which==32||event.which==13){event.preventDefault();this.onClick()}},onBlur:function(){_V_.removeEvent(document,"keyup",_V_.proxy(this,this.onKeyPress))}});_V_.PlayButton=_V_.Button.extend({buttonText:"Play",buildCSSClass:function(){return"vjs-play-button "+this._super()},onClick:function(){this.player.play()}});_V_.PauseButton=_V_.Button.extend({buttonText:"Pause",buildCSSClass:function(){return"vjs-pause-button "+this._super()},onClick:function(){this.player.pause()}});_V_.PlayToggle=_V_.Button.extend({buttonText:"Play",init:function(player,options){this._super(player,options);player.addEvent("play",_V_.proxy(this,this.onPlay));player.addEvent("pause",_V_.proxy(this,this.onPause))},buildCSSClass:function(){return"vjs-play-control "+this._super()},onClick:function(){if(this.player.paused()){this.player.play()}else{this.player.pause()}},onPlay:function(){_V_.removeClass(this.el,"vjs-paused");_V_.addClass(this.el,"vjs-playing")},onPause:function(){_V_.removeClass(this.el,"vjs-playing");_V_.addClass(this.el,"vjs-paused")}});_V_.FullscreenToggle=_V_.Button.extend({buttonText:"Fullscreen",buildCSSClass:function(){return"vjs-fullscreen-control "+this._super()},onClick:function(){if(!this.player.videoIsFullScreen){this.player.requestFullScreen()}else{this.player.cancelFullScreen()}}});_V_.BigPlayButton=_V_.Button.extend({init:function(player,options){this._super(player,options);player.addEvent("play",_V_.proxy(this,this.hide));player.addEvent("ended",_V_.proxy(this,this.show))},createElement:function(){return this._super("div",{className:"vjs-big-play-button",innerHTML:"<span></span>"})},onClick:function(){if(this.player.currentTime()){this.player.currentTime(0)}this.player.play()}});_V_.LoadingSpinner=_V_.Component.extend({init:function(player,options){this._super(player,options);player.addEvent("canplay",_V_.proxy(this,this.hide));player.addEvent("canplaythrough",_V_.proxy(this,this.hide));player.addEvent("playing",_V_.proxy(this,this.hide));player.addEvent("seeking",_V_.proxy(this,this.show));player.addEvent("error",_V_.proxy(this,this.show));player.addEvent("stalled",_V_.proxy(this,this.show));player.addEvent("waiting",_V_.proxy(this,this.show))},createElement:function(){var classNameSpinner,innerHtmlSpinner;if(typeof this.player.el.style.WebkitBorderRadius=="string"||typeof this.player.el.style.MozBorderRadius=="string"||typeof this.player.el.style.KhtmlBorderRadius=="string"||typeof this.player.el.style.borderRadius=="string"){classNameSpinner="vjs-loading-spinner";innerHtmlSpinner="<div class='ball1'></div><div class='ball2'></div><div class='ball3'></div><div class='ball4'></div><div class='ball5'></div><div class='ball6'></div><div class='ball7'></div><div class='ball8'></div>"}else{classNameSpinner="vjs-loading-spinner-fallback";innerHtmlSpinner=""}return this._super("div",{className:classNameSpinner,innerHTML:innerHtmlSpinner})}});_V_.ControlBar=_V_.Component.extend({init:function(player,options){this._super(player,options);player.addEvent("play",this.proxy(this.show));player.addEvent("mouseover",this.proxy(this.reveal));player.addEvent("mouseout",this.proxy(this.conceal))},createElement:function(){return _V_.createElement("div",{className:"vjs-controls"})},reveal:function(){this.el.style.opacity=1},conceal:function(){this.el.style.opacity=0}});_V_.CurrentTimeDisplay=_V_.Component.extend({init:function(player,options){this._super(player,options);player.addEvent("timeupdate",_V_.proxy(this,this.updateContent))},createElement:function(){var el=this._super("div",{className:"vjs-current-time vjs-time-controls vjs-control"});this.content=_V_.createElement("div",{className:"vjs-current-time-display",innerHTML:"0:00"});el.appendChild(_V_.createElement("div").appendChild(this.content));return el},updateContent:function(){var time=(this.player.scrubbing)?this.player.values.currentTime:this.player.currentTime();this.content.innerHTML=_V_.formatTime(time,this.player.duration())}});_V_.DurationDisplay=_V_.Component.extend({init:function(player,options){this._super(player,options);player.addEvent("timeupdate",_V_.proxy(this,this.updateContent))},createElement:function(){var el=this._super("div",{className:"vjs-duration vjs-time-controls vjs-control"});this.content=_V_.createElement("div",{className:"vjs-duration-display",innerHTML:"0:00"});el.appendChild(_V_.createElement("div").appendChild(this.content));return el},updateContent:function(){if(this.player.duration()){this.content.innerHTML=_V_.formatTime(this.player.duration())}}});_V_.TimeDivider=_V_.Component.extend({createElement:function(){return this._super("div",{className:"vjs-time-divider",innerHTML:"<div><span>/</span></div>"})}});_V_.RemainingTimeDisplay=_V_.Component.extend({init:function(player,options){this._super(player,options);player.addEvent("timeupdate",_V_.proxy(this,this.updateContent))},createElement:function(){var el=this._super("div",{className:"vjs-remaining-time vjs-time-controls vjs-control"});this.content=_V_.createElement("div",{className:"vjs-remaining-time-display",innerHTML:"-0:00"});el.appendChild(_V_.createElement("div").appendChild(this.content));return el},updateContent:function(){if(this.player.duration()){this.content.innerHTML="-"+_V_.formatTime(this.player.remainingTime())}}});_V_.Slider=_V_.Component.extend({init:function(player,options){this._super(player,options);_V_.each.call(this,this.components,function(comp){if(comp instanceof _V_[this.barClass]){this.bar=comp}else{if(comp instanceof _V_[this.handleClass]){this.handle=comp}}});player.addEvent(this.playerEvent,_V_.proxy(this,this.update));this.addEvent("mousedown",this.onMouseDown);this.addEvent("focus",this.onFocus);this.addEvent("blur",this.onBlur);setTimeout(this.proxy(this.update),0)},createElement:function(type,attrs){attrs=_V_.merge({role:"slider","aria-valuenow":0,"aria-valuemin":0,"aria-valuemax":100,tabIndex:0},attrs);return this._super(type,attrs)},onMouseDown:function(event){event.preventDefault();_V_.blockTextSelection();_V_.addEvent(document,"mousemove",_V_.proxy(this,this.onMouseMove));_V_.addEvent(document,"mouseup",_V_.proxy(this,this.onMouseUp));this.onMouseMove(event)},onMouseUp:function(event){_V_.unblockTextSelection();_V_.removeEvent(document,"mousemove",this.onMouseMove,false);_V_.removeEvent(document,"mouseup",this.onMouseUp,false);this.update()},update:function(){var barProgress,progress=this.getPercent();handle=this.handle,bar=this.bar;if(isNaN(progress)){progress=0}barProgress=progress;if(handle){var box=this.el,boxWidth=box.offsetWidth,handlePercent=(handle.el.offsetWidth)?handle.el.offsetWidth/boxWidth:0,boxAdjustedPercent=1-handlePercent;adjustedProgress=progress*boxAdjustedPercent,barProgress=adjustedProgress+(handlePercent/2);handle.el.style.left=_V_.round(adjustedProgress*100,2)+"%"}bar.el.style.width=_V_.round(barProgress*100,2)+"%"},calculateDistance:function(event){var box=this.el,boxX=_V_.findPosX(box),boxW=box.offsetWidth,handle=this.handle;if(handle){var handleW=handle.el.offsetWidth;boxX=boxX+(handleW/2);boxW=boxW-handleW}return Math.max(0,Math.min(1,(event.pageX-boxX)/boxW))},onFocus:function(event){_V_.addEvent(document,"keyup",_V_.proxy(this,this.onKeyPress))},onKeyPress:function(event){if(event.which==37){event.preventDefault();this.stepBack()}else{if(event.which==39){event.preventDefault();this.stepForward()}}},onBlur:function(event){_V_.removeEvent(document,"keyup",_V_.proxy(this,this.onKeyPress))}});_V_.ProgressControl=_V_.Component.extend({createElement:function(){return this._super("div",{className:"vjs-progress-control vjs-control"})}});_V_.SeekBar=_V_.Slider.extend({barClass:"PlayProgressBar",handleClass:"SeekHandle",playerEvent:"timeupdate",init:function(player,options){this._super(player,options)},createElement:function(){return this._super("div",{className:"vjs-progress-holder"})},getPercent:function(){return this.player.currentTime()/this.player.duration()},onMouseDown:function(event){this._super(event);this.player.scrubbing=true;this.videoWasPlaying=!this.player.paused();this.player.pause()},onMouseMove:function(event){var newTime=this.calculateDistance(event)*this.player.duration();if(newTime==this.player.duration()){newTime=newTime-0.1}this.player.currentTime(newTime)},onMouseUp:function(event){this._super(event);this.player.scrubbing=false;if(this.videoWasPlaying){this.player.play()}},stepForward:function(){this.player.currentTime(this.player.currentTime()+1)},stepBack:function(){this.player.currentTime(this.player.currentTime()-1)}});_V_.LoadProgressBar=_V_.Component.extend({init:function(player,options){this._super(player,options);player.addEvent("progress",_V_.proxy(this,this.update))},createElement:function(){return this._super("div",{className:"vjs-load-progress",innerHTML:'<span class="vjs-control-text">Loaded: 0%</span>'})},update:function(){if(this.el.style){this.el.style.width=_V_.round(this.player.bufferedPercent()*100,2)+"%"}}});_V_.PlayProgressBar=_V_.Component.extend({createElement:function(){return this._super("div",{className:"vjs-play-progress",innerHTML:'<span class="vjs-control-text">Progress: 0%</span>'})}});_V_.SeekHandle=_V_.Component.extend({createElement:function(){return this._super("div",{className:"vjs-seek-handle",innerHTML:'<span class="vjs-control-text">00:00</span>'})}});_V_.VolumeControl=_V_.Component.extend({createElement:function(){return this._super("div",{className:"vjs-volume-control vjs-control"})}});_V_.VolumeBar=_V_.Slider.extend({barClass:"VolumeLevel",handleClass:"VolumeHandle",playerEvent:"volumechange",createElement:function(){return this._super("div",{className:"vjs-volume-bar"})},onMouseMove:function(event){this.player.volume(this.calculateDistance(event))},getPercent:function(){return this.player.volume()},stepForward:function(){this.player.volume(this.player.volume()+0.1)},stepBack:function(){this.player.volume(this.player.volume()-0.1)}});_V_.VolumeLevel=_V_.Component.extend({createElement:function(){return this._super("div",{className:"vjs-volume-level",innerHTML:'<span class="vjs-control-text"></span>'})}});_V_.VolumeHandle=_V_.Component.extend({createElement:function(){return this._super("div",{className:"vjs-volume-handle",innerHTML:'<span class="vjs-control-text"></span>'})}});_V_.MuteToggle=_V_.Button.extend({init:function(player,options){this._super(player,options);player.addEvent("volumechange",_V_.proxy(this,this.update))},createElement:function(){return this._super("div",{className:"vjs-mute-control vjs-control",innerHTML:'<div><span class="vjs-control-text">Mute</span></div>'})},onClick:function(event){this.player.muted(this.player.muted()?false:true)},update:function(event){var vol=this.player.volume(),level=3;if(vol==0||this.player.muted()){level=0}else{if(vol<0.33){level=1}else{if(vol<0.67){level=2}}}_V_.each.call(this,[0,1,2,3],function(i){_V_.removeClass(this.el,"vjs-vol-"+i)});_V_.addClass(this.el,"vjs-vol-"+level)}});_V_.Poster=_V_.Button.extend({init:function(player,options){this._super(player,options);if(!this.player.options.poster){this.hide()}player.addEvent("play",_V_.proxy(this,this.hide))},createElement:function(){return _V_.createElement("img",{className:"vjs-poster",src:this.player.options.poster,tabIndex:-1})},onClick:function(){this.player.play()}});_V_.TextTrackDisplay=_V_.Component.extend({init:function(player,options){this._super(player,options);player.addEvent(this.trackType+"update",_V_.proxy(this,this.update))},createElement:function(){return this._super("div",{className:"vjs-"+this.trackType})},update:function(){this.el.innerHTML=this.player.textTrackValue(this.trackType)}});_V_.SubtitlesDisplay=_V_.TextTrackDisplay.extend({trackType:"subtitles"});_V_.CaptionsDisplay=_V_.TextTrackDisplay.extend({trackType:"captions"});_V_.ChaptersDisplay=_V_.TextTrackDisplay.extend({trackType:"chapters"});_V_.DescriptionsDisplay=_V_.TextTrackDisplay.extend({trackType:"descriptions"});if(!Array.prototype.indexOf){Array.prototype.indexOf=function(searchElement){if(this===void 0||this===null){throw new TypeError()}var t=Object(this);var len=t.length>>>0;if(len===0){return -1}var n=0;if(arguments.length>0){n=Number(arguments[1]);if(n!==n){n=0}else{if(n!==0&&n!==(1/0)&&n!==-(1/0)){n=(n>0||-1)*Math.floor(Math.abs(n))}}}if(n>=len){return -1}var k=n>=0?n:Math.max(len-Math.abs(n),0);for(;k<len;k++){if(k in t&&t[k]===searchElement){return k}}return -1}}_V_.extend({addEvent:function(elem,type,fn){var data=_V_.getData(elem),handlers;if(data&&!data.handler){data.handler=function(event){event=_V_.fixEvent(event);var handlers=_V_.getData(elem).events[event.type];if(handlers){var handlersCopy=[];_V_.each(handlers,function(handler,i){handlersCopy[i]=handler});for(var i=0,l=handlersCopy.length;i<l;i++){handlersCopy[i].call(elem,event)}}}}if(!data.events){data.events={}}handlers=data.events[type];if(!handlers){handlers=data.events[type]=[];if(document.addEventListener){elem.addEventListener(type,data.handler,false)}else{if(document.attachEvent){elem.attachEvent("on"+type,data.handler)}}}if(!fn.guid){fn.guid=_V_.guid++}handlers.push(fn)},removeEvent:function(elem,type,fn){var data=_V_.getData(elem),handlers;if(!data.events){return}if(!type){for(type in data.events){_V_.cleanUpEvents(elem,type)}return}handlers=data.events[type];if(!handlers){return}if(fn&&fn.guid){for(var i=0;i<handlers.length;i++){if(handlers[i].guid===fn.guid){handlers.splice(i--,1)}}}_V_.cleanUpEvents(elem,type)},cleanUpEvents:function(elem,type){var data=_V_.getData(elem);if(data.events[type].length===0){delete data.events[type];if(document.removeEventListener){elem.removeEventListener(type,data.handler,false)}else{if(document.detachEvent){elem.detachEvent("on"+type,data.handler)}}}if(_V_.isEmpty(data.events)){delete data.events;delete data.handler}if(_V_.isEmpty(data)){_V_.removeData(elem)}},fixEvent:function(event){if(event[_V_.expando]){return event}var originalEvent=event;event=new _V_.Event(originalEvent);for(var i=_V_.Event.props.length,prop;i;){prop=_V_.Event.props[--i];event[prop]=originalEvent[prop]}if(!event.target){event.target=event.srcElement||document}if(event.target.nodeType===3){event.target=event.target.parentNode}if(!event.relatedTarget&&event.fromElement){event.relatedTarget=event.fromElement===event.target?event.toElement:event.fromElement}if(event.pageX==null&&event.clientX!=null){var eventDocument=event.target.ownerDocument||document,doc=eventDocument.documentElement,body=eventDocument.body;event.pageX=event.clientX+(doc&&doc.scrollLeft||body&&body.scrollLeft||0)-(doc&&doc.clientLeft||body&&body.clientLeft||0);event.pageY=event.clientY+(doc&&doc.scrollTop||body&&body.scrollTop||0)-(doc&&doc.clientTop||body&&body.clientTop||0)}if(event.which==null&&(event.charCode!=null||event.keyCode!=null)){event.which=event.charCode!=null?event.charCode:event.keyCode}if(!event.metaKey&&event.ctrlKey){event.metaKey=event.ctrlKey}if(!event.which&&event.button!==undefined){event.which=(event.button&1?1:(event.button&2?3:(event.button&4?2:0)))}return event},triggerEvent:function(elem,event){var data=_V_.getData(elem),parent=elem.parentNode||elem.ownerDocument,type=event.type||event,handler;if(data){handler=data.handler}event=typeof event==="object"?event[_V_.expando]?event:new _V_.Event(type,event):new _V_.Event(type);event.type=type;if(handler){handler.call(elem,event)}event.result=undefined;event.target=elem}});_V_.Event=function(src,props){if(src&&src.type){this.originalEvent=src;this.type=src.type;this.isDefaultPrevented=(src.defaultPrevented||src.returnValue===false||src.getPreventDefault&&src.getPreventDefault())?returnTrue:returnFalse}else{this.type=src}if(props){_V_.merge(this,props)}this.timeStamp=(new Date).getTime();this[_V_.expando]=true};_V_.Event.prototype={preventDefault:function(){this.isDefaultPrevented=returnTrue;var e=this.originalEvent;if(!e){return}if(e.preventDefault){e.preventDefault()}else{e.returnValue=false}},stopPropagation:function(){this.isPropagationStopped=returnTrue;var e=this.originalEvent;if(!e){return}if(e.stopPropagation){e.stopPropagation()}e.cancelBubble=true},stopImmediatePropagation:function(){this.isImmediatePropagationStopped=returnTrue;this.stopPropagation()},isDefaultPrevented:returnFalse,isPropagationStopped:returnFalse,isImmediatePropagationStopped:returnFalse};_V_.Event.props="altKey attrChange attrName bubbles button cancelable charCode clientX clientY ctrlKey currentTarget data detail eventPhase fromElement handler keyCode metaKey newValue offsetX offsetY pageX pageY prevValue relatedNode relatedTarget screenX screenY shiftKey srcElement target toElement view wheelDelta which".split(" ");function returnTrue(){return true}function returnFalse(){return false}var JSON;if(!JSON){JSON={}}(function(){var cx=/[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g;if(typeof JSON.parse!=="function"){JSON.parse=function(text,reviver){var j;function walk(holder,key){var k,v,value=holder[key];if(value&&typeof value==="object"){for(k in value){if(Object.prototype.hasOwnProperty.call(value,k)){v=walk(value,k);if(v!==undefined){value[k]=v}else{delete value[k]}}}}return reviver.call(holder,key,value)}text=String(text);cx.lastIndex=0;if(cx.test(text)){text=text.replace(cx,function(a){return"\\u"+("0000"+a.charCodeAt(0).toString(16)).slice(-4)})}if(/^[\],:{}\s]*$/.test(text.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,"@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,"]").replace(/(?:^|:|,)(?:\s*\[)+/g,""))){j=eval("("+text+")");return typeof reviver==="function"?walk({"":j},""):j}throw new SyntaxError("JSON.parse")}}}());_V_.Player=_V_.Component.extend({init:function(tag,addOptions,ready){this.tag=tag;var el=this.el=_V_.createElement("div"),options=this.options={},width=options.width=tag.width,height=options.height=tag.height,initWidth=width||300,initHeight=height||150;tag.player=el.player=this;this.ready(ready);tag.parentNode.insertBefore(el,tag);el.appendChild(tag);el.id=this.id=tag.id;el.className=tag.className;tag.id+="_html5_api";tag.className="vjs-tech";_V_.players[el.id]=this;el.setAttribute("width",initWidth);el.setAttribute("height",initHeight);el.style.width=initWidth+"px";el.style.height=initHeight+"px";tag.removeAttribute("width");tag.removeAttribute("height");_V_.merge(options,_V_.options);_V_.merge(options,this.getVideoTagSettings());_V_.merge(options,addOptions);tag.removeAttribute("controls");tag.removeAttribute("poster");if(tag.hasChildNodes()){for(var i=0,j=tag.childNodes;i<j.length;i++){if(j[i].nodeName=="SOURCE"||j[i].nodeName=="TRACK"){tag.removeChild(j[i])}}}this.techs={};this.values={};this.addClass("vjs-paused");this.addEvent("ended",this.onEnded);this.addEvent("play",this.onPlay);this.addEvent("pause",this.onPause);this.addEvent("error",this.onError);if(options.controls){this.ready(function(){this.each(this.options.components,function(set){this.addComponent(set)})})}if(!options.sources||options.sources.length==0){for(var i=0,j=options.techOrder;i<j.length;i++){var techName=j[i],tech=_V_[techName];if(tech.isSupported()){this.loadTech(techName);break}}}else{this.src(options.sources)}},values:{},destroy:function(){this.stopTrackingProgress();this.stopTrackingCurrentTime();delete _V_.players[this.id]},createElement:function(type,options){},getVideoTagSettings:function(){var options={sources:[],tracks:[]};options.src=this.tag.src;options.controls=this.tag.getAttribute("controls")!==null;options.poster=this.tag.poster;options.preload=this.tag.preload;options.autoplay=this.tag.getAttribute("autoplay")!==null;options.loop=this.tag.getAttribute("loop")!==null;options.muted=this.tag.getAttribute("muted")!==null;for(var c,i=0,j=this.tag.children;i<j.length;i++){c=j[i];if(c.nodeName=="SOURCE"){options.sources.push({src:c.src,type:c.type,media:c.media,title:c.title})}if(c.nodeName=="TRACK"){options.tracks.push(new _V_.Track({src:c.getAttribute("src"),kind:c.getAttribute("kind"),srclang:c.getAttribute("srclang"),label:c.getAttribute("label"),"default":c.getAttribute("default")!==null,title:c.getAttribute("title")},this))}}return options},loadTech:function(techName,source){if(this.tech){this.unloadTech()}else{if(techName!="html5"&&this.tag){this.el.removeChild(this.tag);this.tag=false}}this.techName=techName;this.isReady=false;var techReady=function(){this.player.triggerReady();if(!this.support.progressEvent){this.player.manualProgressOn()}if(!this.support.timeupdateEvent){this.player.manualTimeUpdatesOn()}};var techOptions=_V_.merge({source:source,parentEl:this.el},this.options[techName]);if(source){if(source.src==this.values.src&&this.values.currentTime>0){techOptions.startTime=this.values.currentTime}this.values.src=source.src}this.tech=new _V_[techName](this,techOptions);this.tech.ready(techReady)},unloadTech:function(){this.tech.destroy();if(this.manualProgress){this.manualProgressOff()}if(this.manualTimeUpdates){this.manualTimeUpdatesOff()}this.tech=false},reloadTech:function(betweenFn){_V_.log("unloadingTech");this.unloadTech();_V_.log("unloadedTech");if(betweenFn){betweenFn.call()}_V_.log("LoadingTech");this.loadTech(this.techName,{src:this.values.src});_V_.log("loadedTech")},manualProgressOn:function(){this.manualProgress=true;this.trackProgress();this.tech.addEvent("progress",function(){this.removeEvent("progress",arguments.callee);this.support.progressEvent=true;this.player.manualProgressOff()})},manualProgressOff:function(){this.manualProgress=false;this.stopTrackingProgress()},trackProgress:function(){this.progressInterval=setInterval(_V_.proxy(this,function(){if(this.values.bufferEnd<this.buffered().end(0)){this.triggerEvent("progress")}else{if(this.bufferedPercent()==1){this.stopTrackingProgress();this.triggerEvent("progress")}}}),500)},stopTrackingProgress:function(){clearInterval(this.progressInterval)},manualTimeUpdatesOn:function(){this.manualTimeUpdates=true;this.addEvent("play",this.trackCurrentTime);this.addEvent("pause",this.stopTrackingCurrentTime);this.tech.addEvent("timeupdate",function(){this.removeEvent("timeupdate",arguments.callee);this.support.timeupdateEvent=true;this.player.manualTimeUpdatesOff()})},manualTimeUpdatesOff:function(){this.manualTimeUpdates=false;this.stopTrackingCurrentTime();this.removeEvent("play",this.trackCurrentTime);this.removeEvent("pause",this.stopTrackingCurrentTime)},trackCurrentTime:function(){if(this.currentTimeInterval){this.stopTrackingCurrentTime()}this.currentTimeInterval=setInterval(_V_.proxy(this,function(){this.triggerEvent("timeupdate")}),250)},stopTrackingCurrentTime:function(){clearInterval(this.currentTimeInterval)},onEnded:function(){if(this.options.loop){this.currentTime(0);this.play()}else{this.pause();this.currentTime(0);this.pause()}},onPlay:function(){_V_.removeClass(this.el,"vjs-paused");_V_.addClass(this.el,"vjs-playing")},onPause:function(){_V_.removeClass(this.el,"vjs-playing");_V_.addClass(this.el,"vjs-paused")},onError:function(e){_V_.log("Video Error",e)},apiCall:function(method,arg){if(this.isReady){return this.tech[method](arg)}else{_V_.log("The playback technology API is not ready yet. Use player.ready(myFunction). ["+method+"]",arguments.callee.caller.arguments.callee.caller.arguments.callee.caller);return false}},play:function(){this.apiCall("play");return this},pause:function(){this.apiCall("pause");return this},paused:function(){return this.apiCall("paused")},currentTime:function(seconds){if(seconds!==undefined){this.values.lastSetCurrentTime=seconds;this.apiCall("setCurrentTime",seconds);if(this.manualTimeUpdates){this.triggerEvent("timeupdate")}return this}return this.values.currentTime=this.apiCall("currentTime")},duration:function(){return this.apiCall("duration")},remainingTime:function(){return this.duration()-this.currentTime()},buffered:function(){var buffered=this.apiCall("buffered"),start=0,end=this.values.bufferEnd=this.values.bufferEnd||0,timeRange;if(buffered&&buffered.length>0&&buffered.end(0)!==end){end=buffered.end(0);this.values.bufferEnd=end}return _V_.createTimeRange(start,end)},bufferedPercent:function(){return(this.duration())?this.buffered().end(0)/this.duration():0},volume:function(percentAsDecimal){if(percentAsDecimal!==undefined){var vol=Math.max(0,Math.min(1,parseFloat(percentAsDecimal)));this.values.volume=vol;this.apiCall("setVolume",vol);_V_.setLocalStorage("volume",vol);return this}return this.apiCall("volume")},muted:function(muted){if(muted!==undefined){this.apiCall("setMuted",muted);return this}return this.apiCall("muted")},width:function(width,skipListeners){if(width!==undefined){this.el.width=width;this.el.style.width=width+"px";if(!skipListeners){this.triggerEvent("resize")}return this}return parseInt(this.el.getAttribute("width"))},height:function(height){if(height!==undefined){this.el.height=height;this.el.style.height=height+"px";this.triggerEvent("resize");return this}return parseInt(this.el.getAttribute("height"))},size:function(width,height){return this.width(width,true).height(height)},supportsFullScreen:function(){return this.apiCall("supportsFullScreen")},requestFullScreen:function(){var requestFullScreen=_V_.support.requestFullScreen;if(requestFullScreen){if(this.tech.support.fullscreenResize===false){this.pause();this.unloadTech();_V_.addEvent(document,"keydown",_V_.proxy(this,function(e){_V_.log("asdf",e)}));_V_.addEvent(document,requestFullScreen.eventName,this.proxy(function(){_V_.removeEvent(document,requestFullScreen.eventName,arguments.callee);this.loadTech(this.techName,{src:this.values.src})}));this.el[requestFullScreen.requestFn]()}else{this.el[requestFullScreen.requestFn]()}}else{if(this.tech.supportsFullScreen()){this.apiCall("enterFullScreen")}else{this.enterFullWindow()}}this.videoIsFullScreen=true;this.triggerEvent("fullscreenchange");return this},cancelFullScreen:function(){var requestFullScreen=_V_.support.requestFullScreen;if(requestFullScreen){if(this.tech.support.fullscreenResize===false){this.pause();this.unloadTech();_V_.addEvent(document,requestFullScreen.eventName,this.proxy(function(){_V_.removeEvent(document,requestFullScreen.eventName,arguments.callee);_V_.log("document fullscreeneventchange");this.loadTech(this.techName,{src:this.values.src})}));document[requestFullScreen.cancelFn]()}else{document[requestFullScreen.cancelFn]()}}else{if(this.tech.supportsFullScreen()){this.apiCall("exitFullScreen")}else{this.exitFullWindow()}}this.videoIsFullScreen=false;this.triggerEvent("fullscreenchange");return this},enterFullWindow:function(){this.videoIsFullScreen=true;this.docOrigOverflow=document.documentElement.style.overflow;_V_.addEvent(document,"keydown",_V_.proxy(this,this.fullWindowOnEscKey));document.documentElement.style.overflow="hidden";_V_.addClass(document.body,"vjs-full-window");_V_.addClass(this.el,"vjs-fullscreen");this.triggerEvent("enterFullWindow")},fullWindowOnEscKey:function(event){if(event.keyCode==27){this.cancelFullScreen()}},exitFullWindow:function(){this.videoIsFullScreen=false;_V_.removeEvent(document,"keydown",this.fullWindowOnEscKey);document.documentElement.style.overflow=this.docOrigOverflow;_V_.removeClass(document.body,"vjs-full-window");_V_.removeClass(this.el,"vjs-fullscreen");this.triggerEvent("exitFullWindow")},src:function(source){if(source instanceof Array){var sources=source;techLoop:for(var i=0,j=this.options.techOrder;i<j.length;i++){var techName=j[i],tech=_V_[techName];if(tech.isSupported()){for(var a=0,b=sources;a<b.length;a++){var source=b[a];if(tech.canPlaySource.call(this,source)){if(techName==this.currentTechName){this.src(source)}else{this.loadTech(techName,source)}break techLoop}}}}}else{if(source instanceof Object){if(_V_[this.techName].canPlaySource(source)){this.src(source.src)}else{this.src([source])}}else{this.values.src=source;if(!this.isReady){this.ready(function(){this.src(source)})}else{this.apiCall("src",source);if(this.options.preload=="auto"){this.load()}if(this.options.autoplay){this.play()}}}}return this},load:function(){this.apiCall("load");return this},currentSrc:function(){return this.apiCall("currentSrc")},textTrackValue:function(kind,value){if(value!==undefined){this.values[kind]=value;this.triggerEvent(kind+"update");return this}return this.values[kind]},preload:function(value){if(value!==undefined){this.apiCall("setPreload",value);this.options.preload=value;return this}return this.apiCall("preload",value)},autoplay:function(value){if(value!==undefined){this.apiCall("setAutoplay",value);this.options.autoplay=value;return this}return this.apiCall("autoplay",value)},loop:function(value){if(value!==undefined){this.apiCall("setLoop",value);this.options.loop=value;return this}return this.apiCall("loop",value)},controls:function(){return this.options.controls},textTracks:function(){return this.options.tracks},poster:function(){return this.apiCall("poster")},error:function(){return this.apiCall("error")},networkState:function(){return this.apiCall("networkState")},readyState:function(){return this.apiCall("readyState")},seeking:function(){return this.apiCall("seeking")},initialTime:function(){return this.apiCall("initialTime")},startOffsetTime:function(){return this.apiCall("startOffsetTime")},played:function(){return this.apiCall("played")},seekable:function(){return this.apiCall("seekable")},ended:function(){return this.apiCall("ended")},videoTracks:function(){return this.apiCall("videoTracks")},audioTracks:function(){return this.apiCall("audioTracks")},videoWidth:function(){return this.apiCall("videoWidth")},videoHeight:function(){return this.apiCall("videoHeight")},defaultPlaybackRate:function(){return this.apiCall("defaultPlaybackRate")},playbackRate:function(){return this.apiCall("playbackRate")},controls:function(){return this.apiCall("controls")},defaultMuted:function(){return this.apiCall("defaultMuted")}});(function(){var requestFn,cancelFn,playerProto=_V_.Player.prototype;if(document.cancelFullscreen!==undefined){requestFn="requestFullscreen";cancelFn="exitFullscreen";eventName="fullscreenchange"}else{_V_.each(["moz","webkit"],function(prefix){if(document[prefix+"CancelFullScreen"]!==undefined){requestFn=prefix+"RequestFullScreen";cancelFn=prefix+"CancelFullScreen";eventName=prefix+"fullscreenchange"}})}if(requestFn){_V_.support.requestFullScreen={requestFn:requestFn,cancelFn:cancelFn,eventName:eventName}}})();_V_.addEvent(window,"load",function(){_V_.windowLoaded=true});_V_.autoSetupTimeout();_V_.PlaybackTech=_V_.Component.extend({init:function(player,options){},onClick:function(){if(this.player.options.controls){_V_.PlayToggle.prototype.onClick.call(this)}}});_V_.apiMethods="play,pause,paused,currentTime,setCurrentTime,duration,buffered,volume,setVolume,muted,setMuted,width,height,supportsFullScreen,enterFullScreen,src,load,currentSrc,preload,setPreload,autoplay,setAutoplay,loop,setLoop,error,networkState,readyState,seeking,initialTime,startOffsetTime,played,seekable,ended,videoTracks,audioTracks,videoWidth,videoHeight,textTracks,defaultPlaybackRate,playbackRate,mediaGroup,controller,controls,defaultMuted".split(",");_V_.each(_V_.apiMethods,function(methodName){_V_.PlaybackTech.prototype[methodName]=function(){throw new Error("The '"+method+"' method is not available on the playback technology's API")}});_V_.html5=_V_.PlaybackTech.extend({init:function(player,options,ready){this.player=player;this.el=this.createElement();this.ready(ready);this.addEvent("click",this.proxy(this.onClick));var source=options.source;if(source&&this.el.currentSrc==source.src){player.triggerEvent("loadstart")}else{if(source){this.el.src=source.src}}player.ready(function(){if(this.options.autoplay&&this.paused()){this.tag.poster=null;this.play()}});this.setupTriggers();this.triggerReady()},destroy:function(){this.player.tag=false;this.removeTriggers();this.el.parentNode.removeChild(this.el)},createElement:function(){var html5=_V_.html5,player=this.player,el=player.tag,newEl;if(!el||this.support.movingElementInDOM===false){if(el){player.el.removeChild(el)}newEl=_V_.createElement("video",{id:el.id||player.el.id+"_html5_api",className:el.className||"vjs-tech"});el=newEl;_V_.insertFirst(el,player.el)}_V_.each(["autoplay","preload","loop","muted"],function(attr){el[attr]=player.options[attr]},this);return el},setupTriggers:function(){_V_.each.call(this,_V_.html5.events,function(type){_V_.addEvent(this.el,type,_V_.proxy(this.player,this.eventHandler))})},removeTriggers:function(){_V_.each.call(this,_V_.html5.events,function(type){_V_.removeEvent(this.el,type,_V_.proxy(this.player,this.eventHandler))})},eventHandler:function(e){e.stopPropagation();this.triggerEvent(e)},play:function(){this.el.play()},pause:function(){this.el.pause()},paused:function(){return this.el.paused},currentTime:function(){return this.el.currentTime},setCurrentTime:function(seconds){try{this.el.currentTime=seconds}catch(e){_V_.log(e,"Video isn't ready. (VideoJS)")}},duration:function(){return this.el.duration||0},buffered:function(){return this.el.buffered},volume:function(){return this.el.volume},setVolume:function(percentAsDecimal){this.el.volume=percentAsDecimal},muted:function(){return this.el.muted},setMuted:function(muted){this.el.muted=muted},width:function(){return this.el.offsetWidth},height:function(){return this.el.offsetHeight},supportsFullScreen:function(){if(typeof this.el.webkitEnterFullScreen=="function"){if(!navigator.userAgent.match("Chrome")&&!navigator.userAgent.match("Mac OS X 10.5")){return true}}return false},enterFullScreen:function(){try{this.el.webkitEnterFullScreen()}catch(e){if(e.code==11){_V_.log("VideoJS: Video not ready.")}}},src:function(src){this.el.src=src},load:function(){this.el.load()},currentSrc:function(){return this.el.currentSrc},preload:function(){return this.el.preload},setPreload:function(val){this.el.preload=val},autoplay:function(){return this.el.autoplay},setAutoplay:function(val){this.el.autoplay=val},loop:function(){return this.el.loop},setLoop:function(val){this.el.loop=val},error:function(){return this.el.error},networkState:function(){return this.el.networkState},readyState:function(){return this.el.readyState},seeking:function(){return this.el.seeking},initialTime:function(){return this.el.initialTime},startOffsetTime:function(){return this.el.startOffsetTime},played:function(){return this.el.played},seekable:function(){return this.el.seekable},ended:function(){return this.el.ended},videoTracks:function(){return this.el.videoTracks},audioTracks:function(){return this.el.audioTracks},videoWidth:function(){return this.el.videoWidth},videoHeight:function(){return this.el.videoHeight},textTracks:function(){return this.el.textTracks},defaultPlaybackRate:function(){return this.el.defaultPlaybackRate},playbackRate:function(){return this.el.playbackRate},mediaGroup:function(){return this.el.mediaGroup},controller:function(){return this.el.controller},controls:function(){return this.player.options.controls},defaultMuted:function(){return this.el.defaultMuted}});_V_.html5.isSupported=function(){return !!document.createElement("video").canPlayType};_V_.html5.canPlaySource=function(srcObj){return !!document.createElement("video").canPlayType(srcObj.type)};_V_.html5.events="loadstart,suspend,abort,error,emptied,stalled,loadedmetadata,loadeddata,canplay,canplaythrough,playing,waiting,seeking,seeked,ended,durationchange,timeupdate,progress,play,pause,ratechange,volumechange".split(",");_V_.html5.prototype.support={fullscreen:(typeof _V_.testVid.webkitEnterFullScreen!==undefined)?(!_V_.ua.match("Chrome")&&!_V_.ua.match("Mac OS X 10.5")?true:false):false,movingElementInDOM:!_V_.isIOS()};if(_V_.isAndroid()){if(_V_.androidVersion()<3){document.createElement("video").constructor.prototype.canPlayType=function(type){return(type&&type.toLowerCase().indexOf("video/mp4")!=-1)?"maybe":""}}}_V_.flash=_V_.PlaybackTech.extend({init:function(player,options){this.player=player;var source=options.source,parentEl=options.parentEl,placeHolder=this.el=_V_.createElement("div",{id:parentEl.id+"_temp_flash"}),objId=player.el.id+"_flash_api",playerOptions=player.options;flashVars=_V_.merge({readyFunction:"_V_.flash.onSWFReady",eventProxyFunction:"_V_.flash.onSWFEvent",errorEventProxyFunction:"_V_.flash.onSWFErrorEvent",autoplay:playerOptions.autoplay,preload:playerOptions.preload,loop:playerOptions.loop,muted:playerOptions.muted},options.flashVars),params=_V_.merge({allowScriptAccess:"always",wmode:"opaque",bgcolor:"#000000"},options.params),attributes=_V_.merge({id:objId,name:objId,"class":"vjs-tech"},options.attributes);if(source){flashVars.src=source.src}_V_.insertFirst(placeHolder,parentEl);if(options.startTime){this.ready(function(){this.load();this.play();this.currentTime(options.startTime)})}swfobject.embedSWF(options.swf,placeHolder.id,"480","270","9.0.124","",flashVars,params,attributes)},destroy:function(){this.el.parentNode.removeChild(this.el)},play:function(){this.el.vjs_play()},pause:function(){this.el.vjs_pause()},src:function(src){this.el.vjs_src(src);if(this.player.autoplay){var tech=this;setTimeout(function(){tech.play()},0)}},load:function(){this.el.vjs_load()},poster:function(){this.el.vjs_getProperty("poster")},buffered:function(){return _V_.createTimeRange(0,this.el.vjs_getProperty("buffered"))},supportsFullScreen:function(){return false},enterFullScreen:function(){return false}});(function(){var api=_V_.flash.prototype,readWrite="preload,currentTime,defaultPlaybackRate,playbackRate,autoplay,loop,mediaGroup,controller,controls,volume,muted,defaultMuted".split(","),readOnly="error,currentSrc,networkState,readyState,seeking,initialTime,duration,startOffsetTime,paused,played,seekable,ended,videoTracks,audioTracks,videoWidth,videoHeight,textTracks".split(","),callOnly="load,play,pause".split(",");createSetter=function(attr){var attrUpper=attr.charAt(0).toUpperCase()+attr.slice(1);api["set"+attrUpper]=function(val){return this.el.vjs_setProperty(attr,val)}},createGetter=function(attr){api[attr]=function(){return this.el.vjs_getProperty(attr)}};_V_.each(readWrite,function(attr){createGetter(attr);createSetter(attr)});_V_.each(readOnly,function(attr){createGetter(attr)})})();_V_.flash.isSupported=function(){return swfobject.hasFlashPlayerVersion("10")};_V_.flash.canPlaySource=function(srcObj){if(srcObj.type in _V_.flash.prototype.support.formats){return"maybe"}};_V_.flash.prototype.support={formats:{"video/flv":"FLV","video/x-flv":"FLV","video/mp4":"MP4","video/m4v":"MP4"},progressEvent:false,timeupdateEvent:false,fullscreenResize:false,parentResize:!(_V_.ua.match("Firefox"))};_V_.flash.onSWFReady=function(currSwf){var el=_V_.el(currSwf);var player=el.player||el.parentNode.player,tech=player.tech;el.player=player;tech.el=el;tech.addEvent("click",tech.onClick);_V_.flash.checkReady(tech)};_V_.flash.checkReady=function(tech){if(tech.el.vjs_getProperty){tech.triggerReady()}else{setTimeout(function(){_V_.flash.checkReady(tech)},50)}};_V_.flash.onSWFEvent=function(swfID,eventName,other){try{var player=_V_.el(swfID).player;if(player&&player.techName=="flash"){player.triggerEvent(eventName)}}catch(err){_V_.log(err)}};_V_.flash.onSWFErrorEvent=function(swfID,eventName){_V_.log("Flash Error",eventName)};_V_.Track=function(attributes,player){this.player=player;this.src=attributes.src;this.kind=attributes.kind;this.srclang=attributes.srclang;this.label=attributes.label;this["default"]=attributes["default"];this.title=attributes.title;this.cues=[];this.currentCue=false;this.lastCueIndex=0;player.addEvent("timeupdate",_V_.proxy(this,this.update));player.addEvent("ended",_V_.proxy(this,function(){this.lastCueIndex=0}));_V_.get(attributes.src,_V_.proxy(this,this.parseCues))};_V_.Track.prototype={parseCues:function(srcContent){var cue,time,text,lines=srcContent.split("\n"),line="";for(var i=0;i<lines.length;i++){line=_V_.trim(lines[i]);if(line){cue={id:line,index:this.cues.length};line=_V_.trim(lines[++i]);time=line.split(" --> ");cue.startTime=this.parseCueTime(time[0]);cue.endTime=this.parseCueTime(time[1]);text=[];for(var j=i;j<lines.length;j++){line=_V_.trim(lines[++i]);if(!line){break}text.push(line)}cue.text=text.join("<br/>");this.cues.push(cue)}}},parseCueTime:function(timeText){var parts=timeText.split(":"),time=0;time+=parseFloat(parts[0])*60*60;time+=parseFloat(parts[1])*60;var seconds=parts[2].split(/\.|,/);time+=parseFloat(seconds[0]);ms=parseFloat(seconds[1]);if(ms){time+=ms/1000}return time},update:function(){if(this.cues&&this.cues.length>0){var time=this.player.currentTime();if(!this.currentCue||this.currentCue.startTime>=time||this.currentCue.endTime<time){var newSubIndex=false,reverse=(this.cues[this.lastCueIndex].startTime>time),i=this.lastCueIndex-(reverse?1:0);while(true){if(reverse){if(i<0||this.cues[i].endTime<time){break}if(this.cues[i].startTime<time){newSubIndex=i;break}i--}else{if(i>=this.cues.length||this.cues[i].startTime>time){break}if(this.cues[i].endTime>time){newSubIndex=i;break}i++}}if(newSubIndex!==false){this.currentCue=this.cues[newSubIndex];this.lastCueIndex=newSubIndex;this.updatePlayer(this.currentCue.text)}else{if(this.currentCue){this.currentCue=false;this.updatePlayer("")}}}}},updatePlayer:function(text){this.player.textTrackValue(this.kind,text)}};var swfobject=function(){var D="undefined",r="object",S="Shockwave Flash",W="ShockwaveFlash.ShockwaveFlash",q="application/x-shockwave-flash",R="SWFObjectExprInst",x="onreadystatechange",O=window,j=document,t=navigator,T=false,U=[h],o=[],N=[],I=[],l,Q,E,B,J=false,a=false,n,G,m=true,M=function(){var aa=typeof j.getElementById!=D&&typeof j.getElementsByTagName!=D&&typeof j.createElement!=D,ah=t.userAgent.toLowerCase(),Y=t.platform.toLowerCase(),ae=Y?/win/.test(Y):/win/.test(ah),ac=Y?/mac/.test(Y):/mac/.test(ah),af=/webkit/.test(ah)?parseFloat(ah.replace(/^.*webkit\/(\d+(\.\d+)?).*$/,"$1")):false,X=!+"\v1",ag=[0,0,0],ab=null;if(typeof t.plugins!=D&&typeof t.plugins[S]==r){ab=t.plugins[S].description;if(ab&&!(typeof t.mimeTypes!=D&&t.mimeTypes[q]&&!t.mimeTypes[q].enabledPlugin)){T=true;X=false;ab=ab.replace(/^.*\s+(\S+\s+\S+$)/,"$1");ag[0]=parseInt(ab.replace(/^(.*)\..*$/,"$1"),10);ag[1]=parseInt(ab.replace(/^.*\.(.*)\s.*$/,"$1"),10);ag[2]=/[a-zA-Z]/.test(ab)?parseInt(ab.replace(/^.*[a-zA-Z]+(.*)$/,"$1"),10):0}}else{if(typeof O.ActiveXObject!=D){try{var ad=new ActiveXObject(W);if(ad){ab=ad.GetVariable("$version");if(ab){X=true;ab=ab.split(" ")[1].split(",");ag=[parseInt(ab[0],10),parseInt(ab[1],10),parseInt(ab[2],10)]}}}catch(Z){}}}return{w3:aa,pv:ag,wk:af,ie:X,win:ae,mac:ac}}(),k=function(){if(!M.w3){return}if((typeof j.readyState!=D&&j.readyState=="complete")||(typeof j.readyState==D&&(j.getElementsByTagName("body")[0]||j.body))){f()}if(!J){if(typeof j.addEventListener!=D){j.addEventListener("DOMContentLoaded",f,false)}if(M.ie&&M.win){j.attachEvent(x,function(){if(j.readyState=="complete"){j.detachEvent(x,arguments.callee);f()}});if(O==top){(function(){if(J){return}try{j.documentElement.doScroll("left")}catch(X){setTimeout(arguments.callee,0);return}f()})()}}if(M.wk){(function(){if(J){return}if(!/loaded|complete/.test(j.readyState)){setTimeout(arguments.callee,0);return}f()})()}s(f)}}();function f(){if(J){return}try{var Z=j.getElementsByTagName("body")[0].appendChild(C("span"));Z.parentNode.removeChild(Z)}catch(aa){return}J=true;var X=U.length;for(var Y=0;Y<X;Y++){U[Y]()}}function K(X){if(J){X()}else{U[U.length]=X}}function s(Y){if(typeof O.addEventListener!=D){O.addEventListener("load",Y,false)}else{if(typeof j.addEventListener!=D){j.addEventListener("load",Y,false)}else{if(typeof O.attachEvent!=D){i(O,"onload",Y)}else{if(typeof O.onload=="function"){var X=O.onload;O.onload=function(){X();Y()}}else{O.onload=Y}}}}}function h(){if(T){V()}else{H()}}function V(){var X=j.getElementsByTagName("body")[0];var aa=C(r);aa.setAttribute("type",q);var Z=X.appendChild(aa);if(Z){var Y=0;(function(){if(typeof Z.GetVariable!=D){var ab=Z.GetVariable("$version");if(ab){ab=ab.split(" ")[1].split(",");M.pv=[parseInt(ab[0],10),parseInt(ab[1],10),parseInt(ab[2],10)]}}else{if(Y<10){Y++;setTimeout(arguments.callee,10);return}}X.removeChild(aa);Z=null;H()})()}else{H()}}function H(){var ag=o.length;if(ag>0){for(var af=0;af<ag;af++){var Y=o[af].id;var ab=o[af].callbackFn;var aa={success:false,id:Y};if(M.pv[0]>0){var ae=c(Y);if(ae){if(F(o[af].swfVersion)&&!(M.wk&&M.wk<312)){w(Y,true);if(ab){aa.success=true;aa.ref=z(Y);ab(aa)}}else{if(o[af].expressInstall&&A()){var ai={};ai.data=o[af].expressInstall;ai.width=ae.getAttribute("width")||"0";ai.height=ae.getAttribute("height")||"0";if(ae.getAttribute("class")){ai.styleclass=ae.getAttribute("class")}if(ae.getAttribute("align")){ai.align=ae.getAttribute("align")}var ah={};var X=ae.getElementsByTagName("param");var ac=X.length;for(var ad=0;ad<ac;ad++){if(X[ad].getAttribute("name").toLowerCase()!="movie"){ah[X[ad].getAttribute("name")]=X[ad].getAttribute("value")}}P(ai,ah,Y,ab)}else{p(ae);if(ab){ab(aa)}}}}}else{w(Y,true);if(ab){var Z=z(Y);if(Z&&typeof Z.SetVariable!=D){aa.success=true;aa.ref=Z}ab(aa)}}}}}function z(aa){var X=null;var Y=c(aa);if(Y&&Y.nodeName=="OBJECT"){if(typeof Y.SetVariable!=D){X=Y}else{var Z=Y.getElementsByTagName(r)[0];if(Z){X=Z}}}return X}function A(){return !a&&F("6.0.65")&&(M.win||M.mac)&&!(M.wk&&M.wk<312)}function P(aa,ab,X,Z){a=true;E=Z||null;B={success:false,id:X};var ae=c(X);if(ae){if(ae.nodeName=="OBJECT"){l=g(ae);Q=null}else{l=ae;Q=X}aa.id=R;if(typeof aa.width==D||(!/%$/.test(aa.width)&&parseInt(aa.width,10)<310)){aa.width="310"}if(typeof aa.height==D||(!/%$/.test(aa.height)&&parseInt(aa.height,10)<137)){aa.height="137"}j.title=j.title.slice(0,47)+" - Flash Player Installation";var ad=M.ie&&M.win?"ActiveX":"PlugIn",ac="MMredirectURL="+O.location.toString().replace(/&/g,"%26")+"&MMplayerType="+ad+"&MMdoctitle="+j.title;if(typeof ab.flashvars!=D){ab.flashvars+="&"+ac}else{ab.flashvars=ac}if(M.ie&&M.win&&ae.readyState!=4){var Y=C("div");X+="SWFObjectNew";Y.setAttribute("id",X);ae.parentNode.insertBefore(Y,ae);ae.style.display="none";(function(){if(ae.readyState==4){ae.parentNode.removeChild(ae)}else{setTimeout(arguments.callee,10)}})()}u(aa,ab,X)}}function p(Y){if(M.ie&&M.win&&Y.readyState!=4){var X=C("div");Y.parentNode.insertBefore(X,Y);X.parentNode.replaceChild(g(Y),X);Y.style.display="none";(function(){if(Y.readyState==4){Y.parentNode.removeChild(Y)}else{setTimeout(arguments.callee,10)}})()}else{Y.parentNode.replaceChild(g(Y),Y)}}function g(ab){var aa=C("div");if(M.win&&M.ie){aa.innerHTML=ab.innerHTML}else{var Y=ab.getElementsByTagName(r)[0];if(Y){var ad=Y.childNodes;if(ad){var X=ad.length;for(var Z=0;Z<X;Z++){if(!(ad[Z].nodeType==1&&ad[Z].nodeName=="PARAM")&&!(ad[Z].nodeType==8)){aa.appendChild(ad[Z].cloneNode(true))}}}}}return aa}function u(ai,ag,Y){var X,aa=c(Y);if(M.wk&&M.wk<312){return X}if(aa){if(typeof ai.id==D){ai.id=Y}if(M.ie&&M.win){var ah="";for(var ae in ai){if(ai[ae]!=Object.prototype[ae]){if(ae.toLowerCase()=="data"){ag.movie=ai[ae]}else{if(ae.toLowerCase()=="styleclass"){ah+=' class="'+ai[ae]+'"'}else{if(ae.toLowerCase()!="classid"){ah+=" "+ae+'="'+ai[ae]+'"'}}}}}var af="";for(var ad in ag){if(ag[ad]!=Object.prototype[ad]){af+='<param name="'+ad+'" value="'+ag[ad]+'" />'}}aa.outerHTML='<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'+ah+">"+af+"</object>";N[N.length]=ai.id;X=c(ai.id)}else{var Z=C(r);Z.setAttribute("type",q);for(var ac in ai){if(ai[ac]!=Object.prototype[ac]){if(ac.toLowerCase()=="styleclass"){Z.setAttribute("class",ai[ac])}else{if(ac.toLowerCase()!="classid"){Z.setAttribute(ac,ai[ac])}}}}for(var ab in ag){if(ag[ab]!=Object.prototype[ab]&&ab.toLowerCase()!="movie"){e(Z,ab,ag[ab])}}aa.parentNode.replaceChild(Z,aa);X=Z}}return X}function e(Z,X,Y){var aa=C("param");aa.setAttribute("name",X);aa.setAttribute("value",Y);Z.appendChild(aa)}function y(Y){var X=c(Y);if(X&&X.nodeName=="OBJECT"){if(M.ie&&M.win){X.style.display="none";(function(){if(X.readyState==4){b(Y)}else{setTimeout(arguments.callee,10)}})()}else{X.parentNode.removeChild(X)}}}function b(Z){var Y=c(Z);if(Y){for(var X in Y){if(typeof Y[X]=="function"){Y[X]=null}}Y.parentNode.removeChild(Y)}}function c(Z){var X=null;try{X=j.getElementById(Z)}catch(Y){}return X}function C(X){return j.createElement(X)}function i(Z,X,Y){Z.attachEvent(X,Y);I[I.length]=[Z,X,Y]}function F(Z){var Y=M.pv,X=Z.split(".");X[0]=parseInt(X[0],10);X[1]=parseInt(X[1],10)||0;X[2]=parseInt(X[2],10)||0;return(Y[0]>X[0]||(Y[0]==X[0]&&Y[1]>X[1])||(Y[0]==X[0]&&Y[1]==X[1]&&Y[2]>=X[2]))?true:false}function v(ac,Y,ad,ab){if(M.ie&&M.mac){return}var aa=j.getElementsByTagName("head")[0];if(!aa){return}var X=(ad&&typeof ad=="string")?ad:"screen";if(ab){n=null;G=null}if(!n||G!=X){var Z=C("style");Z.setAttribute("type","text/css");Z.setAttribute("media",X);n=aa.appendChild(Z);if(M.ie&&M.win&&typeof j.styleSheets!=D&&j.styleSheets.length>0){n=j.styleSheets[j.styleSheets.length-1]}G=X}if(M.ie&&M.win){if(n&&typeof n.addRule==r){n.addRule(ac,Y)}}else{if(n&&typeof j.createTextNode!=D){n.appendChild(j.createTextNode(ac+" {"+Y+"}"))}}}function w(Z,X){if(!m){return}var Y=X?"visible":"hidden";if(J&&c(Z)){c(Z).style.visibility=Y}else{v("#"+Z,"visibility:"+Y)}}function L(Y){var Z=/[\\\"<>\.;]/;var X=Z.exec(Y)!=null;return X&&typeof encodeURIComponent!=D?encodeURIComponent(Y):Y}var d=function(){if(M.ie&&M.win){window.attachEvent("onunload",function(){var ac=I.length;for(var ab=0;ab<ac;ab++){I[ab][0].detachEvent(I[ab][1],I[ab][2])}var Z=N.length;for(var aa=0;aa<Z;aa++){y(N[aa])}for(var Y in M){M[Y]=null}M=null;for(var X in swfobject){swfobject[X]=null}swfobject=null})}}();return{registerObject:function(ab,X,aa,Z){if(M.w3&&ab&&X){var Y={};Y.id=ab;Y.swfVersion=X;Y.expressInstall=aa;Y.callbackFn=Z;o[o.length]=Y;w(ab,false)}else{if(Z){Z({success:false,id:ab})}}},getObjectById:function(X){if(M.w3){return z(X)}},embedSWF:function(ab,ah,ae,ag,Y,aa,Z,ad,af,ac){var X={success:false,id:ah};if(M.w3&&!(M.wk&&M.wk<312)&&ab&&ah&&ae&&ag&&Y){w(ah,false);K(function(){ae+="";ag+="";var aj={};if(af&&typeof af===r){for(var al in af){aj[al]=af[al]}}aj.data=ab;aj.width=ae;aj.height=ag;var am={};if(ad&&typeof ad===r){for(var ak in ad){am[ak]=ad[ak]}}if(Z&&typeof Z===r){for(var ai in Z){if(typeof am.flashvars!=D){am.flashvars+="&"+ai+"="+Z[ai]}else{am.flashvars=ai+"="+Z[ai]}}}if(F(Y)){var an=u(aj,am,ah);if(aj.id==ah){w(ah,true)}X.success=true;X.ref=an}else{if(aa&&A()){aj.data=aa;P(aj,am,ah,ac);return}else{w(ah,true)}}if(ac){ac(X)}})}else{if(ac){ac(X)}}},switchOffAutoHideShow:function(){m=false},ua:M,getFlashPlayerVersion:function(){return{major:M.pv[0],minor:M.pv[1],release:M.pv[2]}},hasFlashPlayerVersion:F,createSWF:function(Z,Y,X){if(M.w3){return u(Z,Y,X)}else{return undefined}},showExpressInstall:function(Z,aa,X,Y){if(M.w3&&A()){P(Z,aa,X,Y)}},removeSWF:function(X){if(M.w3){y(X)}},createCSS:function(aa,Z,Y,X){if(M.w3){v(aa,Z,Y,X)}},addDomLoadEvent:K,addLoadEvent:s,getQueryParamValue:function(aa){var Z=j.location.search||j.location.hash;if(Z){if(/\?/.test(Z)){Z=Z.split("?")[1]}if(aa==null){return L(Z)}var Y=Z.split("&");for(var X=0;X<Y.length;X++){if(Y[X].substring(0,Y[X].indexOf("="))==aa){return L(Y[X].substring((Y[X].indexOf("=")+1)))}}}return""},expressInstallCallback:function(){if(a){var X=c(R);if(X&&l){X.parentNode.replaceChild(l,X);if(Q){w(Q,true);if(M.ie&&M.win){l.style.display="block"}}if(E){E(B)}}a=false}}}}();window.VideoJS=window._V_=VideoJS;_V_.autoSetup()})(window);



/*
* qTip2 - Pretty powerful tooltips
* http://craigsworks.com/projects/qtip2/
*
* Version: nightly
* Copyright 2009-2010 Craig Michael Thompson - http://craigsworks.com
*
* Dual licensed under MIT or GPLv2 licenses
*   http://en.wikipedia.org/wiki/MIT_License
*   http://en.wikipedia.org/wiki/GNU_General_Public_License
*
* Date: Wed Jan 25 15:59:10.0000000000 2012
*//*jslint browser: true, onevar: true, undef: true, nomen: true, bitwise: true, regexp: true, newcap: true, immed: true, strict: true *//*global window: false, jQuery: false, console: false */(function(a,b,c){function E(b){var c=this,d=b.elements,e=d.tooltip,f=".bgiframe-"+b.id;a.extend(c,{init:function(){d.bgiframe=a('<iframe class="ui-tooltip-bgiframe" frameborder="0" tabindex="-1" src="javascript:\'\';"  style="display:block; position:absolute; z-index:-1; filter:alpha(opacity=0); -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";"></iframe>'),d.bgiframe.appendTo(e),e.bind("tooltipmove"+f,c.adjust)},adjust:function(){var a=b.get("dimensions"),c=b.plugins.tip,f=d.tip,g,h;h=parseInt(e.css("border-left-width"),10)||0,h={left:-h,top:-h},c&&f&&(g=c.corner.precedance==="x"?["width","left"]:["height","top"],h[g[1]]-=f[g[0]]()),d.bgiframe.css(h).css(a)},destroy:function(){d.bgiframe.remove(),e.unbind(f)}}),c.init()}function D(c){var f=this,g=c.options.show.modal,i=c.elements,j=i.tooltip,k="#qtip-overlay",l=".qtipmodal",m=l+c.id,o="is-modal-qtip",q=a(document.body),r;c.checks.modal={"^show.modal.(on|blur)$":function(){f.init(),i.overlay.toggle(j.is(":visible"))}},a.extend(f,{init:function(){if(!g.on)return f;r=f.create(),j.attr(o,d).css("z-index",h.modal.zindex+a(n+"["+o+"]").length).unbind(l).unbind(m).bind("tooltipshow"+l+" tooltiphide"+l,function(b,c,d){var e=b.originalEvent;if(e&&b.type==="tooltiphide"&&/mouse(leave|enter)/.test(e.type)&&a(e.relatedTarget).closest(r[0]).length)try{b.preventDefault()}catch(g){}else(!e||e&&!e.solo)&&f[b.type.replace("tooltip","")](b,d)}).bind("tooltipfocus"+l,function(b){if(!b.isDefaultPrevented()){var c=a(n).filter("["+o+"]"),d=h.modal.zindex+c.length,e=parseInt(j[0].style.zIndex,10);r[0].style.zIndex=d-1,c.each(function(){this.style.zIndex>e&&(this.style.zIndex-=1)}),c.end().filter("."+p).qtip("blur",b.originalEvent),j.addClass(p)[0].style.zIndex=d;try{b.preventDefault()}catch(f){}}}).bind("tooltiphide"+l,function(b){a("["+o+"]").filter(":visible").not(j).last().qtip("focus",b)}),g.escape&&a(b).unbind(m).bind("keydown"+m,function(a){a.keyCode===27&&j.hasClass(p)&&c.hide(a)}),g.blur&&i.overlay.unbind(m).bind("click"+m,function(a){j.hasClass(p)&&c.hide(a)});return f},create:function(){function d(){r.css({height:a(b).height(),width:a(b).width()})}var c=a(k);if(c.length)return i.overlay=c.insertAfter(a(n).last());r=i.overlay=a("<div />",{id:k.substr(1),html:"<div></div>",mousedown:function(){return e}}).insertAfter(a(n).last()),a(b).unbind(l).bind("resize"+l,d),d();return r},toggle:function(b,c,h){if(b&&b.isDefaultPrevented())return f;var i=g.effect,k=c?"show":"hide",l=r.is(":visible"),p=a("["+o+"]").filter(":visible").not(j),s;r||(r=f.create());if(r.is(":animated")&&l===c||!c&&p.length)return f;c?(r.css({left:0,top:0}),r.toggleClass("blurs",g.blur),q.bind("focusin"+m,function(b){var c=a(b.target),d=c.closest(".qtip"),f=d.length<1?e:parseInt(d[0].style.zIndex,10)>parseInt(j[0].style.zIndex,10);!f&&a(b.target).closest(n)[0]!==j[0]&&j.find("input:visible").filter(":first").focus()})):q.undelegate("*","focusin"+m),r.stop(d,e),a.isFunction(i)?i.call(r,c):i===e?r[k]():r.fadeTo(parseInt(h,10)||90,c?1:0,function(){c||a(this).hide()}),c||r.queue(function(a){r.css({left:"",top:""}),a()});return f},show:function(a,b){return f.toggle(a,d,b)},hide:function(a,b){return f.toggle(a,e,b)},destroy:function(){var d=r;d&&(d=a("["+o+"]").not(j).length<1,d?(i.overlay.remove(),a(b).unbind(l)):i.overlay.unbind(l+c.id),q.undelegate("*","focusin"+m));return j.removeAttr(o).unbind(l)}}),f.init()}function C(b,g){function w(a){var b=a.precedance==="y",c=n[b?"width":"height"],d=n[b?"height":"width"],e=a.string().indexOf("center")>-1,f=c*(e?.5:1),g=Math.pow,h=Math.round,i,j,k,l=Math.sqrt(g(f,2)+g(d,2)),m=[p/f*l,p/d*l];m[2]=Math.sqrt(g(m[0],2)-g(p,2)),m[3]=Math.sqrt(g(m[1],2)-g(p,2)),i=l+m[2]+m[3]+(e?0:m[0]),j=i/l,k=[h(j*d),h(j*c)];return{height:k[b?0:1],width:k[b?1:0]}}function v(b){var c=k.titlebar&&b.y==="top",d=c?k.titlebar:k.content,e=a.browser.mozilla,f=e?"-moz-":a.browser.webkit?"-webkit-":"",g=b.y+(e?"":"-")+b.x,h=f+(e?"border-radius-"+g:"border-"+g+"-radius");return parseInt(d.css(h),10)||parseInt(l.css(h),10)||0}function u(a,b,c){b=b?b:a[a.precedance];var d=l.hasClass(r),e=k.titlebar&&a.y==="top",f=e?k.titlebar:k.content,g="border-"+b+"-width",h;l.addClass(r),h=parseInt(f.css(g),10),h=(c?h||parseInt(l.css(g),10):h)||0,l.toggleClass(r,d);return h}function t(a,f,g,h){if(k.tip){var l=i.corner.clone(),n=g.adjusted,o=b.options.position.adjust.method.split(" "),p=o[0],q=o[1]||o[0],r={left:e,top:e,x:0,y:0},s,t={},u;i.corner.fixed!==d&&(p==="shift"&&l.precedance==="x"&&n.left&&l.y!=="center"?l.precedance=l.precedance==="x"?"y":"x":p==="flip"&&n.left&&(l.x=l.x==="center"?n.left>0?"left":"right":l.x==="left"?"right":"left"),q==="shift"&&l.precedance==="y"&&n.top&&l.x!=="center"?l.precedance=l.precedance==="y"?"x":"y":q==="flip"&&n.top&&(l.y=l.y==="center"?n.top>0?"top":"bottom":l.y==="top"?"bottom":"top"),l.string()!==m.corner.string()&&(m.top!==n.top||m.left!==n.left)&&i.update(l,e)),s=i.position(l,n),s.right!==c&&(s.left=-s.right),s.bottom!==c&&(s.top=-s.bottom),s.user=Math.max(0,j.offset);if(r.left=p==="shift"&&!!n.left)l.x==="center"?t["margin-left"]=r.x=s["margin-left"]-n.left:(u=s.right!==c?[n.left,-s.left]:[-n.left,s.left],(r.x=Math.max(u[0],u[1]))>u[0]&&(g.left-=n.left,r.left=e),t[s.right!==c?"right":"left"]=r.x);if(r.top=q==="shift"&&!!n.top)l.y==="center"?t["margin-top"]=r.y=s["margin-top"]-n.top:(u=s.bottom!==c?[n.top,-s.top]:[-n.top,s.top],(r.y=Math.max(u[0],u[1]))>u[0]&&(g.top-=n.top,r.top=e),t[s.bottom!==c?"bottom":"top"]=r.y);k.tip.css(t).toggle(!(r.x&&r.y||l.x==="center"&&r.y||l.y==="center"&&r.x)),g.left-=s.left.charAt?s.user:p!=="shift"||r.top||!r.left&&!r.top?s.left:0,g.top-=s.top.charAt?s.user:q!=="shift"||r.left||!r.left&&!r.top?s.top:0,m.left=n.left,m.top=n.top,m.corner=l.clone()}}var i=this,j=b.options.style.tip,k=b.elements,l=k.tooltip,m={top:0,left:0},n={width:j.width,height:j.height},o={},p=j.border||0,q=".qtip-tip",s=!!(a("<canvas />")[0]||{}).getContext;i.mimic=i.corner=f,i.border=p,i.offset=j.offset,i.size=n,b.checks.tip={"^position.my|style.tip.(corner|mimic|border)$":function(){i.init()||i.destroy(),b.reposition()},"^style.tip.(height|width)$":function(){n={width:j.width,height:j.height},i.create(),i.update(),b.reposition()},"^content.title.text|style.(classes|widget)$":function(){k.tip&&i.update()}},a.extend(i,{init:function(){var b=i.detectCorner()&&(s||a.browser.msie);b&&(i.create(),i.update(),l.unbind(q).bind("tooltipmove"+q,t));return b},detectCorner:function(){var a=j.corner,c=b.options.position,f=c.at,g=c.my.string?c.my.string():c.my;if(a===e||g===e&&f===e)return e;a===d?i.corner=new h.Corner(g):a.string||(i.corner=new h.Corner(a),i.corner.fixed=d),m.corner=new h.Corner(i.corner.string());return i.corner.string()!=="centercenter"},detectColours:function(c){var d,e,f,g=k.tip.css("cssText",""),h=c||i.corner,m=h[h.precedance],p="border-"+m+"-color",q="border"+m.charAt(0)+m.substr(1)+"Color",s=/rgba?\(0, 0, 0(, 0)?\)|transparent|#123456/i,t="background-color",u="transparent",v=" !important",w=a(document.body).css("color"),x=b.elements.content.css("color"),y=k.titlebar&&(h.y==="top"||h.y==="center"&&g.position().top+n.height/2+j.offset<k.titlebar.outerHeight(1)),z=y?k.titlebar:k.content;l.addClass(r),o.fill=e=g.css(t),o.border=f=g[0].style[q]||g.css(p)||l.css(p);if(!e||s.test(e))o.fill=z.css(t)||u,s.test(o.fill)&&(o.fill=l.css(t)||e);if(!f||s.test(f)||f===w)o.border=z.css(p)||u,s.test(o.border)&&(o.border=f);a("*",g).add(g).css("cssText",t+":"+u+v+";border:0"+v+";"),l.removeClass(r)},create:function(){var b=n.width,c=n.height,d;k.tip&&k.tip.remove(),k.tip=a("<div />",{"class":"ui-tooltip-tip"}).css({width:b,height:c}).prependTo(l),s?a("<canvas />").appendTo(k.tip)[0].getContext("2d").save():(d='<vml:shape coordorigin="0,0" style="display:inline-block; position:absolute; behavior:url(#default#VML);"></vml:shape>',k.tip.html(d+d),a("*",k.tip).bind("click mousedown",function(a){a.stopPropagation()}))},update:function(b,c){var g=k.tip,l=g.children(),q=n.width,r=n.height,t="px solid ",v="px dashed transparent",x=j.mimic,y=Math.round,z,A,C,D,E;b||(b=m.corner||i.corner),x===e?x=b:(x=new h.Corner(x),x.precedance=b.precedance,x.x==="inherit"?x.x=b.x:x.y==="inherit"?x.y=b.y:x.x===x.y&&(x[b.precedance]=b[b.precedance])),z=x.precedance,i.detectColours(b),o.border!=="transparent"&&o.border!=="#123456"?(p=u(b,f,d),j.border===0&&p>0&&(o.fill=o.border),i.border=p=j.border!==d?j.border:p):i.border=p=0,C=B(x,q,r),i.size=E=w(b),g.css(E),b.precedance==="y"?D=[y(x.x==="left"?p:x.x==="right"?E.width-q-p:(E.width-q)/2),y(x.y==="top"?E.height-r:0)]:D=[y(x.x==="left"?E.width-q:0),y(x.y==="top"?p:x.y==="bottom"?E.height-r-p:(E.height-r)/2)],s?(l.attr(E),A=l[0].getContext("2d"),A.restore(),A.save(),A.clearRect(0,0,3e3,3e3),A.translate(D[0],D[1]),A.beginPath(),A.moveTo(C[0][0],C[0][1]),A.lineTo(C[1][0],C[1][1]),A.lineTo(C[2][0],C[2][1]),A.closePath(),A.fillStyle=o.fill,A.strokeStyle=o.border,A.lineWidth=p*2,A.lineJoin="miter",A.miterLimit=100,p&&A.stroke(),A.fill()):(C="m"+C[0][0]+","+C[0][1]+" l"+C[1][0]+","+C[1][1]+" "+C[2][0]+","+C[2][1]+" xe",D[2]=p&&/^(r|b)/i.test(b.string())?parseFloat(a.browser.version,10)===8?2:1:0,l.css({antialias:""+(x.string().indexOf("center")>-1),left:D[0]-D[2]*Number(z==="x"),top:D[1]-D[2]*Number(z==="y"),width:q+p,height:r+p}).each(function(b){var c=a(this);c[c.prop?"prop":"attr"]({coordsize:q+p+" "+(r+p),path:C,fillcolor:o.fill,filled:!!b,stroked:!b}).css({display:p||b?"block":"none"}),!b&&c.html()===""&&c.html('<vml:stroke weight="'+p*2+'px" color="'+o.border+'" miterlimit="1000" joinstyle="miter"  style="behavior:url(#default#VML); display:inline-block;" />')})),c!==e&&i.position(b)},position:function(b){var c=k.tip,f={},g=Math.max(0,j.offset),h,l,m;if(j.corner===e||!c)return e;b=b||i.corner,h=b.precedance,l=w(b),m=[b.x,b.y],h==="x"&&m.reverse(),a.each(m,function(a,c){var e,i;c==="center"?(e=h==="y"?"left":"top",f[e]="50%",f["margin-"+e]=-Math.round(l[h==="y"?"width":"height"]/2)+g):(e=u(b,c,d),i=v(b),f[c]=a?p?u(b,c):0:g+(i>e?i:0))}),f[b[h]]-=l[h==="x"?"width":"height"],c.css({top:"",bottom:"",left:"",right:"",margin:""}).css(f);return f},destroy:function(){k.tip&&k.tip.remove(),l.unbind(q)}}),i.init()}function B(a,b,c){var d=Math.ceil(b/2),e=Math.ceil(c/2),f={bottomright:[[0,0],[b,c],[b,0]],bottomleft:[[0,0],[b,0],[0,c]],topright:[[0,c],[b,0],[b,c]],topleft:[[0,0],[0,c],[b,c]],topcenter:[[0,c],[d,0],[b,c]],bottomcenter:[[0,0],[b,0],[d,c]],rightcenter:[[0,0],[b,e],[0,c]],leftcenter:[[b,0],[b,c],[0,e]]};f.lefttop=f.bottomright,f.righttop=f.bottomleft,f.leftbottom=f.topright,f.rightbottom=f.topleft;return f[a.string()]}function A(b){var c=this,f=b.elements.tooltip,g=b.options.content.ajax,h=".qtip-ajax",i=/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,j=d;b.checks.ajax={"^content.ajax":function(a,b,d){b==="ajax"&&(g=d),b==="once"?c.init():g&&g.url?c.load():f.unbind(h)}},a.extend(c,{init:function(){g&&g.url&&f.unbind(h)[g.once?"one":"bind"]("tooltipshow"+h,c.load);return c},load:function(d,f){function p(a,c,d){a.status!==0&&b.set("content.text",c+": "+d)}function o(c){k&&(c=a("<div/>").append(c.replace(i,"")).find(k)),b.set("content.text",c)}function n(){l&&(b.show(d.originalEvent),f=e),a.isFunction(g.complete)&&g.complete.apply(this,arguments)}var h=g.url.indexOf(" "),j=g.url,k,l=g.once&&!g.loading&&f;if(l)try{d.preventDefault()}catch(m){}else if(d&&d.isDefaultPrevented())return c;h>-1&&(k=j.substr(h),j=j.substr(0,h)),a.ajax(a.extend({success:o,error:p,context:b},g,{url:j,complete:n}))}}),c.init()}function z(b,c){var i,j,k,l,m,n=a(this),o=a(document.body),p=this===document?o:n,q=n.metadata?n.metadata(c.metadata):f,r=c.metadata.type==="html5"&&q?q[c.metadata.name]:f,s=n.data(c.metadata.name||"qtipopts");try{s=typeof s==="string"?(new Function("return "+s))():s}catch(t){w("Unable to parse HTML5 attribute data: "+s)}l=a.extend(d,{},g.defaults,c,typeof s==="object"?x(s):f,x(r||q)),j=l.position,l.id=b;if("boolean"===typeof l.content.text){k=n.attr(l.content.attr);if(l.content.attr!==e&&k)l.content.text=k;else{w("Unable to locate content for tooltip! Aborting render of tooltip on element: ",n);return e}}j.container.length||(j.container=o),j.target===e&&(j.target=p),l.show.target===e&&(l.show.target=p),l.show.solo===d&&(l.show.solo=o),l.hide.target===e&&(l.hide.target=p),l.position.viewport===d&&(l.position.viewport=j.container),j.at=new h.Corner(j.at),j.my=new h.Corner(j.my);if(a.data(this,"qtip"))if(l.overwrite)n.qtip("destroy");else if(l.overwrite===e)return e;l.suppress&&(m=a.attr(this,"title"))&&a(this).removeAttr("title").attr(u,m),i=new y(n,l,b,!!k),a.data(this,"qtip",i),n.bind("remove.qtip-"+b,function(){i.destroy()});return i}function y(s,t,w,y){function R(){var c=[t.show.target[0],t.hide.target[0],z.rendered&&G.tooltip[0],t.position.container[0],t.position.viewport[0],b,document];z.rendered?a([]).pushStack(a.grep(c,function(a){return typeof a==="object"})).unbind(F):t.show.target.unbind(F+"-create")}function Q(){function p(a){E.is(":visible")&&z.reposition(a)}function o(a){if(E.hasClass(m))return e;clearTimeout(z.timers.inactive),z.timers.inactive=setTimeout(function(){z.hide(a)},t.hide.inactive)}function l(b){if(E.hasClass(m)||C||D)return e;var d=a(b.relatedTarget||b.target),g=d.closest(n)[0]===E[0],h=d[0]===f.show[0];clearTimeout(z.timers.show),clearTimeout(z.timers.hide);if(c.target==="mouse"&&g||t.hide.fixed&&(/mouse(out|leave|move)/.test(b.type)&&(g||h)))try{b.preventDefault(),b.stopImmediatePropagation()}catch(i){}else t.hide.delay>0?z.timers.hide=setTimeout(function(){z.hide(b)},t.hide.delay):z.hide(b)}function k(a){if(E.hasClass(m))return e;clearTimeout(z.timers.show),clearTimeout(z.timers.hide);var b=function(){z.toggle(d,a)};t.show.delay>0?z.timers.show=setTimeout(b,t.show.delay):b()}var c=t.position,f={show:t.show.target,hide:t.hide.target,viewport:a(c.viewport),document:a(document),body:a(document.body),window:a(b)},h={show:a.trim(""+t.show.event).split(" "),hide:a.trim(""+t.hide.event).split(" ")},j=a.browser.msie&&parseInt(a.browser.version,10)===6;E.bind("mouseenter"+F+" mouseleave"+F,function(a){var b=a.type==="mouseenter";b&&z.focus(a),E.toggleClass(q,b)}),t.hide.fixed&&(f.hide=f.hide.add(E),E.bind("mouseover"+F,function(){E.hasClass(m)||clearTimeout(z.timers.hide)})),/mouse(out|leave)/i.test(t.hide.event)?t.hide.leave==="window"&&f.window.bind("mouseout"+F+" blur"+F,function(a){/select|option/.test(a.target)&&!a.relatedTarget&&z.hide(a)}):/mouse(over|enter)/i.test(t.show.event)&&f.hide.bind("mouseleave"+F,function(a){clearTimeout(z.timers.show)}),(""+t.hide.event).indexOf("unfocus")>-1&&f.body.bind("mousedown"+F,function(b){var c=a(b.target),d=!E.hasClass(m)&&E.is(":visible");c[0]!==E[0]&&c.parents(n).length===0&&c.add(s).length>1&&!c.attr("disabled")&&z.hide(b)}),"number"===typeof t.hide.inactive&&(f.show.bind("qtip-"+w+"-inactive",o),a.each(g.inactiveEvents,function(a,b){f.hide.add(G.tooltip).bind(b+F+"-inactive",o)})),a.each(h.hide,function(b,c){var d=a.inArray(c,h.show),e=a(f.hide);d>-1&&e.add(f.show).length===e.length||c==="unfocus"?(f.show.bind(c+F,function(a){E.is(":visible")?l(a):k(a)}),delete h.show[d]):f.hide.bind(c+F,l)}),a.each(h.show,function(a,b){f.show.bind(b+F,k)}),"number"===typeof t.hide.distance&&f.show.add(E).bind("mousemove"+F,function(a){var b=H.origin||{},c=t.hide.distance,d=Math.abs;(d(a.pageX-b.pageX)>=c||d(a.pageY-b.pageY)>=c)&&z.hide(a)}),c.target==="mouse"&&(f.show.bind("mousemove"+F,function(a){i={pageX:a.pageX,pageY:a.pageY,type:"mousemove"}}),c.adjust.mouse&&(t.hide.event&&(E.bind("mouseleave"+F,function(a){(a.relatedTarget||a.target)!==f.show[0]&&z.hide(a)}),G.target.bind("mouseenter"+F+" mouseleave"+F,function(a){H.onTarget=a.type==="mouseenter"})),f.document.bind("mousemove"+F,function(a){H.onTarget&&!E.hasClass(m)&&E.is(":visible")&&z.reposition(a||i)}))),(c.adjust.resize||f.viewport.length)&&(a.event.special.resize?f.viewport:f.window).bind("resize"+F,p),(f.viewport.length||j&&E.css("position")==="fixed")&&f.viewport.bind("scroll"+F,p)}function P(b,d){function g(b){function i(c){c&&(delete h[c.src],clearTimeout(z.timers.img[c.src]),a(c).unbind(F)),a.isEmptyObject(h)&&(z.redraw(),d!==e&&z.reposition(H.event),b())}var g,h={};if((g=f.find("img:not([height]):not([width])")).length===0)return i();g.each(function(b,d){if(h[d.src]===c){var e=0,f=3;(function g(){if(d.height||d.width||e>f)return i(d);e+=1,z.timers.img[d.src]=setTimeout(g,700)})(),a(d).bind("error"+F+" load"+F,function(){i(this)}),h[d.src]=d}})}var f=G.content;if(!z.rendered||!b)return e;a.isFunction(b)&&(b=b.call(s,H.event,z)||""),b.jquery&&b.length>0?f.empty().append(b.css({display:"block"})):f.html(b),z.rendered<0?E.queue("fx",g):(D=0,g(a.noop));return z}function O(b,c){var d=G.title;if(!z.rendered||!b)return e;a.isFunction(b)&&(b=b.call(s,H.event,z));if(b===e)return K(e);b.jquery&&b.length>0?d.empty().append(b.css({display:"block"})):d.html(b),z.redraw(),c!==e&&z.rendered&&E.is(":visible")&&z.reposition(H.event)}function N(a){var b=G.button,c=G.title;if(!z.rendered)return e;a?(c||M(),L()):b.remove()}function M(){var b=B+"-title";G.titlebar&&K(),G.titlebar=a("<div />",{"class":k+"-titlebar "+(t.style.widget?"ui-widget-header":"")}).append(G.title=a("<div />",{id:b,"class":k+"-title","aria-atomic":d})).insertBefore(G.content).delegate(".ui-tooltip-close","mousedown keydown mouseup keyup mouseout",function(b){a(this).toggleClass("ui-state-active ui-state-focus",b.type.substr(-4)==="down")}).delegate(".ui-tooltip-close","mouseover mouseout",function(b){a(this).toggleClass("ui-state-hover",b.type==="mouseover")}),t.content.title.button?L():z.rendered&&z.redraw()}function L(){var b=t.content.title.button,c=typeof b==="string",d=c?b:"Close tooltip";G.button&&G.button.remove(),b.jquery?G.button=b:G.button=a("<a />",{"class":"ui-state-default ui-tooltip-close "+(t.style.widget?"":k+"-icon"),title:d,"aria-label":d}).prepend(a("<span />",{"class":"ui-icon ui-icon-close",html:"&times;"})),G.button.appendTo(G.titlebar).attr("role","button").click(function(a){E.hasClass(m)||z.hide(a);return e}),z.redraw()}function K(a){G.title&&(G.titlebar.remove(),G.titlebar=G.title=G.button=f,a!==e&&z.reposition())}function J(){var a=t.style.widget;E.toggleClass(l,a).toggleClass(o,t.style["default"]&&!a),G.content.toggleClass(l+"-content",a),G.titlebar&&G.titlebar.toggleClass(l+"-header",a),G.button&&G.button.toggleClass(k+"-icon",!a)}function I(a){var b=0,c,d=t,e=a.split(".");while(d=d[e[b++]])b<e.length&&(c=d);return[c||t,e.pop()]}var z=this,A=document.body,B=k+"-"+w,C=0,D=0,E=a(),F=".qtip-"+w,G,H;z.id=w,z.rendered=e,z.elements=G={target:s},z.timers={img:{}},z.options=t,z.checks={},z.plugins={},z.cache=H={event:{},target:a(),disabled:e,attr:y,onTarget:e},z.checks.builtin={"^id$":function(b,c,f){var h=f===d?g.nextid:f,i=k+"-"+h;h!==e&&h.length>0&&!a("#"+i).length&&(E[0].id=i,G.content[0].id=i+"-content",G.title[0].id=i+"-title")},"^content.text$":function(a,b,c){P(c)},"^content.title.text$":function(a,b,c){if(!c)return K();!G.title&&c&&M(),O(c)},"^content.title.button$":function(a,b,c){N(c)},"^position.(my|at)$":function(a,b,c){"string"===typeof c&&(a[b]=new h.Corner(c))},"^position.container$":function(a,b,c){z.rendered&&E.appendTo(c)},"^show.ready$":function(){z.rendered?z.toggle(d):z.render(1)},"^style.classes$":function(a,b,c){E.attr("class",k+" qtip ui-helper-reset "+c)},"^style.widget|content.title":J,"^events.(render|show|move|hide|focus|blur)$":function(b,c,d){E[(a.isFunction(d)?"":"un")+"bind"]("tooltip"+c,d)},"^(show|hide|position).(event|target|fixed|inactive|leave|distance|viewport|adjust)":function(){var a=t.position;E.attr("tracking",a.target==="mouse"&&a.adjust.mouse),R(),Q()}},a.extend(z,{render:function(b){if(z.rendered)return z;var c=t.content.text,f=t.content.title.text,g=t.position,i=a.Event("tooltiprender");a.attr(s[0],"aria-describedby",B),E=G.tooltip=a("<div/>",{id:B,"class":k+" qtip ui-helper-reset "+o+" "+t.style.classes+" "+k+"-pos-"+t.position.my.abbrev(),width:t.style.width||"",height:t.style.height||"",tracking:g.target==="mouse"&&g.adjust.mouse,role:"alert","aria-live":"polite","aria-atomic":e,"aria-describedby":B+"-content","aria-hidden":d}).toggleClass(m,H.disabled).data("qtip",z).appendTo(t.position.container).append(G.content=a("<div />",{"class":k+"-content",id:B+"-content","aria-atomic":d})),z.rendered=-1,C=D=1,f&&(M(),a.isFunction(f)||O(f,e)),a.isFunction(c)||P(c,e),z.rendered=d,J(),a.each(t.events,function(b,c){a.isFunction(c)&&E.bind(b==="toggle"?"tooltipshow tooltiphide":"tooltip"+b,c)}),a.each(h,function(){this.initialize==="render"&&this(z)}),Q(),E.queue("fx",function(a){i.originalEvent=H.event,E.trigger(i,[z]),C=D=0,z.redraw(),(t.show.ready||b)&&z.toggle(d,H.event,e),a()});return z},get:function(a){var b,c;switch(a.toLowerCase()){case"dimensions":b={height:E.outerHeight(),width:E.outerWidth()};break;case"offset":b=h.offset(E,t.position.container);break;default:c=I(a.toLowerCase()),b=c[0][c[1]],b=b.precedance?b.string():b}return b},set:function(b,c){function m(a,b){var c,d,e;for(c in k)for(d in k[c])if(e=(new RegExp(d,"i")).exec(a))b.push(e),k[c][d].apply(z,b)}var g=/^position\.(my|at|adjust|target|container)|style|content|show\.ready/i,h=/^content\.(title|attr)|style/i,i=e,j=e,k=z.checks,l;"string"===typeof b?(l=b,b={},b[l]=c):b=a.extend(d,{},b),a.each(b,function(c,d){var e=I(c.toLowerCase()),f;f=e[0][e[1]],e[0][e[1]]="object"===typeof d&&d.nodeType?a(d):d,b[c]=[e[0],e[1],d,f],i=g.test(c)||i,j=h.test(c)||j}),x(t),C=D=1,a.each(b,m),C=D=0,E.is(":visible")&&z.rendered&&(i&&z.reposition(t.position.target==="mouse"?f:H.event),j&&z.redraw());return z},toggle:function(b,c){function q(){b?(a.browser.msie&&E[0].style.removeAttribute("filter"),E.css("overflow",""),"string"===typeof h.autofocus&&a(h.autofocus,E).focus(),p=a.Event("tooltipvisible"),p.originalEvent=c?H.event:f,E.trigger(p,[z]),h.target.trigger("qtip-"+w+"-inactive")):E.css({display:"",visibility:"",opacity:"",left:"",top:""})}if(!z.rendered)return b?z.render(1):z;var g=b?"show":"hide",h=t[g],j=E.is(":visible"),k=!c||t[g].target.length<2||H.target[0]===c.target,l=t.position,m=t.content,o,p;(typeof b).search("boolean|number")&&(b=!j);if(!E.is(":animated")&&j===b&&k)return z;if(c){if(/over|enter/.test(c.type)&&/out|leave/.test(H.event.type)&&c.target===t.show.target[0]&&E.has(c.relatedTarget).length)return z;H.event=a.extend({},c)}p=a.Event("tooltip"+g),p.originalEvent=c?H.event:f,E.trigger(p,[z,90]);if(p.isDefaultPrevented())return z;a.attr(E[0],"aria-hidden",!b),b?(H.origin=a.extend({},i),z.focus(c),a.isFunction(m.text)&&P(m.text,e),a.isFunction(m.title.text)&&O(m.title.text,e),!v&&l.target==="mouse"&&l.adjust.mouse&&(a(document).bind("mousemove.qtip",function(a){i={pageX:a.pageX,pageY:a.pageY,type:"mousemove"}}),v=d),z.reposition(c,arguments[2]),(p.solo=!!h.solo)&&a(n,h.solo).not(E).qtip("hide",p)):(clearTimeout(z.timers.show),delete H.origin,v&&!a(n+'[tracking="true"]:visible',h.solo).not(E).length&&(a(document).unbind("mousemove.qtip"),v=e),z.blur(c)),k&&E.stop(0,1),h.effect===e?(E[g](),q.call(E)):a.isFunction(h.effect)?(h.effect.call(E,z),E.queue("fx",function(a){q(),a()})):E.fadeTo(90,b?1:0,q),b&&h.target.trigger("qtip-"+w+"-inactive");return z},show:function(a){return z.toggle(d,a)},hide:function(a){return z.toggle(e,a)},focus:function(b){if(!z.rendered)return z;var c=a(n),d=parseInt(E[0].style.zIndex,10),e=g.zindex+c.length,f=a.extend({},b),h,i;E.hasClass(p)||(i=a.Event("tooltipfocus"),i.originalEvent=f,E.trigger(i,[z,e]),i.isDefaultPrevented()||(d!==e&&(c.each(function(){this.style.zIndex>d&&(this.style.zIndex=this.style.zIndex-1)}),c.filter("."+p).qtip("blur",f)),E.addClass(p)[0].style.zIndex=e));return z},blur:function(b){var c=a.extend({},b),d;E.removeClass(p),d=a.Event("tooltipblur"),d.originalEvent=c,E.trigger(d,[z]);return z},reposition:function(c,d){if(!z.rendered||C)return z;C=1;var f=t.position.target,g=t.position,j=g.my,l=g.at,m=g.adjust,n=m.method.split(" "),o=E.outerWidth(),p=E.outerHeight(),q=0,r=0,s=a.Event("tooltipmove"),u=E.css("position")==="fixed",v=g.viewport,w={left:0,top:0},x=g.container,y=e,B=z.plugins.tip,D={horizontal:n[0],vertical:n[1]=n[1]||n[0],enabled:v.jquery&&f[0]!==b&&f[0]!==A&&m.method!=="none",left:function(a){var b=D.horizontal==="shift",c=-x.offset.left+v.offset.left+v.scrollLeft,d=j.x==="left"?o:j.x==="right"?-o:-o/2,e=l.x==="left"?q:l.x==="right"?-q:-q/2,f=B&&B.size?B.size.width||0:0,g=B&&B.corner&&B.corner.precedance==="x"&&!b?f:0,h=c-a+g,i=a+o-v.width-c+g,k=d-(j.precedance==="x"||j.x===j.y?e:0),n=j.x==="center";b?(g=B&&B.corner&&B.corner.precedance==="y"?f:0,k=(j.x==="left"?1:-1)*d-g,w.left+=h>0?h:i>0?-i:0,w.left=Math.max(-x.offset.left+v.offset.left+(g&&B.corner.x==="center"?B.offset:0),a-k,Math.min(Math.max(-x.offset.left+v.offset.left+v.width,a+k),w.left))):(h>0&&(j.x!=="left"||i>0)?w.left-=k:i>0&&(j.x!=="right"||h>0)&&(w.left-=n?-k:k),w.left!==a&&n&&(w.left-=m.x),w.left<c&&-w.left>i&&(w.left=a));return w.left-a},top:function(a){var b=D.vertical==="shift",c=-x.offset.top+v.offset.top+v.scrollTop,d=j.y==="top"?p:j.y==="bottom"?-p:-p/2,e=l.y==="top"?r:l.y==="bottom"?-r:-r/2,f=B&&B.size?B.size.height||0:0,g=B&&B.corner&&B.corner.precedance==="y"&&!b?f:0,h=c-a+g,i=a+p-v.height-c+g,k=d-(j.precedance==="y"||j.x===j.y?e:0),n=j.y==="center";b?(g=B&&B.corner&&B.corner.precedance==="x"?f:0,k=(j.y==="top"?1:-1)*d-g,w.top+=h>0?h:i>0?-i:0,w.top=Math.max(-x.offset.top+v.offset.top+(g&&B.corner.x==="center"?B.offset:0),a-k,Math.min(Math.max(-x.offset.top+v.offset.top+v.height,a+k),w.top))):(h>0&&(j.y!=="top"||i>0)?w.top-=k:i>0&&(j.y!=="bottom"||h>0)&&(w.top-=n?-k:k),w.top!==a&&n&&(w.top-=m.y),w.top<0&&-w.top>i&&(w.top=a));return w.top-a}},F;if(a.isArray(f)&&f.length===2)l={x:"left",y:"top"},w={left:f[0],top:f[1]};else if(f==="mouse"&&(c&&c.pageX||H.event.pageX))l={x:"left",y:"top"},c=(c&&(c.type==="resize"||c.type==="scroll")?H.event:c&&c.pageX&&c.type==="mousemove"?c:i&&i.pageX&&(m.mouse||!c||!c.pageX)?{pageX:i.pageX,pageY:i.pageY}:!m.mouse&&H.origin&&H.origin.pageX?H.origin:c)||c||H.event||i||{},w={top:c.pageY,left:c.pageX};else{f==="event"?c&&c.target&&c.type!=="scroll"&&c.type!=="resize"?f=H.target=a(c.target):f=H.target:f=H.target=a(f.jquery?f:G.target),f=a(f).eq(0);if(f.length===0)return z;f[0]===document||f[0]===b?(q=h.iOS?b.innerWidth:f.width(),r=h.iOS?b.innerHeight:f.height(),f[0]===b&&(w={top:(v||f).scrollTop(),left:(v||f).scrollLeft()})):f.is("area")&&h.imagemap?w=h.imagemap(f,l,D.enabled?n:e):f[0].namespaceURI==="http://www.w3.org/2000/svg"&&h.svg?w=h.svg(f,l):(q=f.outerWidth(),r=f.outerHeight(),w=h.offset(f,x)),w.offset&&(q=w.width,r=w.height,y=w.flipoffset,w=w.offset);if(h.iOS<4.1&&h.iOS>3.1||h.iOS==4.3||!h.iOS&&u)F=a(b),w.left-=F.scrollLeft(),w.top-=F.scrollTop();w.left+=l.x==="right"?q:l.x==="center"?q/2:0,w.top+=l.y==="bottom"?r:l.y==="center"?r/2:0}w.left+=m.x+(j.x==="right"?-o:j.x==="center"?-o/2:0),w.top+=m.y+(j.y==="bottom"?-p:j.y==="center"?-p/2:0),D.enabled?(v={elem:v,height:v[(v[0]===b?"h":"outerH")+"eight"](),width:v[(v[0]===b?"w":"outerW")+"idth"](),scrollLeft:u?0:v.scrollLeft(),scrollTop:u?0:v.scrollTop(),offset:v.offset()||{left:0,top:0}},x={elem:x,scrollLeft:x.scrollLeft(),scrollTop:x.scrollTop(),offset:x.offset()||{left:0,top:0}},w.adjusted={left:D.horizontal!=="none"?D.left(w.left):0,top:D.vertical!=="none"?D.top(w.top):0},w.adjusted.left+w.adjusted.top&&E.attr("class",E[0].className.replace(/ui-tooltip-pos-\w+/i,k+"-pos-"+j.abbrev())),y&&w.adjusted.left&&(w.left+=y.left),y&&w.adjusted.top&&(w.top+=y.top)):w.adjusted={left:0,top:0},s.originalEvent=a.extend({},c),E.trigger(s,[z,w,v.elem||v]);if(s.isDefaultPrevented())return z;delete w.adjusted,d===e||isNaN(w.left)||isNaN(w.top)||f==="mouse"||!a.isFunction(g.effect)?E.css(w):a.isFunction(g.effect)&&(g.effect.call(E,z,a.extend({},w)),E.queue(function(b){a(this).css({opacity:"",height:""}),a.browser.msie&&this.style.removeAttribute("filter"),b()})),C=0;return z},redraw:function(){if(z.rendered<1||D)return z;var a=t.position.container,b,c,d,e;D=1,t.style.height&&E.css("height",t.style.height),t.style.width?E.css("width",t.style.width):(E.css("width","").addClass(r),c=E.width()+1,d=E.css("max-width")||"",e=E.css("min-width")||"",b=(d+e).indexOf("%")>-1?a.width()/100:0,d=(d.indexOf("%")>-1?b:1)*parseInt(d,10)||c,e=(e.indexOf("%")>-1?b:1)*parseInt(e,10)||0,c=d+e?Math.min(Math.max(c,e),d):c,E.css("width",Math.round(c)).removeClass(r)),D=0;return z},disable:function(b){"boolean"!==typeof b&&(b=!E.hasClass(m)&&!H.disabled),z.rendered?(E.toggleClass(m,b),a.attr(E[0],"aria-disabled",b)):H.disabled=!!b;return z},enable:function(){return z.disable(e)},destroy:function(){var b=s[0],c=a.attr(b,u),d=s.data("qtip");z.rendered&&(E.remove(),a.each(z.plugins,function(){this.destroy&&this.destroy()})),clearTimeout(z.timers.show),clearTimeout(z.timers.hide),R();if(!d||z===d)a.removeData(b,"qtip"),t.suppress&&c&&(a.attr(b,"title",c),s.removeAttr(u)),s.removeAttr("aria-describedby");s.unbind(".qtip-"+w),delete j[z.id];return s}})}function x(b){var c;if(!b||"object"!==typeof b)return e;if(b.metadata===f||"object"!==typeof b.metadata)b.metadata={type:b.metadata};if("content"in b){if(b.content===f||"object"!==typeof b.content||b.content.jquery)b.content={text:b.content};c=b.content.text||e,!a.isFunction(c)&&(!c&&!c.attr||c.length<1||"object"===typeof c&&!c.jquery)&&(b.content.text=e);if("title"in b.content){if(b.content.title===f||"object"!==typeof b.content.title)b.content.title={text:b.content.title};c=b.content.title.text||e,!a.isFunction(c)&&(!c&&!c.attr||c.length<1||"object"===typeof c&&!c.jquery)&&(b.content.title.text=e)}}if("position"in b)if(b.position===f||"object"!==typeof b.position)b.position={my:b.position,at:b.position};if("show"in b)if(b.show===f||"object"!==typeof b.show)b.show.jquery?b.show={target:b.show}:b.show={event:b.show};if("hide"in b)if(b.hide===f||"object"!==typeof b.hide)b.hide.jquery?b.hide={target:b.hide}:b.hide={event:b.hide};if("style"in b)if(b.style===f||"object"!==typeof b.style)b.style={classes:b.style};a.each(h,function(){this.sanitize&&this.sanitize(b)});return b}function w(){w.history=w.history||[],w.history.push(arguments);if("object"===typeof console){var a=console[console.warn?"warn":"log"],b=Array.prototype.slice.call(arguments),c;typeof arguments[0]==="string"&&(b[0]="qTip2: "+b[0]),c=a.apply?a.apply(console,b):a(b)}}"use strict";var d=!0,e=!1,f=null,g,h,i,j={},k="ui-tooltip",l="ui-widget",m="ui-state-disabled",n="div.qtip."+k,o=k+"-default",p=k+"-focus",q=k+"-hover",r=k+"-fluid",s="-31000px",t="_replacedByqTip",u="oldtitle",v;g=a.fn.qtip=function(b,h,i){var j=(""+b).toLowerCase(),k=f,l=a.makeArray(arguments).slice(1),m=l[l.length-1],n=this[0]?a.data(this[0],"qtip"):f;if(!arguments.length&&n||j==="api")return n;if("string"===typeof b){this.each(function(){var b=a.data(this,"qtip");if(!b)return d;m&&m.timeStamp&&(b.cache.event=m);if(j!=="option"&&j!=="options"||!h)b[j]&&b[j].apply(b[j],l);else if(a.isPlainObject(h)||i!==c)b.set(h,i);else{k=b.get(h);return e}});return k!==f?k:this}if("object"===typeof b||!arguments.length){n=x(a.extend(d,{},b));return g.bind.call(this,n,m)}},g.bind=function(b,f){return this.each(function(k){function r(b){function d(){p.render(typeof b==="object"||l.show.ready),m.show.add(m.hide).unbind(o)}if(p.cache.disabled)return e;p.cache.event=a.extend({},b),p.cache.target=b?a(b.target):[c],l.show.delay>0?(clearTimeout(p.timers.show),p.timers.show=setTimeout(d,l.show.delay),n.show!==n.hide&&m.hide.bind(n.hide,function(){clearTimeout(p.timers.show)})):d()}var l,m,n,o,p,q;q=a.isArray(b.id)?b.id[k]:b.id,q=!q||q===e||q.length<1||j[q]?g.nextid++:j[q]=q,o=".qtip-"+q+"-create",p=z.call(this,q,b);if(p===e)return d;l=p.options,a.each(h,function(){this.initialize==="initialize"&&this(p)}),m={show:l.show.target,hide:l.hide.target},n={show:a.trim(""+l.show.event).replace(/ /g,o+" ")+o,hide:a.trim(""+l.hide.event).replace(/ /g,o+" ")+o},/mouse(over|enter)/i.test(n.show)&&!/mouse(out|leave)/i.test(n.hide)&&(n.hide+=" mouseleave"+o),m.show.bind("mousemove"+o,function(a){i={pageX:a.pageX,pageY:a.pageY,type:"mousemove"},p.cache.onTarget=d}),m.show.bind(n.show,r),(l.show.ready||l.prerender)&&r(f)})},h=g.plugins={Corner:function(a){a=(""+a).replace(/([A-Z])/," $1").replace(/middle/gi,"center").toLowerCase(),this.x=(a.match(/left|right/i)||a.match(/center/)||["inherit"])[0].toLowerCase(),this.y=(a.match(/top|bottom|center/i)||["inherit"])[0].toLowerCase();var b=a.charAt(0);this.precedance=b==="t"||b==="b"?"y":"x",this.string=function(){return this.precedance==="y"?this.y+this.x:this.x+this.y},this.abbrev=function(){var a=this.x.substr(0,1),b=this.y.substr(0,1);return a===b?a:a==="c"||a!=="c"&&b!=="c"?b+a:a+b},this.clone=function(){return{x:this.x,y:this.y,precedance:this.precedance,string:this.string,abbrev:this.abbrev,clone:this.clone}}},offset:function(a,b){function i(a,b){c.left+=b*a.scrollLeft(),c.top+=b*a.scrollTop()}var c=a.offset(),d=b,e=0,f=document.body,g,h;if(d){do{d.css("position")!=="static"&&(g=d[0]===f?{left:parseInt(d.css("left"),10)||0,top:parseInt(d.css("top"),10)||0}:d.position(),c.left-=g.left+(parseInt(d.css("borderLeftWidth"),10)||0)+(parseInt(d.css("marginLeft"),10)||0),c.top-=g.top+(parseInt(d.css("borderTopWidth"),10)||0),h=d.css("overflow"),(h==="scroll"||h==="auto")&&++e);if(d[0]===f)break}while(d=d.offsetParent());b[0]!==f&&e&&i(b,1)}return c},iOS:parseFloat((""+(/CPU.*OS ([0-9_]{1,3})|(CPU like).*AppleWebKit.*Mobile/i.exec(navigator.userAgent)||[0,""])[1]).replace("undefined","3_2").replace("_","."))||e,fn:{attr:function(b,c){if(this.length){var d=this[0],e="title",f=a.data(d,"qtip");if(b===e&&f&&"object"===typeof f&&f.options.suppress){if(arguments.length<2)return a.attr(d,u);f&&f.options.content.attr===e&&f.cache.attr&&f.set("content.text",c);return this.attr(u,c)}}return a.fn["attr"+t].apply(this,arguments)},clone:function(b){var c=a([]),d="title",e=a.fn["clone"+t].apply(this,arguments);b||e.filter("["+u+"]").attr("title",function(){return a.attr(this,u)}).removeAttr(u);return e},remove:a.ui?f:function(b,c){a.ui||a(this).each(function(){c||(!b||a.filter(b,[this]).length)&&a("*",this).add(this).each(function(){a(this).triggerHandler("remove")})})}}},a.each(h.fn,function(b,c){if(!c||a.fn[b+t])return d;var e=a.fn[b+t]=a.fn[b];a.fn[b]=function(){return c.apply(this,arguments)||e.apply(this,arguments)}}),g.version="nightly",g.nextid=0,g.inactiveEvents="click dblclick mousedown mouseup mousemove mouseleave mouseenter".split(" "),g.zindex=15e3,g.defaults={prerender:e,id:e,overwrite:d,suppress:d,content:{text:d,attr:"title",title:{text:e,button:e}},position:{my:"top left",at:"bottom right",target:e,container:e,viewport:e,adjust:{x:0,y:0,mouse:d,resize:d,method:"flip flip"},effect:function(b,c,d){a(this).animate(c,{duration:200,queue:e})}},show:{target:e,event:"mouseenter",effect:d,delay:90,solo:e,ready:e,autofocus:e},hide:{target:e,event:"mouseleave",effect:d,delay:0,fixed:e,inactive:e,leave:"window",distance:e},style:{classes:"",widget:e,width:e,height:e,"default":d},events:{render:f,move:f,show:f,hide:f,toggle:f,visible:f,focus:f,blur:f}},h.ajax=function(a){var b=a.plugins.ajax;return"object"===typeof b?b:a.plugins.ajax=new A(a)},h.ajax.initialize="render",h.ajax.sanitize=function(a){var b=a.content,c;b&&"ajax"in b&&(c=b.ajax,typeof c!=="object"&&(c=a.content.ajax={url:c}),"boolean"!==typeof c.once&&c.once&&(c.once=!!c.once))},a.extend(d,g.defaults,{content:{ajax:{loading:d,once:d}}}),h.imagemap=function(b,c,d){function n(a,b,c){var d=0,e=1,f=1,g=0,h=0,i=a.width,j=a.height;while(i>0&&j>0&&e>0&&f>0){i=Math.floor(i/2),j=Math.floor(j/2),c.x==="left"?e=i:c.x==="right"?e=a.width-i:e+=Math.floor(i/2),c.y==="top"?f=j:c.y==="bottom"?f=a.height-j:f+=Math.floor(j/2),d=b.length;while(d--){if(b.length<2)break;g=b[d][0]-a.offset.left,h=b[d][1]-a.offset.top,(c.x==="left"&&g>=e||c.x==="right"&&g<=e||c.x==="center"&&(g<e||g>a.width-e)||c.y==="top"&&h>=f||c.y==="bottom"&&h<=f||c.y==="center"&&(h<f||h>a.height-f))&&b.splice(d,1)}}return{left:b[0][0],top:b[0][1]}}b.jquery||(b=a(b));var e=(b[0].shape||b.attr("shape")).toLowerCase(),f=(b[0].coords||b.attr("coords")).split(","),g=[],h=a('img[usemap="#'+b.parent("map").attr("name")+'"]'),i=h.offset(),j={width:0,height:0,offset:{top:1e10,right:0,bottom:0,left:1e10}},k=0,l=0,m;i.left+=Math.ceil((h.outerWidth()-h.width())/2),i.top+=Math.ceil((h.outerHeight()-h.height())/2);if(e==="poly"){k=f.length;while(k--)l=[parseInt(f[--k],10),parseInt(f[k+1],10)],l[0]>j.offset.right&&(j.offset.right=l[0]),l[0]<j.offset.left&&(j.offset.left=l[0]),l[1]>j.offset.bottom&&(j.offset.bottom=l[1]),l[1]<j.offset.top&&(j.offset.top=l[1]),g.push(l)}else g=a.map(f,function(a){return parseInt(a,10)});switch(e){case"rect":j={width:Math.abs(g[2]-g[0]),height:Math.abs(g[3]-g[1]),offset:{left:Math.min(g[0],g[2]),top:Math.min(g[1],g[3])}};break;case"circle":j={width:g[2]+2,height:g[2]+2,offset:{left:g[0],top:g[1]}};break;case"poly":a.extend(j,{width:Math.abs(j.offset.right-j.offset.left),height:Math.abs(j.offset.bottom-j.offset.top)}),c.string()==="centercenter"?j.offset={left:j.offset.left+j.width/2,top:j.offset.top+j.height/2}:(j.offset=n(j,g.slice(),c),d&&(d[0]==="flip"||d[1]==="flip")&&(j.flipoffset=n(j,g.slice(),{x:c.x==="left"?"right":c.x==="right"?"left":"center",y:c.y==="top"?"bottom":c.y==="bottom"?"top":"center"}),j.flipoffset.left-=j.offset.left,j.flipoffset.top-=j.offset.top)),j.width=j.height=0}j.offset.left+=i.left,j.offset.top+=i.top;return j},h.tip=function(a){var b=a.plugins.tip;return"object"===typeof b?b:a.plugins.tip=new C(a)},h.tip.initialize="render",h.tip.sanitize=function(a){var b=a.style,c;b&&"tip"in b&&(c=a.style.tip,typeof c!=="object"&&(a.style.tip={corner:c}),/string|boolean/i.test(typeof c.corner)||(c.corner=d),typeof c.width!=="number"&&delete c.width,typeof c.height!=="number"&&delete c.height,typeof c.border!=="number"&&c.border!==d&&delete c.border,typeof c.offset!=="number"&&delete c.offset)},a.extend(d,g.defaults,{style:{tip:{corner:d,mimic:e,width:6,height:6,border:d,offset:0}}}),h.svg=function(b,c){var d=a(document),e=b[0],f={width:0,height:0,offset:{top:1e10,left:1e10}},g,h,i,j,k;if(e.getBBox&&e.parentNode){g=e.getBBox(),h=e.getScreenCTM(),i=e.farthestViewportElement||e;if(!i.createSVGPoint)return f;j=i.createSVGPoint(),j.x=g.x,j.y=g.y,k=j.matrixTransform(h),f.offset.left=k.x,f.offset.top=k.y,j.x+=g.width,j.y+=g.height,k=j.matrixTransform(h),f.width=k.x-f.offset.left,f.height=k.y-f.offset.top,f.offset.left+=d.scrollLeft(),f.offset.top+=d.scrollTop()}return f},h.modal=function(a){var b=a.plugins.modal;return"object"===typeof b?b:a.plugins.modal=new D(a)},h.modal.initialize="render",h.modal.sanitize=function(a){a.show&&(typeof a.show.modal!=="object"?a.show.modal={on:!!a.show.modal}:typeof a.show.modal.on==="undefined"&&(a.show.modal.on=d))},h.modal.zindex=g.zindex+1e3,a.extend(d,g.defaults,{show:{modal:{on:e,effect:d,blur:d,escape:d}}}),h.bgiframe=function(b){var c=a.browser,d=b.plugins.bgiframe;if(a("select, object").length<1||(!c.msie||(""+c.version).charAt(0)!=="6"))return e;return"object"===typeof d?d:b.plugins.bgiframe=new E(b)},h.bgiframe.initialize="render"})(jQuery,window)












/*
  SortTable
  version 2
  7th April 2007
  Stuart Langridge, http://www.kryogenix.org/code/browser/sorttable/
  
  Instructions:
  Download this file
  Add <script src="sorttable.js"></script> to your HTML
  Add class="sortable" to any table you'd like to make sortable
  Click on the headers to sort
  
  Thanks to many, many people for contributions and suggestions.
  Licenced as X11: http://www.kryogenix.org/code/browser/licence.html
  This basically means: do what you want with it.
*/

 
var stIsIE = /*@cc_on!@*/false;

sorttable = {
  init: function() {
    // quit if this function has already been called
    if (arguments.callee.done) return;
    // flag this function so we don't do the same thing twice
    arguments.callee.done = true;
    // kill the timer
    if (_timer) clearInterval(_timer);
    
    if (!document.createElement || !document.getElementsByTagName) return;
    
    sorttable.DATE_RE = /^(\d\d?)[\/\.-](\d\d?)[\/\.-]((\d\d)?\d\d)$/;
    
    forEach(document.getElementsByTagName('table'), function(table) {
      if (table.className.search(/\bsortable\b/) != -1) {
        sorttable.makeSortable(table);
      }
    });
    
  },
  
  makeSortable: function(table) {
    if (table.getElementsByTagName('thead').length == 0) {
      // table doesn't have a tHead. Since it should have, create one and
      // put the first table row in it.
      the = document.createElement('thead');
      the.appendChild(table.rows[0]);
      table.insertBefore(the,table.firstChild);
    }
    // Safari doesn't support table.tHead, sigh
    if (table.tHead == null) table.tHead = table.getElementsByTagName('thead')[0];
    
    if (table.tHead.rows.length != 1) return; // can't cope with two header rows
    
    // Sorttable v1 put rows with a class of "sortbottom" at the bottom (as
    // "total" rows, for example). This is B&R, since what you're supposed
    // to do is put them in a tfoot. So, if there are sortbottom rows,
    // for backwards compatibility, move them to tfoot (creating it if needed).
    sortbottomrows = [];
    for (var i=0; i<table.rows.length; i++) {
      if (table.rows[i].className.search(/\bsortbottom\b/) != -1) {
        sortbottomrows[sortbottomrows.length] = table.rows[i];
      }
    }
    if (sortbottomrows) {
      if (table.tFoot == null) {
        // table doesn't have a tfoot. Create one.
        tfo = document.createElement('tfoot');
        table.appendChild(tfo);
      }
      for (var i=0; i<sortbottomrows.length; i++) {
        tfo.appendChild(sortbottomrows[i]);
      }
      delete sortbottomrows;
    }
    
    // work through each column and calculate its type
    headrow = table.tHead.rows[0].cells;
    for (var i=0; i<headrow.length; i++) {
      // manually override the type with a sorttable_type attribute
      if (!headrow[i].className.match(/\bsorttable_nosort\b/)) { // skip this col
        mtch = headrow[i].className.match(/\bsorttable_([a-z0-9]+)\b/);
        if (mtch) { override = mtch[1]; }
	      if (mtch && typeof sorttable["sort_"+override] == 'function') {
	        headrow[i].sorttable_sortfunction = sorttable["sort_"+override];
	      } else {
	        headrow[i].sorttable_sortfunction = sorttable.guessType(table,i);
	      }
	      // make it clickable to sort
	      headrow[i].sorttable_columnindex = i;
	      headrow[i].sorttable_tbody = table.tBodies[0];
	      dean_addEvent(headrow[i],"click", function(e) {

          if (this.className.search(/\bsorttable_sorted\b/) != -1) {
            // if we're already sorted by this column, just 
            // reverse the table, which is quicker
            sorttable.reverse(this.sorttable_tbody);
            this.className = this.className.replace('sorttable_sorted',
                                                    'sorttable_sorted_reverse');
            this.removeChild(document.getElementById('sorttable_sortfwdind'));
            sortrevind = document.createElement('span');
            sortrevind.id = "sorttable_sortrevind";
            sortrevind.innerHTML = stIsIE ? '&nbsp<font face="webdings">5</font>' : '&nbsp;&#x25B4;';
            this.appendChild(sortrevind);
            return;
          }
          if (this.className.search(/\bsorttable_sorted_reverse\b/) != -1) {
            // if we're already sorted by this column in reverse, just 
            // re-reverse the table, which is quicker
            sorttable.reverse(this.sorttable_tbody);
            this.className = this.className.replace('sorttable_sorted_reverse',
                                                    'sorttable_sorted');
            this.removeChild(document.getElementById('sorttable_sortrevind'));
            sortfwdind = document.createElement('span');
            sortfwdind.id = "sorttable_sortfwdind";
            sortfwdind.innerHTML = stIsIE ? '&nbsp<font face="webdings">6</font>' : '&nbsp;&#x25BE;';
            this.appendChild(sortfwdind);
            return;
          }
          
          // remove sorttable_sorted classes
          theadrow = this.parentNode;
          forEach(theadrow.childNodes, function(cell) {
            if (cell.nodeType == 1) { // an element
              cell.className = cell.className.replace('sorttable_sorted_reverse','');
              cell.className = cell.className.replace('sorttable_sorted','');
            }
          });
          sortfwdind = document.getElementById('sorttable_sortfwdind');
          if (sortfwdind) { sortfwdind.parentNode.removeChild(sortfwdind); }
          sortrevind = document.getElementById('sorttable_sortrevind');
          if (sortrevind) { sortrevind.parentNode.removeChild(sortrevind); }
          
          this.className += ' sorttable_sorted';
          sortfwdind = document.createElement('span');
          sortfwdind.id = "sorttable_sortfwdind";
          sortfwdind.innerHTML = stIsIE ? '&nbsp<font face="webdings">6</font>' : '&nbsp;&#x25BE;';
          this.appendChild(sortfwdind);

	        // build an array to sort. This is a Schwartzian transform thing,
	        // i.e., we "decorate" each row with the actual sort key,
	        // sort based on the sort keys, and then put the rows back in order
	        // which is a lot faster because you only do getInnerText once per row
	        row_array = [];
	        col = this.sorttable_columnindex;
	        rows = this.sorttable_tbody.rows;
	        for (var j=0; j<rows.length; j++) {
	          row_array[row_array.length] = [sorttable.getInnerText(rows[j].cells[col]), rows[j]];
	        }
	        /* If you want a stable sort, uncomment the following line */
	        //sorttable.shaker_sort(row_array, this.sorttable_sortfunction);
	        /* and comment out this one */
	        row_array.sort(this.sorttable_sortfunction);
	        
	        tb = this.sorttable_tbody;
	        for (var j=0; j<row_array.length; j++) {
	          tb.appendChild(row_array[j][1]);
	        }
	        
	        delete row_array;
	      });
	    }
    }
  },
  
  guessType: function(table, column) {
    // guess the type of a column based on its first non-blank row
    sortfn = sorttable.sort_alpha;
    for (var i=0; i<table.tBodies[0].rows.length; i++) {
      text = sorttable.getInnerText(table.tBodies[0].rows[i].cells[column]);
      if (text != '') {
        if (text.match(/^-?[£$¤]?[\d,.]+%?$/)) {
          return sorttable.sort_numeric;
        }
        // check for a date: dd/mm/yyyy or dd/mm/yy 
        // can have / or . or - as separator
        // can be mm/dd as well
        possdate = text.match(sorttable.DATE_RE)
        if (possdate) {
          // looks like a date
          first = parseInt(possdate[1]);
          second = parseInt(possdate[2]);
          if (first > 12) {
            // definitely dd/mm
            return sorttable.sort_ddmm;
          } else if (second > 12) {
            return sorttable.sort_mmdd;
          } else {
            // looks like a date, but we can't tell which, so assume
            // that it's dd/mm (English imperialism!) and keep looking
            sortfn = sorttable.sort_ddmm;
          }
        }
      }
    }
    return sortfn;
  },
  
  getInnerText: function(node) {
    // gets the text we want to use for sorting for a cell.
    // strips leading and trailing whitespace.
    // this is *not* a generic getInnerText function; it's special to sorttable.
    // for example, you can override the cell text with a customkey attribute.
    // it also gets .value for <input> fields.
    
    hasInputs = (typeof node.getElementsByTagName == 'function') &&
                 node.getElementsByTagName('input').length;
    
    if (node.getAttribute("sorttable_customkey") != null) {
      return node.getAttribute("sorttable_customkey");
    }
    else if (typeof node.textContent != 'undefined' && !hasInputs) {
      return node.textContent.replace(/^\s+|\s+$/g, '');
    }
    else if (typeof node.innerText != 'undefined' && !hasInputs) {
      return node.innerText.replace(/^\s+|\s+$/g, '');
    }
    else if (typeof node.text != 'undefined' && !hasInputs) {
      return node.text.replace(/^\s+|\s+$/g, '');
    }
    else {
      switch (node.nodeType) {
        case 3:
          if (node.nodeName.toLowerCase() == 'input') {
            return node.value.replace(/^\s+|\s+$/g, '');
          }
        case 4:
          return node.nodeValue.replace(/^\s+|\s+$/g, '');
          break;
        case 1:
        case 11:
          var innerText = '';
          for (var i = 0; i < node.childNodes.length; i++) {
            innerText += sorttable.getInnerText(node.childNodes[i]);
          }
          return innerText.replace(/^\s+|\s+$/g, '');
          break;
        default:
          return '';
      }
    }
  },
  
  reverse: function(tbody) {
    // reverse the rows in a tbody
    newrows = [];
    for (var i=0; i<tbody.rows.length; i++) {
      newrows[newrows.length] = tbody.rows[i];
    }
    for (var i=newrows.length-1; i>=0; i--) {
       tbody.appendChild(newrows[i]);
    }
    delete newrows;
  },
  
  /* sort functions
     each sort function takes two parameters, a and b
     you are comparing a[0] and b[0] */
  sort_numeric: function(a,b) {
    aa = parseFloat(a[0].replace(/[^0-9.-]/g,''));
    if (isNaN(aa)) aa = 0;
    bb = parseFloat(b[0].replace(/[^0-9.-]/g,'')); 
    if (isNaN(bb)) bb = 0;
    return aa-bb;
  },
  sort_alpha: function(a,b) {
    if (a[0]==b[0]) return 0;
    if (a[0]<b[0]) return -1;
    return 1;
  },
  sort_ddmm: function(a,b) {
    mtch = a[0].match(sorttable.DATE_RE);
    y = mtch[3]; m = mtch[2]; d = mtch[1];
    if (m.length == 1) m = '0'+m;
    if (d.length == 1) d = '0'+d;
    dt1 = y+m+d;
    mtch = b[0].match(sorttable.DATE_RE);
    y = mtch[3]; m = mtch[2]; d = mtch[1];
    if (m.length == 1) m = '0'+m;
    if (d.length == 1) d = '0'+d;
    dt2 = y+m+d;
    if (dt1==dt2) return 0;
    if (dt1<dt2) return -1;
    return 1;
  },
  sort_mmdd: function(a,b) {
    mtch = a[0].match(sorttable.DATE_RE);
    y = mtch[3]; d = mtch[2]; m = mtch[1];
    if (m.length == 1) m = '0'+m;
    if (d.length == 1) d = '0'+d;
    dt1 = y+m+d;
    mtch = b[0].match(sorttable.DATE_RE);
    y = mtch[3]; d = mtch[2]; m = mtch[1];
    if (m.length == 1) m = '0'+m;
    if (d.length == 1) d = '0'+d;
    dt2 = y+m+d;
    if (dt1==dt2) return 0;
    if (dt1<dt2) return -1;
    return 1;
  },
  
  shaker_sort: function(list, comp_func) {
    // A stable sort function to allow multi-level sorting of data
    // see: http://en.wikipedia.org/wiki/Cocktail_sort
    // thanks to Joseph Nahmias
    var b = 0;
    var t = list.length - 1;
    var swap = true;

    while(swap) {
        swap = false;
        for(var i = b; i < t; ++i) {
            if ( comp_func(list[i], list[i+1]) > 0 ) {
                var q = list[i]; list[i] = list[i+1]; list[i+1] = q;
                swap = true;
            }
        } // for
        t--;

        if (!swap) break;

        for(var i = t; i > b; --i) {
            if ( comp_func(list[i], list[i-1]) < 0 ) {
                var q = list[i]; list[i] = list[i-1]; list[i-1] = q;
                swap = true;
            }
        } // for
        b++;

    } // while(swap)
  }  
}

/* ******************************************************************
   Supporting functions: bundled here to avoid depending on a library
   ****************************************************************** */

// Dean Edwards/Matthias Miller/John Resig

/* for Mozilla/Opera9 */
if (document.addEventListener) {
    document.addEventListener("DOMContentLoaded", sorttable.init, false);
}

/* for Internet Explorer */
/*@cc_on @*/
/*@if (@_win32)
    document.write("<script id=__ie_onload defer src=javascript:void(0)><\/script>");
    var script = document.getElementById("__ie_onload");
    script.onreadystatechange = function() {
        if (this.readyState == "complete") {
            sorttable.init(); // call the onload handler
        }
    };
/*@end @*/

/* for Safari */
if (/WebKit/i.test(navigator.userAgent)) { // sniff
    var _timer = setInterval(function() {
        if (/loaded|complete/.test(document.readyState)) {
            sorttable.init(); // call the onload handler
        }
    }, 10);
}

/* for other browsers */
window.onload = sorttable.init;

// written by Dean Edwards, 2005
// with input from Tino Zijdel, Matthias Miller, Diego Perini

// http://dean.edwards.name/weblog/2005/10/add-event/

function dean_addEvent(element, type, handler) {
	if (element.addEventListener) {
		element.addEventListener(type, handler, false);
	} else {
		// assign each event handler a unique ID
		if (!handler.$$guid) handler.$$guid = dean_addEvent.guid++;
		// create a hash table of event types for the element
		if (!element.events) element.events = {};
		// create a hash table of event handlers for each element/event pair
		var handlers = element.events[type];
		if (!handlers) {
			handlers = element.events[type] = {};
			// store the existing event handler (if there is one)
			if (element["on" + type]) {
				handlers[0] = element["on" + type];
			}
		}
		// store the event handler in the hash table
		handlers[handler.$$guid] = handler;
		// assign a global event handler to do all the work
		element["on" + type] = handleEvent;
	}
};
// a counter used to create unique IDs
dean_addEvent.guid = 1;

function removeEvent(element, type, handler) {
	if (element.removeEventListener) {
		element.removeEventListener(type, handler, false);
	} else {
		// delete the event handler from the hash table
		if (element.events && element.events[type]) {
			delete element.events[type][handler.$$guid];
		}
	}
};

function handleEvent(event) {
	var returnValue = true;
	// grab the event object (IE uses a global event object)
	event = event || fixEvent(((this.ownerDocument || this.document || this).parentWindow || window).event);
	// get a reference to the hash table of event handlers
	var handlers = this.events[event.type];
	// execute each event handler
	for (var i in handlers) {
		this.$$handleEvent = handlers[i];
		if (this.$$handleEvent(event) === false) {
			returnValue = false;
		}
	}
	return returnValue;
};

function fixEvent(event) {
	// add W3C standard event methods
	event.preventDefault = fixEvent.preventDefault;
	event.stopPropagation = fixEvent.stopPropagation;
	return event;
};
fixEvent.preventDefault = function() {
	this.returnValue = false;
};
fixEvent.stopPropagation = function() {
  this.cancelBubble = true;
}

// Dean's forEach: http://dean.edwards.name/base/forEach.js
/*
	forEach, version 1.0
	Copyright 2006, Dean Edwards
	License: http://www.opensource.org/licenses/mit-license.php
*/

// array-like enumeration
if (!Array.forEach) { // mozilla already supports this
	Array.forEach = function(array, block, context) {
		for (var i = 0; i < array.length; i++) {
			block.call(context, array[i], i, array);
		}
	};
}

// generic enumeration
Function.prototype.forEach = function(object, block, context) {
	for (var key in object) {
		if (typeof this.prototype[key] == "undefined") {
			block.call(context, object[key], key, object);
		}
	}
};

// character enumeration
String.forEach = function(string, block, context) {
	Array.forEach(string.split(""), function(chr, index) {
		block.call(context, chr, index, string);
	});
};

// globally resolve forEach enumeration
var forEach = function(object, block, context) {
	if (object) {
		var resolve = Object; // default
		if (object instanceof Function) {
			// functions have a "length" property
			resolve = Function;
		} else if (object.forEach instanceof Function) {
			// the object implements a custom forEach method so use that
			object.forEach(block, context);
			return;
		} else if (typeof object == "string") {
			// the object is a string
			resolve = String;
		} else if (typeof object.length == "number") {
			// the object is array-like
			resolve = Array;
		}
		resolve.forEach(object, block, context);
	}
};



/*
 * jQuery Joyride Plugin 1.0.2
 * www.ZURB.com/playground
 * Copyright 2011, ZURB
 * Free to use under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
*/

(function($) {
  $.fn.joyride = function(options) {

    // +++++++++++++++++++
    //   Defaults
    // +++++++++++++++++++
    var settings = {
      'tipLocation': 'bottom', // 'top' or 'bottom' in relation to parent
      'scrollSpeed': 300, // Page scrolling speed in milliseconds
      'timer': 0, // 0 = no timer, all other numbers = timer in milliseconds
      'startTimerOnClick': false, // true or false - true requires clicking the first button start the timer
      'nextButton': true, // true or false to control whether a next button is used
      'tipAnimation': 'pop', // 'pop' or 'fade' in each tip
      'tipAnimationFadeSpeed': 300, // when tipAnimation = 'fade' this is speed in milliseconds for the transition
      'cookieMonster': false, // true or false to control whether cookies are used
      'cookieName': 'JoyRide', // Name the cookie you'll use
      'cookieDomain': false, // Will this cookie be attached to a domain, ie. '.notableapp.com'
      'tipContainer': 'body', // Where will the tip be attached if not inline
      'inline': false, // true or false, if true the tip will be attached after the element
      'tipContent': '#joyRideTipContent', // What is the ID of the <ol> you put the content in
      'postRideCallback': null // A possible method to call once the tour closes (canceled or complete)
    };

    //Extend those options
    var options = $.extend(settings, options);

    return this.each(function() {

      if ($(options.tipContent).length === 0) return;

      $(options.tipContent).hide();

      var bodyOffset = $(options.tipContainer).children('*').first().position(),
      tipContent = $(options.tipContent + ' li'),
      count = skipCount = 0,
      prevCount = -1,
      timerIndicatorInstance,
      timerIndicatorTemplate = '<div class="joyride-timer-indicator-wrap"><span class="joyride-timer-indicator"></span></div>',
      tipTemplate = function(tipClass, index, buttonText, self) { return '<div class="joyride-tip-guide ' + tipClass + '" id="joyRidePopup' + index + '"><span class="joyride-nub"></span>' + $(self).html() + buttonText + '<a href="#close" class="joyride-close-tip">X</a>' + timerIndicatorInstance + '</div>'; },
      tipLayout = function(tipClass, index, buttonText, self) {
        if (index == 0 && settings.startTimerOnClick && settings.timer > 0 || settings.timer == 0) {
          timerIndicatorInstance = '';
        } else {
          timerIndicatorInstance = timerIndicatorTemplate;
        }
        if (!tipClass) tipClass = '';
        (buttonText != '') ? buttonText = '<a href="#" class="joyride-next-tip small nice radius yellow button">' + buttonText + '</a>': buttonText = '';
        if (settings.inline) {
          $(tipTemplate(tipClass, index, buttonText, self)).insertAfter('#' + $(self).data('id'));
        } else {
          $(options.tipContainer).append(tipTemplate(tipClass, index, buttonText, self));
        }
      };

      if(!settings.cookieMonster || !$.cookie(settings.cookieName)) {

      tipContent.each(function(index) {
        var buttonText = $(this).data('text'),
        tipClass = $(this).attr('class'),
        self = this;

        if (settings.nextButton && buttonText == undefined) {
          buttonText = 'Next';
        }
        if (settings.nextButton || !settings.nextButton && settings.startTimerOnClick) {
          if ($(this).attr('class')) {
            tipLayout(tipClass, index, buttonText, self);
          } else {
            tipLayout(false, index, buttonText, self);
          }
        } else if (!settings.nextButton) {
          if ($(this).attr('class')) {
            tipLayout(tipClass, index, '', self);
          } else {
            tipLayout(false, index, '', self);
          }
        }
        $('#joyRidePopup' + index).hide();
      });
    }

      showNextTip = function() {
        var parentElementID = $(tipContent[count]).data('id'),
        parentElement = $('#' + parentElementID);

        while (parentElement.offset() === null) {
          count++;
          skipCount++;
          prevCount++;
          parentElementID = $(tipContent[count]).data('id'),
          parentElement = $('#' + parentElementID);

          if ($(tipContent).length < count)
            break;
        }
        var windowHalf = Math.ceil($(window).height() / 2),
        currentTip = $('#joyRidePopup' + count),
        currentTipPosition = parentElement.offset(),
        currentParentHeight = parentElement.outerHeight(),
        currentTipHeight = currentTip.outerHeight(),
        nubHeight = Math.ceil($('.joyride-nub').outerHeight() / 2),
        tipOffset = 0;

        if (currentTip.length === 0) return;

        if (count < tipContent.length) {
          if (settings.tipAnimation == "pop") {
            $('.joyride-timer-indicator').width(0);
            if (settings.timer > 0) {
              currentTip.show().children('.joyride-timer-indicator-wrap').children('.joyride-timer-indicator').animate({width: $('.joyride-timer-indicator-wrap').width()}, settings.timer);
            } else {
              currentTip.show();
            }
          } else if (settings.tipAnimation == "fade") {
            $('.joyride-timer-indicator').width(0);
            if (settings.timer > 0) {
              currentTip.fadeIn(settings.tipAnimationFadeSpeed).children('.joyride-timer-indicator-wrap').children('.joyride-timer-indicator').animate({width: $('.joyride-timer-indicator-wrap').width()}, settings.timer);
            } else {
              currentTip.fadeIn(settings.tipAnimationFadeSpeed);
            }
          }

          // ++++++++++++++++++
          //   Tip Location
          // ++++++++++++++++++

          if (settings.tipLocation == "bottom") {
            currentTip.offset({top: (currentTipPosition.top + currentParentHeight + nubHeight), left: (currentTipPosition.left - bodyOffset.left)});
            currentTip.children('.joyride-nub').addClass('top').removeClass('bottom');
          } else if (settings.tipLocation == "top") {
            if (currentTipHeight >= currentTipPosition.top) {
              currentTip.offset({top: ((currentTipPosition.top + currentParentHeight + nubHeight) - bodyOffset.top), left: (currentTipPosition.left - bodyOffset.left)});
              currentTip.children('.joyride-nub').addClass('top').removeClass('bottom');
            } else {
              currentTip.offset({top: ((currentTipPosition.top) - (currentTipHeight + bodyOffset.top + nubHeight)), left: (currentTipPosition.left - bodyOffset.left)});
              currentTip.children('.joyride-nub').addClass('bottom').removeClass('top');
            }
          }

          // Animate Scrolling when tip is off screen
          tipOffset = Math.ceil(currentTip.offset().top - windowHalf);

          $("html, body").animate({
            scrollTop: tipOffset
          }, settings.scrollSpeed);

          if (count > 0) {
            if (skipCount > 0) {
              var hideCount = prevCount - skipCount;
              skipCount = 0;
            } else {
              var hideCount = prevCount;
            }
            if (settings.tipAnimation == "pop") {
              $('#joyRidePopup' + hideCount).hide();
            } else if (settings.tipAnimation == "fade") {
              $('#joyRidePopup' + hideCount).fadeOut(settings.tipAnimationFadeSpeed);
            }
          }

        // Hide the last tip when clicked
        } else if ((tipContent.length - 1) < count) {
          if (skipCount > 0) {
            var hideCount = prevCount - skipCount;
            skipCount = 0;
          } else {
            var hideCount = prevCount;
          }
          if (settings.cookieMonster == true) {
            $.cookie(settings.cookieName, 'ridden', { expires: 365, domain: settings.cookieDomain });
          } else {
            // Do not include cookie
          }
          if (settings.tipAnimation == "pop") {
            $('#joyRidePopup' + hideCount).fadeTo(0, 0);
          } else if (settings.tipAnimation == "fade") {
            $('#joyRidePopup' + hideCount).fadeTo(settings.tipAnimationFadeSpeed, 0);
          }
        }
        count++;

        if (prevCount < 0) {
          prevCount = 0;
        } else {
          prevCount++;
        }
      }

      if (!settings.inline || !settings.cookieMonster || !$.cookie(settings.cookieName)) {
        $(window).resize(function() {
          var parentElementID = $(tipContent[prevCount]).data('id'),
          currentTipPosition = $('#' + parentElementID).offset(),
          currentParentHeight = $('#' + parentElementID).outerHeight(),
          currentTipHeight = $('#joyRidePopup' + prevCount).outerHeight(),
          nubHeight = Math.ceil($('.joyride-nub').outerHeight() / 2);
          if (settings.tipLocation == "bottom") {
            $('#joyRidePopup' + prevCount).offset({top: (currentTipPosition.top + currentParentHeight + nubHeight), left: currentTipPosition.left});
          } else if (settings.tipLocation == "top") {
            if (currentTipPosition.top <= currentTipHeight) {
              $('#joyRidePopup' + prevCount).offset({top: (currentTipPosition.top + nubHeight + currentParentHeight), left: currentTipPosition.left});
            } else {
              $('#joyRidePopup' + prevCount).offset({top: ((currentTipPosition.top) - (currentTipHeight  + nubHeight)), left: currentTipPosition.left});
            }
          }
        });
      }

      // +++++++++++++++
      //   Timer
      // +++++++++++++++

      var interval_id = null,
      showTimerState = false;

      if (!settings.startTimerOnClick && settings.timer > 0){
       showNextTip();
       interval_id = setInterval(function() {showNextTip()}, settings.timer);
      } else {
       showNextTip();
      }
      var endTip = function(e, interval_id, cookie, self) {
        e.preventDefault();
        clearInterval(interval_id);
        if (cookie) {
           $.cookie(settings.cookieName, 'ridden', { expires: 365, domain: settings.cookieDomain });
        }
        $(self).parent().hide();
        if (settings.postRideCallback != null) {
            settings.postRideCallback();
        }
      }
      $('.joyride-close-tip').click(function(e) {
        endTip(e, interval_id, settings.cookieMonster, this);
      });

      // When the next button is clicked, show the next tip, only when cookie isn't present
        $('.joyride-next-tip').click(function(e) {
          e.preventDefault();
          if (count >= tipContent.length) {
            endTip(e, interval_id, settings.cookieMonster, this);
          }
          if (settings.timer > 0 && settings.startTimerOnClick) {
            showNextTip();
            clearInterval(interval_id);
            interval_id = setInterval(function() {showNextTip()}, settings.timer);
          } else if (settings.timer > 0 && !settings.startTimerOnClick){
            clearInterval(interval_id);
            interval_id = setInterval(function() {showNextTip()}, settings.timer);
          } else {
            showNextTip();
          }
        });
    }); // each call
  }; // joyride plugin call


  // +++++++++++++++++++++++++++++
  //   jQuery Cookie plugin
  // +++++++++++++++++++++++++++++

  // Copyright (c) 2010 Klaus Hartl (stilbuero.de)
  // Dual licensed under the MIT and GPL licenses:
  // http://www.opensource.org/licenses/mit-license.php
  // http://www.gnu.org/licenses/gpl.html
  jQuery.cookie = function (key, value, options) {

      // key and at least value given, set cookie...
      if (arguments.length > 1 && String(value) !== "[object Object]") {
          options = jQuery.extend({}, options);

          if (value === null || value === undefined) {
              options.expires = -1;
          }

          if (typeof options.expires === 'number') {
              var days = options.expires, t = options.expires = new Date();
              t.setDate(t.getDate() + days);
          }

          value = String(value);

          return (document.cookie = [
              encodeURIComponent(key), '=',
              options.raw ? value : encodeURIComponent(value),
              options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
              options.path ? '; path=' + options.path : '',
              options.domain ? '; domain=' + options.domain : '',
              options.secure ? '; secure' : ''
          ].join(''));
      }

      // key and possibly options given, get cookie...
      options = value || {};
      var result, decode = options.raw ? function (s) { return s; } : decodeURIComponent;
      return (result = new RegExp('(?:^|; )' + encodeURIComponent(key) + '=([^;]*)').exec(document.cookie)) ? decode(result[1]) : null;
  }; // cookie plugin call
})(jQuery);


