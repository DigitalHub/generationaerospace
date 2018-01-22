jQuery.noConflict();


jQuery(window).load(function(){
    jQuery('.count').each(function() {
        jQuery(this).prop('Counter', 0).animate({
            Counter: 100
        }, {
            duration: 3500,
            easing: 'swing',
            step: function(now) {
                jQuery(this).text(Math.ceil(now));
            }
        });
    });
    setInterval(function(){
        jQuery('#loadingbay').fadeOut(function(){ 
            jQuery(this).remove();
        });
    }, 4000);
});

jQuery(document).ready(function($) {
    jQuery('html, body').animate({scrollTop: '0'}, 500);
    jQuery('#link').click(function(){
        if($(window).scrollTop() + $(window).height() == $(document).height()) {
            jQuery('html, body').animate({scrollTop: '0'}, 500);
        } else {
            jQuery('html, body').animate({scrollTop: '+=300'}, 500);
        }
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

    if(jQuery('#fullpage').length) {
        jQuery('#fullpage').fullpage({
            anchors: ['welcome', 'featured_video', 'featured_experiment', 'genaero_explorer', 'genaero_trailbazers', 'featured_events'],
            menu: '.chapter-selector',
            css3: true,
        // lockAnchors: true,
        fitToSectionDelay: 100,
        lazyLoading: true,
        afterLoad: function(anchorLink, index){
         if(index == $('.section').length){
            jQuery('.down--button').hide();
            jQuery('.up--button').show();
        } else {
            jQuery('.down--button').show();
            jQuery('.up--button').hide();       }
        }
    });
    }

    jQuery('.scrolling.down--button').click(function(){
        jQuery.fn.fullpage.moveSectionDown();
    });

    jQuery('.scrolling.up--button').click(function(){
        jQuery.fn.fullpage.moveSectionUp();
    });



    var $status = jQuery('.pagingInfo');
    var $slickElement = jQuery('.featured_video--carousel');

    $slickElement.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
        var i = (currentSlide ? currentSlide : 0) + 1;
        $status.html('<span class="counting">0'+i+'</span><span class="totalcount">0'+ slick.slideCount +'</span>')
    });

    $slickElement.slick({
        autoplay: false,
        dots: false,
        fade: true,
        prevArrow: '<div class="double_arrow small_arrow arrow_up"></div>',
        nextArrow: '<div class="double_arrow small_arrow arrow_down"></div>',
    });

    jQuery('.experiment--carousel').slick({
        autoplay: false,
        dots: false,
        fade: true,
        prevArrow: '<div class="double_arrow small_arrow arrow_left"></div>',
        nextArrow: '<div class="double_arrow small_arrow arrow_right"></div>',
    });

    if(jQuery('.fullpopup').length) {
        jQuery('.fullpopup').fancybox({
            toolbar  : false,
            smallBtn : true,
// iframe : {
//     preload : false
// }
});
    }

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

    $('.delete-fav-experiment').on('click', function() {
        var favID = $(this).data('fav-id');
        $.ajax({
            url: ajax.ajaxUrl,
            type: 'post',
            data: {
                action: 'delete_fav_experiment',
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

//if favourite videos found, toggle heart
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

//if favourite experiments found, toggle heart
if(typeof fav_exp_ids !== 'undefined' && fav_exp_ids.length > 0) {
    $.each(fav_exp_ids, function(key, value) {
        addFavouriteExperiments(value);
    });
}
function addFavouriteExperiments(value) {
    var selector = '.experiment--fav_link[data-experiment-id="' + value + '"] > i';
    if(!$(selector).hasClass('fav')) {
        $(selector).addClass('fav');
    }
}

$('#video_submit').on('click', function() {
    $.ajax({
        url: ajax.ajaxUrl,
        type: 'post',
        data: {
            action: 'search_video',
            search: $('#video_search').val(),
        },
        beforeSend: function() {
            $('.video-main').html('');
            $('.ajax-loading').show();
        },
        success: function(data) {
            $('.ajax-loading').hide();
            $('.video-main').html(data);
        }
    });
});

$('#experiment_submit').on('click', function() {
    var cpt = $(this).data('cpt');
    var posts_per_page = $(this).data('posts_per_page');
    var template = $(this).data('template');

    $.ajax({
        url: ajax.ajaxUrl,
        type: 'post',
        data: {
            action: 'search_experiment',
            cpt: cpt,
            posts_per_page: posts_per_page,
            template: template,
            search: $('#experiment_search').val(),
        },
        beforeSend: function() {
            $('.site-main').html('');
            $('.ajax-loading').show();
        },
        success: function(data) {
            $('.ajax-loading').hide();
            $('.site-main').html(data);
        }
    });
});

$('.videos_loadmore').on('click', function(e) {
    e.preventDefault();
    var button = $(this);
    var count = button.data('count');
    var posts_per_page = button.data('posts_per_page');
    var newcount = count + posts_per_page;

    $.ajax({
        url: ajax.ajaxUrl,
        type : 'post',
        data: {
            action: 'genaero_video_pagination',
            count: count,
            posts_per_page: posts_per_page,
        },
        beforeSend: function() {
            $('.ajax-loading').show();
        },
        success : function( data ){
            $('.ajax-loading').hide();
            if(data) {
                $('section.all-videos-section').append(data);
                $('.videos_loadmore').data('count',newcount);
            } else {
                button.remove();
            }
        }
    });
});

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
                ajaxpagination.current_page++;
            } else {
                button.remove();
            }
        }
    });
});

$('a.fav-experiment').on('click', function(e) {
    e.preventDefault();
    expID = $(this).data('id');
    userID = $(this).data('user');
    var button = $(this);
    console.log('test: '+expID+' '+userID);

    $.ajax({
        url: ajax.ajaxUrl,
        type : 'post',
        data: {
            action: 'fav_this_experiment',
            userID: userID,
            expID: expID,
        },
        success : function( data ){
            button.addClass('faved');
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

function new_map( $el ) {
    var $markers = $el.find('.marker');
    var args = {
        zoom    : 16,
        center    : new google.maps.LatLng(0, 0),
        mapTypeId : google.maps.MapTypeId.ROADMAP,
        styles: [
        {
            "featureType": "all",
            "elementType": "all",
            "stylers": [
            {
                "hue": "#ff0000"
            },
            {
                "saturation": -100
            },
            {
                "lightness": -30
            }
            ]
        },
        {
            "featureType": "all",
            "elementType": "labels.text.fill",
            "stylers": [
            {
                "color": "#ffffff"
            }
            ]
        },
        {
            "featureType": "all",
            "elementType": "labels.text.stroke",
            "stylers": [
            {
                "color": "#353535"
            }
            ]
        },
        {
            "featureType": "landscape",
            "elementType": "geometry",
            "stylers": [
            {
                "color": "#656565"
            }
            ]
        },
        {
            "featureType": "poi",
            "elementType": "geometry.fill",
            "stylers": [
            {
                "color": "#505050"
            }
            ]
        },
        {
            "featureType": "poi",
            "elementType": "geometry.stroke",
            "stylers": [
            {
                "color": "#808080"
            }
            ]
        },
        {
            "featureType": "road",
            "elementType": "geometry",
            "stylers": [
            {
                "color": "#454545"
            }
            ]
        }
        ]
    };

    var map = new google.maps.Map( $el[0], args);
    map.markers = [];
    $markers.each(function(){
        add_marker( $(this), map );
    });
    center_map( map );
    return map;
}

function add_marker( $marker, map ) {
    var latlng = new google.maps.LatLng( $marker.attr('data-lat'), $marker.attr('data-lng') );
    var marker = new google.maps.Marker({
        position  : latlng,
        map     : map
    });
    map.markers.push( marker );
    if( $marker.html() )
    {
        var infowindow = new google.maps.InfoWindow({
            content   : $marker.html()
        });
        google.maps.event.addListener(marker, 'click', function() {
            infowindow.open( map, marker );
        });
    }

}

function center_map( map ) {
    var bounds = new google.maps.LatLngBounds();
    $.each( map.markers, function( i, marker ){
        var latlng = new google.maps.LatLng( marker.position.lat(), marker.position.lng() );
        bounds.extend( latlng );
    });
    if( map.markers.length == 1 ) {
        map.setCenter( bounds.getCenter() );
        map.setZoom( 15 );
    }
    else {
        map.fitBounds( bounds );
    }
}

var map = null;

$('.acf-map').each(function(){
    map = new_map( $(this) );
});
});