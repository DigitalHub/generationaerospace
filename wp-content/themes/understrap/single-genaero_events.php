<?php
/**
 * The template for displaying all single posts.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); 

$today = date('Ymd');
$enddate = get_field('end_date');

if($today <= $enddate) {
	include(locate_template('loop-templates/content-preevent.php'));
} else {
	include(locate_template('loop-templates/content-postevent.php'));
}
?>

<?php get_footer(); ?>