<?php
/**
 * Template Name: Full Width Page
 *
 * Template for displaying a page without sidebar even if a sidebar widget is published.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' );
?>


<section class="subpage--hud">
	<?php $bgimg = get_template_directory_uri() . "/img/img-header_The-vault.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="subpage--content">
		<div class="container">
			<div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-md-10 offset-md-1 col-sm-12 col-xs-12">
				<h1><?php the_title(); ?></h1>
			</div>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper" id="full-width-page-wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="col-md-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<?php while (have_posts()) : the_post();  the_content(); endwhile;?>
					</main><!-- #main -->
				</div><!-- #primary -->
			</div><!-- .row end -->
		</div><!-- Container end -->
	</div><!-- Wrapper end -->
</section>
<?php get_footer(); ?>
