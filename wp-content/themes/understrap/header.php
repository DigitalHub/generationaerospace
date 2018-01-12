<?php
/**
 * The header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package understrap
 */

session_start();

global $loggedin;

if(isset($_SESSION['username'])) {
	$loggedin = '1';
} else {
	$loggedin = '0';

	//if not logged in and at member pages, immediately redirect to login page
	if(is_page('member-dashboard') || is_page('my-profile') || is_page('my-videos') || is_page('submit-a-video') || is_page('edit-a-video') || is_page('my-favourite-videos') || is_page('my-favourite-experiments') || is_page('submit-an-idea')) {
		wp_redirect( 'login', 301 );
	}
}

$container = get_theme_mod( 'understrap_container_type' );
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-title" content="<?php bloginfo( 'name' ); ?> - <?php bloginfo( 'description' ); ?>">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

	<script type="text/javascript">
		loggedin = '<?=$loggedin?>';
	</script>
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

	<div class="hfeed site" id="page">

		<?php if ( is_singular( 'genaero_trailblazers' ) ) { //for fancybox  
		} else {
			get_template_part( 'page-templates/site', 'title' );
			get_template_part( 'page-templates/navigation', 'top' );
		} ?>