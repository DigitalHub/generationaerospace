<?php
/**
 * Understrap enqueue scripts
 * changed to theme.css and theme.js for devs
 * @package understrap
 */

if ( ! function_exists( 'understrap_scripts' ) ) {
	/**
	 * Load theme's JavaScript sources.
	 */
	function understrap_scripts() {
		// Get the theme data.
		$the_theme = wp_get_theme();
		wp_enqueue_style( 'font-styles', 'https://fonts.googleapis.com/css?family=Barlow:100,400,600');
		wp_enqueue_style( 'understrap-styles', get_stylesheet_directory_uri() . '/css/theme.css', array(), $the_theme->get( 'Version' ), false );
		wp_enqueue_style( 'fullpage-styles', get_stylesheet_directory_uri() . '/css/jquery.fullpage.css', array(), true);
		wp_enqueue_style( 'fancybox-styles', get_stylesheet_directory_uri() . '/css/jquery.fancybox.min.css', array(), true);
		wp_enqueue_script( 'jquery');
		wp_enqueue_script( 'fancybox-scripts', get_template_directory_uri() . '/js/jquery.fancybox.min.js', array(), true);
		wp_enqueue_script( 'slick-scripts', get_template_directory_uri() . '/js/popper.min.js', array(), true);
		wp_enqueue_script( 'popper-scripts', get_template_directory_uri() . '/js/slick.min.js', array(), true);
		wp_enqueue_script( 'fullpage-scripts', get_template_directory_uri() . '/js/jquery.fullpage.min.js', array(), true);
		wp_enqueue_script( 'understrap-scripts', get_template_directory_uri() . '/js/theme.js', array(), $the_theme->get( 'Version' ), true );
		wp_enqueue_script( 'main-js', get_template_directory_uri() . '/js/main.js', array(), $the_theme->get( 'Version' ), true );
		if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
			wp_enqueue_script( 'comment-reply' );
		}
	}
} // endif function_exists( 'understrap_scripts' ).

add_action( 'wp_enqueue_scripts', 'understrap_scripts' );


