<?php
/**
 * Custom functions that act independently of the theme templates.
 *
 * Eventually, some of the functionality here could be replaced by core features.
 *
 * @package understrap
 */

if ( ! function_exists( 'understrap_body_classes' ) ) {
	/**
	 * Adds custom classes to the array of body classes.
	 *
	 * @param array $classes Classes for the body element.
	 *
	 * @return array
	 */
	function understrap_body_classes( $classes ) {
		// Adds a class of group-blog to blogs with more than 1 published author.
		if ( is_multi_author() ) {
			$classes[] = 'group-blog';
		}
		// Adds a class of hfeed to non-singular pages.
		if ( ! is_singular() ) {
			$classes[] = 'hfeed';
		}

		return $classes;
	}
}
add_filter( 'body_class', 'understrap_body_classes' );

// Removes tag class from the body_class array to avoid Bootstrap markup styling issues.
add_filter( 'body_class', 'understrap_adjust_body_class' );

if ( ! function_exists( 'understrap_adjust_body_class' ) ) {
	/**
	 * Setup body classes.
	 *
	 * @param string $classes CSS classes.
	 *
	 * @return mixed
	 */
	function understrap_adjust_body_class( $classes ) {

		foreach ( $classes as $key => $value ) {
			if ( 'tag' == $value ) {
				unset( $classes[ $key ] );
			}
		}

		return $classes;

	}
}

// Filter custom logo with correct classes.
add_filter( 'get_custom_logo', 'understrap_change_logo_class' );

if ( ! function_exists( 'understrap_change_logo_class' ) ) {
	/**
	 * Replaces logo CSS class.
	 *
	 * @param string $html Markup.
	 *
	 * @return mixed
	 */
	function understrap_change_logo_class( $html ) {

		$html = str_replace( 'class="custom-logo"', 'class="img-fluid"', $html );
		$html = str_replace( 'class="custom-logo-link"', 'class="navbar-brand custom-logo-link"', $html );
		$html = str_replace( 'alt=""', 'title="Home" alt="logo"' , $html );

		return $html;
	}
}

/**
 * Display navigation to next/previous post when applicable.
 */
if ( ! function_exists( 'understrap_post_nav' ) ) :

	function understrap_post_nav() {
		// Don't print empty markup if there's nowhere to navigate.
		$previous = ( is_attachment() ) ? get_post( get_post()->post_parent ) : get_adjacent_post( false, '', true );
		$next     = get_adjacent_post( false, '', false );

		if ( ! $next && ! $previous ) {
			return;
		}
		?>
				<nav class="container navigation post-navigation">
					<h2 class="sr-only"><?php _e( 'Post navigation', 'understrap' ); ?></h2>
					<div class="row nav-links justify-content-between">
						<?php

							if ( get_previous_post_link() ) {
								previous_post_link( '<span class="nav-previous">%link</span>', _x( '<i class="fa fa-angle-left"></i>&nbsp;%title', 'Previous post link', 'understrap' ) );
							}
							if ( get_next_post_link() ) {
								next_post_link( '<span class="nav-next">%link</span>',     _x( '%title&nbsp;<i class="fa fa-angle-right"></i>', 'Next post link', 'understrap' ) );
							}
						?>
					</div><!-- .nav-links -->
				</nav><!-- .navigation -->

		<?php
	}
endif;

// Register Videos CPT
function videos_post_type() {

	$labels = array(
		'name'                  => _x( 'Videos', 'Post Type General Name', 'text_domain' ),
		'singular_name'         => _x( 'Video', 'Post Type Singular Name', 'text_domain' ),
		'menu_name'             => __( 'Videos', 'text_domain' ),
		'name_admin_bar'        => __( 'Videos', 'text_domain' ),
		'archives'              => __( 'Videos Archives', 'text_domain' ),
		'attributes'            => __( 'Video Attributes', 'text_domain' ),
		'parent_item_colon'     => __( 'Parent Video:', 'text_domain' ),
		'all_items'             => __( 'All Videos', 'text_domain' ),
		'add_new_item'          => __( 'Add New Video', 'text_domain' ),
		'add_new'               => __( 'Add New Video', 'text_domain' ),
		'new_item'              => __( 'New Video', 'text_domain' ),
		'edit_item'             => __( 'Edit Video', 'text_domain' ),
		'update_item'           => __( 'Update Video', 'text_domain' ),
		'view_item'             => __( 'View Video', 'text_domain' ),
		'view_items'            => __( 'View Videos', 'text_domain' ),
		'search_items'          => __( 'Search Video', 'text_domain' ),
		'not_found'             => __( 'Not found', 'text_domain' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
		'featured_image'        => __( 'Featured Image', 'text_domain' ),
		'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
		'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
		'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
		'insert_into_item'      => __( 'Insert into Video', 'text_domain' ),
		'uploaded_to_this_item' => __( 'Uploaded to this Video', 'text_domain' ),
		'items_list'            => __( 'Videos list', 'text_domain' ),
		'items_list_navigation' => __( 'Videos list navigation', 'text_domain' ),
		'filter_items_list'     => __( 'Filter Videos list', 'text_domain' ),
	);
	$args = array(
		'label'                 => __( 'Video', 'text_domain' ),
		'description'           => __( 'Post Type Description', 'text_domain' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'comments' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 10,
		'menu_icon'             => 'dashicons-video-alt3',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => false,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'genaero_videos', $args );

}
add_action( 'init', 'videos_post_type', 0 );

// Register Experiments CPT
function experiments_post_type() {

	$labels = array(
		'name'                  => _x( 'Experiments', 'Post Type General Name', 'text_domain' ),
		'singular_name'         => _x( 'Experiment', 'Post Type Singular Name', 'text_domain' ),
		'menu_name'             => __( 'Experiments', 'text_domain' ),
		'name_admin_bar'        => __( 'Experiments', 'text_domain' ),
		'archives'              => __( 'Experiments Archives', 'text_domain' ),
		'attributes'            => __( 'Experiment Attributes', 'text_domain' ),
		'parent_item_colon'     => __( 'Parent Experiment:', 'text_domain' ),
		'all_items'             => __( 'All Experiments', 'text_domain' ),
		'add_new_item'          => __( 'Add New Experiment', 'text_domain' ),
		'add_new'               => __( 'Add New Experiment', 'text_domain' ),
		'new_item'              => __( 'New Experiment', 'text_domain' ),
		'edit_item'             => __( 'Edit Experiment', 'text_domain' ),
		'update_item'           => __( 'Update Experiment', 'text_domain' ),
		'view_item'             => __( 'View Experiment', 'text_domain' ),
		'view_items'            => __( 'View Experiments', 'text_domain' ),
		'search_items'          => __( 'Search Experiment', 'text_domain' ),
		'not_found'             => __( 'Not found', 'text_domain' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
		'featured_image'        => __( 'Featured Image', 'text_domain' ),
		'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
		'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
		'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
		'insert_into_item'      => __( 'Insert into Experiment', 'text_domain' ),
		'uploaded_to_this_item' => __( 'Uploaded to this Experiment', 'text_domain' ),
		'items_list'            => __( 'Experiments list', 'text_domain' ),
		'items_list_navigation' => __( 'Experiments list navigation', 'text_domain' ),
		'filter_items_list'     => __( 'Filter experiments list', 'text_domain' ),
	);
	$args = array(
		'label'                 => __( 'Experiment', 'text_domain' ),
		'description'           => __( 'Post Type Description', 'text_domain' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'excerpt', 'thumbnail' ),
		'taxonomies'            => array( 'post_tag' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 10,
		'menu_icon'             => 'dashicons-lightbulb',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => false,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'post',
	);
	register_post_type( 'genaero_experiments', $args );

}
add_action( 'init', 'experiments_post_type', 0 );

// Register Trailblazers CPT
function trailblazers_post_type() {

	$labels = array(
		'name'                  => _x( 'Trailblazers', 'Post Type General Name', 'text_domain' ),
		'singular_name'         => _x( 'Trailblazer', 'Post Type Singular Name', 'text_domain' ),
		'menu_name'             => __( 'Trailblazers', 'text_domain' ),
		'name_admin_bar'        => __( 'Trailblazers', 'text_domain' ),
		'archives'              => __( 'Trailblazer Archives', 'text_domain' ),
		'attributes'            => __( 'Trailblazer Attributes', 'text_domain' ),
		'parent_item_colon'     => __( 'Parent Trailblazer:', 'text_domain' ),
		'all_items'             => __( 'All Trailblazers', 'text_domain' ),
		'add_new_item'          => __( 'Add New Trailblazer', 'text_domain' ),
		'add_new'               => __( 'Add New Trailblazer', 'text_domain' ),
		'new_item'              => __( 'New Trailblazer', 'text_domain' ),
		'edit_item'             => __( 'Edit Trailblazer', 'text_domain' ),
		'update_item'           => __( 'Update Trailblazer', 'text_domain' ),
		'view_item'             => __( 'View Trailblazer', 'text_domain' ),
		'view_items'            => __( 'View Trailblazers', 'text_domain' ),
		'search_items'          => __( 'Search Trailblazers', 'text_domain' ),
		'not_found'             => __( 'Not found', 'text_domain' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
		'featured_image'        => __( 'Featured Image', 'text_domain' ),
		'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
		'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
		'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
		'insert_into_item'      => __( 'Insert into Trailblazer', 'text_domain' ),
		'uploaded_to_this_item' => __( 'Uploaded to this Trailblazer', 'text_domain' ),
		'items_list'            => __( 'Trailblazers list', 'text_domain' ),
		'items_list_navigation' => __( 'Trailblazers list navigation', 'text_domain' ),
		'filter_items_list'     => __( 'Filter Trailblazers list', 'text_domain' ),
	);
	$args = array(
		'label'                 => __( 'Trailblazers', 'text_domain' ),
		'description'           => __( 'Post Type Description', 'text_domain' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail' ),
		// 'taxonomies'            => array( 'category', 'post_tag' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 10,
		'menu_icon'             => 'dashicons-businessman',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => false,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'post',
	);
	register_post_type( 'genaero_trailblazers', $args );

}
add_action( 'init', 'trailblazers_post_type', 0 );

// Register Events CPT
function events_post_type() {

	$labels = array(
		'name'                  => _x( 'Events', 'Post Type General Name', 'text_domain' ),
		'singular_name'         => _x( 'Event', 'Post Type Singular Name', 'text_domain' ),
		'menu_name'             => __( 'Events', 'text_domain' ),
		'name_admin_bar'        => __( 'Events', 'text_domain' ),
		'archives'              => __( 'Event Archives', 'text_domain' ),
		'attributes'            => __( 'Event Attributes', 'text_domain' ),
		'parent_item_colon'     => __( 'Parent Event:', 'text_domain' ),
		'all_items'             => __( 'All Events', 'text_domain' ),
		'add_new_item'          => __( 'Add New Event', 'text_domain' ),
		'add_new'               => __( 'Add New Event', 'text_domain' ),
		'new_item'              => __( 'New Event', 'text_domain' ),
		'edit_item'             => __( 'Edit Event', 'text_domain' ),
		'update_item'           => __( 'Update Event', 'text_domain' ),
		'view_item'             => __( 'View Event', 'text_domain' ),
		'view_items'            => __( 'View Events', 'text_domain' ),
		'search_items'          => __( 'Search Events', 'text_domain' ),
		'not_found'             => __( 'Not found', 'text_domain' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
		'featured_image'        => __( 'Featured Image', 'text_domain' ),
		'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
		'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
		'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
		'insert_into_item'      => __( 'Insert into Event', 'text_domain' ),
		'uploaded_to_this_item' => __( 'Uploaded to this Event', 'text_domain' ),
		'items_list'            => __( 'Events list', 'text_domain' ),
		'items_list_navigation' => __( 'Events list navigation', 'text_domain' ),
		'filter_items_list'     => __( 'Filter Events list', 'text_domain' ),
	);
	$args = array(
		'label'                 => __( 'Events', 'text_domain' ),
		'description'           => __( 'Post Type Description', 'text_domain' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail' ),
		// 'taxonomies'            => array( 'category', 'post_tag' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 10,
		'menu_icon'             => 'dashicons-calendar-alt',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => false,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'post',
	);
	register_post_type( 'genaero_events', $args );

}
add_action( 'init', 'events_post_type', 0 );

// Register Vault CPT
function vault_post_type() {

	$labels = array(
		'name'                  => _x( 'Vault', 'Post Type General Name', 'text_domain' ),
		'singular_name'         => _x( 'Vault', 'Post Type Singular Name', 'text_domain' ),
		'menu_name'             => __( 'Vault', 'text_domain' ),
		'name_admin_bar'        => __( 'Vault', 'text_domain' ),
		'archives'              => __( 'Vault Archives', 'text_domain' ),
		'attributes'            => __( 'Vault Attributes', 'text_domain' ),
		'parent_item_colon'     => __( 'Parent Vault:', 'text_domain' ),
		'all_items'             => __( 'All Vault', 'text_domain' ),
		'add_new_item'          => __( 'Add New Vault', 'text_domain' ),
		'add_new'               => __( 'Add New Vault', 'text_domain' ),
		'new_item'              => __( 'New Vault', 'text_domain' ),
		'edit_item'             => __( 'Edit Vault', 'text_domain' ),
		'update_item'           => __( 'Update Vault', 'text_domain' ),
		'view_item'             => __( 'View Vault', 'text_domain' ),
		'view_items'            => __( 'View Vault', 'text_domain' ),
		'search_items'          => __( 'Search Vault', 'text_domain' ),
		'not_found'             => __( 'Not found', 'text_domain' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
		'featured_image'        => __( 'Featured Image', 'text_domain' ),
		'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
		'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
		'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
		'insert_into_item'      => __( 'Insert into Vault', 'text_domain' ),
		'uploaded_to_this_item' => __( 'Uploaded to this Vault', 'text_domain' ),
		'items_list'            => __( 'Vault list', 'text_domain' ),
		'items_list_navigation' => __( 'Vault list navigation', 'text_domain' ),
		'filter_items_list'     => __( 'Filter Vault list', 'text_domain' ),
	);
	$args = array(
		'label'                 => __( 'Vault', 'text_domain' ),
		'description'           => __( 'Post Type Description', 'text_domain' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'excerpt', 'thumbnail' ),
		// 'taxonomies'            => array( 'category', 'post_tag' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 10,
		'menu_icon'             => 'dashicons-images-alt',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => false,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'post',
	);
	register_post_type( 'genaero_vault', $args );

}
add_action( 'init', 'vault_post_type', 0 );


// Register Announcements CPT
function announcements_post_type() {

	$labels = array(
		'name'                  => _x( 'Announcements', 'Post Type General Name', 'text_domain' ),
		'singular_name'         => _x( 'Announcement', 'Post Type Singular Name', 'text_domain' ),
		'menu_name'             => __( 'Announcements', 'text_domain' ),
		'name_admin_bar'        => __( 'Announcements', 'text_domain' ),
		'archives'              => __( 'Announcements Archives', 'text_domain' ),
		'attributes'            => __( 'Announcement Attributes', 'text_domain' ),
		'parent_item_colon'     => __( 'Parent Announcement:', 'text_domain' ),
		'all_items'             => __( 'All Announcements', 'text_domain' ),
		'add_new_item'          => __( 'Add New Announcement', 'text_domain' ),
		'add_new'               => __( 'Add New Announcement', 'text_domain' ),
		'new_item'              => __( 'New Announcement', 'text_domain' ),
		'edit_item'             => __( 'Edit Announcement', 'text_domain' ),
		'update_item'           => __( 'Update Announcement', 'text_domain' ),
		'view_item'             => __( 'View Announcement', 'text_domain' ),
		'view_items'            => __( 'View Announcements', 'text_domain' ),
		'search_items'          => __( 'Search Announcement', 'text_domain' ),
		'not_found'             => __( 'Not found', 'text_domain' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
		'featured_image'        => __( 'Featured Image', 'text_domain' ),
		'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
		'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
		'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
		'insert_into_item'      => __( 'Insert into Announcement', 'text_domain' ),
		'uploaded_to_this_item' => __( 'Uploaded to this Announcement', 'text_domain' ),
		'items_list'            => __( 'Announcements list', 'text_domain' ),
		'items_list_navigation' => __( 'Announcements list navigation', 'text_domain' ),
		'filter_items_list'     => __( 'Filter Announcements list', 'text_domain' ),
	);
	$args = array(
		'label'                 => __( 'Announcement', 'text_domain' ),
		'description'           => __( 'Post Type Description', 'text_domain' ),
		'labels'                => $labels,
		'supports'              => array( 'title' ),
		// 'taxonomies'            => array( 'category', 'post_tag' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 10,
		'menu_icon'             => 'dashicons-megaphone',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => false,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'post',
	);
	register_post_type( 'announcements', $args );

}
add_action( 'init', 'announcements_post_type', 0 );

//adds Google Maps API Key to ACF
add_filter('acf/settings/google_api_key', function () {
    return GMAP_API_KEY;
});