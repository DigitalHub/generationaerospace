<?php
/**
 * The template for displaying all single posts.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); ?>

<?php // include(locate_template('loop-templates/content-preevent.php')); ?>
<?php include(locate_template('loop-templates/content-postevent.php')); ?>
<?php get_footer(); ?>