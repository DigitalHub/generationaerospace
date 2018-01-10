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

		wp_localize_script( 'main-js', 'ajax',
			array(
				'ajaxUrl' => admin_url( 'admin-ajax.php' ),
			));

		global $the_query; 

		wp_localize_script( 'main-js', 'ajaxpagination', array(
			'ajaxUrl' => admin_url( 'admin-ajax.php' ),
			'posts' => json_encode( $the_query->query_vars ), // everything about your loop is here
			'current_page' => get_query_var( 'paged' ) ? get_query_var('paged') : 2,
			'max_page' => $the_query->max_num_pages
		));

	}
} // endif function_exists( 'understrap_scripts' ).

add_action( 'wp_enqueue_scripts', 'understrap_scripts' );


add_action("wp_ajax_delete_fav_video", "delete_fav_video");
add_action("wp_ajax_nopriv_delete_fav_video", "delete_fav_video");

function delete_fav_video() {
	global $wpdb;
	$favID = $_POST['favID'];
	$fav_videos_table = $wpdb->prefix . 'genaero_favourite_videos';
	$wpdb->delete($fav_videos_table,array('id' => $favID));
}

add_action("wp_ajax_fav_this_video", "fav_this_video");
add_action("wp_ajax_nopriv_fav_this_video", "fav_this_video");

function fav_this_video() {
	global $wpdb;
	// $video_id = $_POST['video_id'];
	// $fav_videos_table = $wpdb->prefix . 'genaero_favourite_videos';
	// $wpdb->delete($fav_videos_table,array('id' => $favID));
}

add_action( 'wp_ajax_nopriv_genaero_ajax_pagination', 'genaero_ajax_pagination' );
add_action( 'wp_ajax_genaero_ajax_pagination', 'genaero_ajax_pagination' );

function genaero_ajax_pagination() {
	$paged = $_POST['page'];
	$args = array(
		'post_type' => 'genaero_trailblazers',
		'posts_per_page' => 4,
		'paged' =>  $paged,
	);
	$the_query = new WP_Query($args);
	if($the_query->have_posts()) :
		while($the_query->have_posts()) : $the_query->the_post();
			get_template_part( 'loop-templates/tile', 'trailblazer' );
		endwhile;
	endif;

	wp_die();
}