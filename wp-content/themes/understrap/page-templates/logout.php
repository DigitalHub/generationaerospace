<?php
/**
 * Template Name: Logout Page
 *
 * Template for displaying a log out page.
 *
 * @package understrap
 */

session_start();
if(isset($_SESSION["username"])){
	unset($_SESSION["username"]);
}
if(isset($_SESSION["user_id"])){
	unset($_SESSION["user_id"]);
}
session_destroy();
wp_redirect( 'login', 301 );
exit; 

// get_header();

// $container = get_theme_mod( 'understrap_container_type' );

?>

<!-- <div class="wrapper" id="full-width-page-wrapper">
	<div class="<?php echo esc_attr( $container ); ?>" id="content">
		<div class="row">
			<div class="col-md-12 content-area" id="primary">
				<main class="site-main" id="main" role="main">
				</main>
			</div>
		</div>
	</div>
</div> -->

<?php //get_footer(); ?>