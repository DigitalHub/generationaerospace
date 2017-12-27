jQuery.noConflict();
jQuery(document).ready(function($) {

    jQuery( document ).ready(function() {
        jQuery( "input[type='text']" ).wrap(function() {
          return "<div class='tiny-border'></div>";
      });
    });

    jQuery('.menubutton').click(function(event){
        event.preventDefault();
        jQuery(this).toggleClass('opened');
        jQuery('.menu-content').toggleClass('opened');
    });

    jQuery('.menubuttonclose').click(function(event){
        event.preventDefault();
        jQuery('.menubutton').removeClass('opened');
        jQuery('.menu-content').removeClass('opened');
    });
});