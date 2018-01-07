jQuery.noConflict();
jQuery(document).ready(function($) {

    jQuery('.menu_butt').click(function(event){
        event.preventDefault();
        jQuery(this).toggleClass('opened');
        jQuery('.menu-content').toggleClass('opened');
    });

    jQuery('.menu_butt__close').click(function(event){
        event.preventDefault();
        jQuery('.menu_butt').removeClass('opened');
        jQuery('.menu-content').removeClass('opened');
    });

    jQuery('#fullpage').fullpage({
        anchors: ['welcome', 'featured_video', 'featured_experiment', 'genaero_explorer', 'genaero_trailbazers', 'featured_events'],
        menu: '.chapter-selector',
        css3: true,
        fitToSectionDelay: 1000,
      // lazyLoading: true,
  });

    var $status = jQuery('.pagingInfo');
    var $slickElement = jQuery('.featured_video--carousel');

    $slickElement.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
        var i = (currentSlide ? currentSlide : 0) + 1;
        // $status.text(i + '/' + slick.slideCount);
        $status.html('<span class="counting">0'+i+'</span><span class="totalcount">0'+ slick.slideCount +'</span>')
    });

    $slickElement.slick({
        autoplay: false,
        dots: false,
        fade: true,
        prevArrow: '<div class="double_arrow small_arrow arrow_up"></div>',
        nextArrow: '<div class="double_arrow small_arrow arrow_down"></div>',
    });

    jQuery('.genaero_explorer--carousel').slick({
        autoplay: false,
        dots: false,
        centerMode: true,
        centerPadding: ($('.slider').find('>div').outerWidth() / 2) + 'px',
        prevArrow: '<div class="double_arrow big_arrow arrow_left"></div>',
        nextArrow: '<div class="double_arrow big_arrow arrow_right"></div>',
    });

    // jQuery(document).on('click', '.scrolling', function(event){                        
    //     event.preventDefault();
    //     var y = $(window).scrollTop();
    //     jQuery('html, body').animate({
    //         scrollTop: y + 500
    //     }, 500);
    // });

  //   jQuery(".watch_video--typewriter").bind("webkitAnimationEnd mozAnimationEnd animationEnd", function(){
  //     jQuery(this).removeClass("animated")  
  // })

  //   jQuery(".watch_video--typewriter").hover(function(){
  //     jQuery(this).addClass("animated");        
  // })
});



// jQuery(window).scroll(function() {
//     jQuery('.scrolling').addClass('up--button');
//     if(jQuery(window).scrollTop() + jQuery(window).height() == jQuery(document).height()) {
//         jQuery('.scrolling').removeClass('up--button');
//         alert("bottom!");
//     } 
// });