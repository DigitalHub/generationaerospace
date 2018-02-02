jQuery.noConflict();

jQuery(window).load(function(){
    if(jQuery('.home ').length > 0 ){
        var elem = jQuery('svg');
        if(elem.length) {
            jQuery('.pre--imgload').remove(); 
            anim.playSegments(true);
        }

    // load progression percentage
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

    // to remove loading svg after loaded 
    setInterval(function(){
        jQuery('#loadingbay').fadeOut(function(){ 
            jQuery(this).remove();
            if(jQuery('video').length) {
                jQuery('video').get(0).play();
            }
        });
    }, 4000);
}
});

document.addEventListener("DOMContentLoaded", function() {
    //Light YouTube Embed
    var div, n, v = document.getElementsByClassName("youtube-player");
    for (n = 0; n < v.length; n++) {
        div = document.createElement("div");
        div.setAttribute("data-id", v[n].dataset.id);
        div.innerHTML = labnolThumb(v[n].dataset.id);
        div.onclick = labnolIframe;
        v[n].appendChild(div);
    }
});

function labnolThumb(id) {
    var thumb = '<img src="https://i.ytimg.com/vi/ID/hqdefault.jpg">',
    play = '<div class="play"><i class="fas fa-play"></i></div>';
    return thumb.replace("ID", id) + play;
}

function labnolIframe() {
    var iframe = document.createElement("iframe");
    var embed = "https://www.youtube.com/embed/ID?autoplay=1";
    iframe.setAttribute("src", embed.replace("ID", this.dataset.id));
    iframe.setAttribute("frameborder", "0");
    iframe.setAttribute("allowfullscreen", "1");
    this.parentNode.replaceChild(iframe, this);
}

jQuery(document).ready(function($) {
    var scrollLock = false;
    var videoScrollLock = false;

    if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) && $('video').length) {
        $('video').remove();
    }

    jQuery(window).scroll(function() {
        if($(window).scrollTop() + $(window).height() == $(document).height()) {
            $('#link').addClass('up--button');
            $('#link').removeClass('down--button');
        } else {
            $('#link').removeClass('up--button');
            $('#link').addClass('down--button');
        }

        if($('.videos_loadmore').length && ($('.videos_loadmore').offset().top - $(window).scrollTop()) < ($(window).height()/1.5)) {
        //loadmore function for videos page
        var button = $('.videos_loadmore');
        var count = button.data('count');
        var posts_per_page = button.data('posts_per_page');

        if(videoScrollLock === false) {
            newcount = count + posts_per_page;
            $.ajax({
                url: ajax.ajaxUrl,
                type : 'post',
                data: {
                    action: 'genaero_video_pagination',
                    count: count,
                    posts_per_page: posts_per_page,
                },
                beforeSend: function() {
                    $('#ajax-loading1').show();

                    if(videoScrollLock === false) {
                        videoScrollLock = true;
                    }
                },
                success : function( data ){
                    $('#ajax-loading1').hide();
                    if(data) {
                        $('.video-row').append(data);
                        $('.videos_loadmore').data('count',newcount);
                        addFavouriteVideos();
                    } else {
                        button.remove();
                    }
                    videoScrollLock = false;
                }
            });
        }
    }

        //loadmore function for experiments, trailblazers and vault
        if($('.genaero_loadmore').length && ($(window).scrollTop() === $(document).height() - $(window).height())) {
            var button = $('.genaero_loadmore');
            var cpt = button.data('cpt');
            var posts_per_page = button.data('posts_per_page');
            var template = button.data('template');

            if(scrollLock === false) {
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
                    beforeSend: function() {
                        $('#ajax-loading1').show();

                        if(scrollLock === false) {
                            scrollLock = true;
                        }
                    },
                    success : function( data ){
                        $('#ajax-loading1').hide();
                        if(data) {
                            $('.loadmore-row').append(data);
                            ajaxpagination.current_page++;
                            addFavouriteExperiments();
                        } else {
                            button.remove();
                        }
                        scrollLock = false;
                    }
                });
            }
        }
    });

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
            anchors: ['welcome', 'featured_video', 'featured_experiment', 'genaero_explorer', 'genaero_trailblazers', 'featured_events'],
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
                jQuery('.up--button').hide();       
            }

            if(anchorLink == 'welcome') {
                if($('video').length) {
                    $('video').get(0).play();
                }
            }
        }
    });

        jQuery('.homescroll.down--button').click(function(){
            jQuery.fn.fullpage.moveSectionDown();
        });

        jQuery('.homescroll.up--button').click(function(){
            jQuery.fn.fullpage.moveSectionUp();
        });
    }

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

    if(jQuery('.fullpopup').length) {
        jQuery('.fullpopup').fancybox({
            toolbar  : false,
            smallBtn : true,
            // iframe : {
            //     preload : false
            // }
        });
    }

    jQuery('.single-experiment-btn').on('click', function(event) {
        event.preventDefault();
        $('#single-experiment-summary').hide();
        $('#single-experiment-content').show();

        jQuery('.experiment--carousel').slick({
            autoplay: false,
            dots: false,
            fade: true,
            prevArrow: '<div class="double_arrow small_arrow arrow_left"></div>',
            nextArrow: '<div class="double_arrow small_arrow arrow_right"></div>',

        });

        jQuery('.experiment--carousel').on('afterChange', function(event, slick, currentSlide, nextSlide){
            if($('.last_experiment--slide').hasClass('slick-active')) {
                jQuery('.single_experiment_header').text('What Just Happened_');
            } else {
                jQuery('.single_experiment_header').text('STEPS_');
            }
        });
    });

    jQuery('.close-single-experiment').on('click', function(event) {
        event.preventDefault();
        $('#single-experiment-content').hide();
        $('#single-experiment-summary').show();
    });


    jQuery('.genaero_explorer--carousel').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: false,
        fade: true,
        asNavFor: '.genaero_explorer--navigation',
        prevArrow: '<div class="double_arrow big_arrow arrow_left"></div>',
        nextArrow: '<div class="double_arrow big_arrow arrow_right"></div>'
    });
    jQuery('.genaero_explorer--navigation').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        asNavFor: '.genaero_explorer--carousel',
        dots: false,
        centerMode: true,
        focusOnSelect: true,

        responsive: [{
          breakpoint: 578,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
        }
    }]
});

    jQuery('.featured_experiment--keywordsslider-wrapp').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: false,
        fade: true,
        prevArrow: '<div class="double_arrow big_arrow arrow_left"></div>',
        nextArrow: '<div class="double_arrow big_arrow arrow_right"></div>'
    });

    jQuery('#all-events').on('click', function(event) {
        event.preventDefault();
        $('.past_events').show();
        $('html, body').animate({
            scrollTop: $('.past_events').offset().top
        }, 1000);
    });

    jQuery('#upcoming-events').on('click', function(event) {
        event.preventDefault();
        $('.past_events').hide();
        $('html, body').animate({
            scrollTop: $('.ongoing_events').offset().top
        }, 1000);
    });

    jQuery('.memberdashboard--btn').click(function(event){
        event.preventDefault();
        jQuery('.memberdashboard--menuwrap').slideToggle();
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

    $('.delete-video').on('click', function() {
        var result = confirm("Are you sure you want to delete your video?");
        if(result) {
            var videoID = $(this).data('video-id');
            var linkID = $(this).data('link-id');
            $.ajax({
                url: ajax.ajaxUrl,
                type: 'post',
                data: {
                    action: 'delete_my_video',
                    videoID: videoID,
                    linkID: linkID,
                },
                success: function(data) {
                    location.reload();
                },
                error: function(errorThrown){
                    console.log(errorThrown);
                }
            })
        }
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
function addFavouriteVideos() {
    if(typeof fav_ids !== 'undefined' && fav_ids.length > 0) {
        $.each(fav_ids, function(key, value) {
            var selector = '.month_experiment--link[data-video-id="' + value + '"] > i';
            if(!$(selector).hasClass('fav')) {
                $(selector).addClass('fav');
            }
            var selector1 = '.experiment--fav_link[data-video-id="' + value + '"] > i';
            if(!$(selector1).hasClass('fav')) {
                $(selector1).addClass('fav');
            }
        });
    }
}

//if favourite experiments found, toggle heart
function addFavouriteExperiments() {
    if(typeof fav_exp_ids !== 'undefined' && fav_exp_ids.length > 0) {
        $.each(fav_exp_ids, function(key, value) {
            var selector = '.experiment--fav_link[data-experiment-id="' + value + '"] > i';
            if(!$(selector).hasClass('fav')) {
                $(selector).addClass('fav');
            }
        });
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
            addFavouriteVideos();
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
            addFavouriteExperiments();
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
                $('.video-row').append(data);
                $('.videos_loadmore').data('count',newcount);
            } else {
                button.remove();
            }
        }
    });
});

$('a.fav-video').on('click', function(e) {
    e.preventDefault();
    vidID = $(this).data('id');
    userID = $(this).data('user');
    var button = $(this);

    if(button.hasClass('faved')) {
        $.ajax({
            url: ajax.ajaxUrl,
            type : 'post',
            data: {
                action: 'unfav_this_video',
                userID: userID,
                vidID: vidID,
            },
            success : function( data ){
                if(data) {
                    button.removeClass('faved');
                    button.html('<i class="fal fa-heart"></i> Save Video</a>');
                }
            }
        });
    } else {
        $.ajax({
            url: ajax.ajaxUrl,
            type : 'post',
            data: {
                action: 'fav_this_video',
                userID: userID,
                vidID: vidID,
            },
            success : function( data ){
                if(data) {
                    button.addClass('faved');
                    button.html('<i class="fas fa-heart"></i> Saved Video</a>');
                }
            }
        });
    }
});

$('a.fav-experiment').on('click', function(e) {
    e.preventDefault();
    expID = $(this).data('id');
    userID = $(this).data('user');
    var button = $(this);

    if(button.hasClass('faved')) {
        $.ajax({
            url: ajax.ajaxUrl,
            type : 'post',
            data: {
                action: 'unfav_this_experiment',
                userID: userID,
                expID: expID,
            },
            success : function( data ){
                if(data) {
                    button.removeClass('faved');
                    button.html('<i class="fal fa-heart"></i> Save Experiment</a>');
                }
            }
        });
    } else {
        $.ajax({
            url: ajax.ajaxUrl,
            type : 'post',
            data: {
                action: 'fav_this_experiment',
                userID: userID,
                expID: expID,
            },
            success : function( data ){
                if(data) {
                    button.addClass('faved');
                    button.html('<i class="fas fa-heart"></i> Saved Experiment</a>');
                }
            }
        });
    }
});

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

$.fn.isInViewport = function() {
    var elementTop = $(this).offset().top;
    var elementBottom = elementTop + $(this).outerHeight();

    var viewportTop = $(window).scrollTop();
    var viewportBottom = viewportTop + $(window).height();

    return elementBottom > viewportTop && elementTop < viewportBottom;
};
});