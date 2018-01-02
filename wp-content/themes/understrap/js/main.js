jQuery.noConflict();
jQuery(document).ready(function($) {

    jQuery( document ).ready(function() {
        jQuery( "input[type='text']" ).wrap(function() {
          return "<div class='tiny-border'></div>";
      });
    });

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

    var $status = $('.pagingInfo');
    var $slickElement = $('.featured_video--carousel');

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
});

function randomIntFromInterval(min,max) {
    return Math.floor(Math.random()*(max-min+1)+min);
}

function typeWrite(span) {
  jQuery('#'+span).addClass('cursor')
  var text = jQuery('#'+span).text();
  var randInt = 0
  for (var i = 0; i < text.length; i++) {
    randInt += parseInt(randomIntFromInterval(40,300));
    var typing = setTimeout(function(y){
      jQuery('#'+span).append(text.charAt(y));
  },randInt, i);
};
setTimeout(function(){
    jQuery('#'+span).removeClass('cursor');
},randInt+2500);
}

jQuery(document).ready(function(){
  typeWrite('test');
});
