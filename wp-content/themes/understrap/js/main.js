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

  $('.delete-fav-video').on('click', function() {
    var favID = $(this).data('fav-id');
    $.ajax({
      url: ajax.ajaxUrl,
      type: 'post',
      data: {
        action: 'delete_fav_video',
        favID: favID
      },
      success: function(data) {
        location.reload();
      },
      error: function(errorThrown){
       console.log(errorThrown);
     }
   })
  });

  if($('#member_username').length) {
    $('#member_username').val($('#username').data('user-id'));
  }

  if(typeof fav_ids !== 'undefined' && fav_ids.length > 0) {
    $.each(fav_ids, function(key, value) {
      addFavouriteVideos(value);
    });
  }

  function addFavouriteVideos(value) {
    var selector = '.experiment--fav_link[data-video-id="' + value + '"] > i';
    if(!$(selector).hasClass('fav')) {
      $(selector).addClass('fav');
    }
  }

  $('.genaero_loadmore').on('click', function(e) {
    e.preventDefault();
    var button = $(this);
    var cpt = button.data('cpt');
    var posts_per_page = button.data('posts_per_page');
    var template = button.data('template');

    $.ajax({
      url: ajaxpagination.ajaxUrl,
      type : 'post',
      data: {
        action: 'genaero_ajax_pagination',
        cpt: cpt,
        posts_per_page: posts_per_page,
        template: template,
        query: ajaxpagination.posts,
        page: ajaxpagination.current_page,
      },
      success : function( data ){
        if(data) {
          $('.site-main').append(data);
          console.log('success: ' + ajaxpagination.current_page);
          ajaxpagination.current_page++;
        } else {
          button.remove();
        }
      }
    });
  });

  // $('a[href$="#heart"]').on('click', function(e) {
  //   e.preventDefault();
  //   var video_id = $(this).data('video-id');

  //   $.ajax({
  //     url: ajax.ajaxUrl,
  //     type: 'post',
  //     data: {
  //       action: 'fav_this_video',
  //       video_id: video_id
  //     },
  //     success: function(data) {
  //       // location.reload();
  //     },
  //     error: function(errorThrown){
  //      console.log(errorThrown);
  //    }
  //  })
  // });

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