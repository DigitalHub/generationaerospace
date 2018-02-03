<?php
/**
 * The template for displaying 404 pages (not found).
 *
 * @package understrap
 */

get_header();

$container   = get_theme_mod( 'understrap_container_type' ); ?>
<section class="full--hud">
	<?php $bgimg = get_template_directory_uri() . "/img/imgbg_homepage-findanexperiment.jpg";
	include(locate_template('loop-templates/home-hubbase.php')); ?>
	<div class="full--content">
		<div class="container">
			<div class="row">
				<div class="col-xl-8 offset-xl-2">
					<header class="page-header">
						<h1 class="page-title"><?php esc_html_e( 'Oops! That page can&rsquo;t be found.',
						'understrap' ); ?></h1>
						<p><?php esc_html_e( 'It looks like nothing was found at this location. Maybe go back to home?',
							'understrap' ); ?></p>
					</header><!-- .page-header -->
				</div>
			</div>
		</div>
	</div>
</section>
<?php get_footer(); ?>
