<?php
/**
 * The template for displaying single genaero_vault posts.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); ?>


<section class="subpage--hud">
	<?php $bgimg = get_template_directory_uri() . "/img/img-header_The-vault.jpg";
	include(locate_template('loop-templates/single-hubbase.php')); ?>

	<div class="singlepost--content content--overflow">
		<div class="container">
			<div class="col-xl-10 offset-xl-1 col-lg-10 offset-xl-1 col-md-10 offset-md-1 col-sm-12 col-xs-12">
				
				<h1><?php the_title(); ?></h1>
				<div class="highlight text-center"><?php the_excerpt(); ?></div>
			</div>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper" id="single-wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<?php 
						while ( have_posts() ) : the_post();
							the_content(); 
						endwhile;
						?>
					</main><!-- #main -->
				</div><!-- #primary -->
			</div><!-- .row end -->
			<hr>
			<div class="row">
				<div class="back-to-main">
					<a href="<?php echo get_permalink( get_page_by_path( 'explore-the-vault' ) ) ?>" class="arrowbtn btn--color">
						<span class="fas fa-long-arrow-alt-right icon-left"></span><div class="arrowbtn-wrapper"><span>Back to Explore the Vault Page</span></div>
					</a>
				</div>
			</div>
		</div><!-- Container end -->
	</div><!-- Wrapper end -->
</section>
<?php get_footer(); ?>
