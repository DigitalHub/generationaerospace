<?php
/**
 * Template Name: Page Events
 *
 * Template for displaying a page without sidebar even if a sidebar widget is published.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); ?>

<?php // include(locate_template('loop-templates/content-preevent.php')); ?>
<?php include(locate_template('loop-templates/content-postevent.php')); ?>
<?php get_footer(); ?>
