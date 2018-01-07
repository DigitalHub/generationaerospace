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

// Register Custom Post Type
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
		'supports'              => array( 'title' ),
		'taxonomies'            => array( 'category', 'post_tag' ),
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
	register_post_type( 'experiments', $args );

}
add_action( 'init', 'experiments_post_type', 0 );


// Register Custom Post Type
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
