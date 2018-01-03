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


  //   jQuery(".watch_video--typewriter").bind("webkitAnimationEnd mozAnimationEnd animationEnd", function(){
  //     jQuery(this).removeClass("animated")  
  // })

  //   jQuery(".watch_video--typewriter").hover(function(){
  //     jQuery(this).addClass("animated");        
  // })
  
  $(function(){
      $('.hide-show').show();
      $('.hide-show span').addClass('show')
      
      $('.hide-show span').click(function(){
        if( $(this).hasClass('show') ) {
          $(this).text('Hide');
          $('input[name="profile_password"]').attr('type','text');
          $(this).removeClass('show');
      } else {
         $(this).text('Show');
         $('input[name="profile_password"]').attr('type','password');
         $(this).addClass('show');
     }
 });
      
      $('form button[type="submit"]').on('click', function(){
        $('.hide-show span').text('Show').addClass('show');
        $('.hide-show').parent().find('input[name="profile_password"]').attr('type','password');
    }); 
  });
});

