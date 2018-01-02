<?php
/**
 * Template Name: Logout Page
 *
 * Template for displaying a log out page.
 *
 * @package understrap
 */

get_header();

	// session_destroy();

$container = get_theme_mod( 'understrap_container_type' );

?>

<div class="wrapper" id="full-width-page-wrapper">

	<div class="<?php echo esc_attr( $container ); ?>" id="content">

		<div class="row">

			<div class="col-md-12 content-area" id="primary">

				<main class="site-main" id="main" role="main">
				</main>

			</div>

		</div>

	</div>

</div>

<?php get_footer(); ?>