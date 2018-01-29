<?php
/**
 * The template for displaying 404 pages (not found).
 *
 * @package understrap
 */

get_header();

$container   = get_theme_mod( 'understrap_container_type' );
$sidebar_pos = get_theme_mod( 'understrap_sidebar_position' );

?>


<section class="subpage--hud">
	<?php $bgimg = get_template_directory_uri() . "/img/imgbg_homepage-findanexperiment.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="subpage--content">
		<div class="container">
			<div class="row">
				<div class="col-xl-8 offset-xl-2">
					<header class="page-header">
						<h1 class="page-title"><?php esc_html_e( 'Oops! That page can&rsquo;t be found.',
						'understrap' ); ?></h1>
					</header><!-- .page-header -->
				</div>
			</div>
		</div>
	</div>
</section>
<div class="wrapper" id="error-404-wrapper">

	<div class="<?php echo esc_attr( $container ); ?>" id="content" tabindex="-1">
		<div class="row">
			<div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-md-12 col-sm-12 col-xs-12 content-area" id="primary">
				<main class="site-main" id="main">
					<section class="error-404 not-found">
						<div class="page-content text-center">
							<p><?php esc_html_e( 'It looks like nothing was found at this location. Maybe try one of the links below or a search?',
							'understrap' ); ?></p>
							<?php get_search_form(); ?>
						</div><!-- .page-content -->
					</section><!-- .error-404 -->
				</main><!-- #main -->
			</div><!-- #primary -->
		</div><!-- .row -->
	</div><!-- Container end -->
</div><!-- Wrapper end -->
<?php get_footer(); ?>
