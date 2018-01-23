<?php
/**
 * The template for displaying search results pages.
 *
 * @package understrap
 */

get_header();

$container   = get_theme_mod( 'understrap_container_type' );
$sidebar_pos = get_theme_mod( 'understrap_sidebar_position' );
?>

<section class="subpage--hud">
	<?php $bgimg = get_template_directory_uri() . "/img/img-header_findaVideo.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="subpage--content">
		<div class="container">
			<div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-md-10 offset-md-1 col-sm-12 col-xs-12">
				<h1><?php printf( esc_html__( 'Search Results for: %s', 'understrap' ), '<span>' . get_search_query() . '</span>' ); ?></h1>
				<div class="search-form">
					<form method="get" id="searchform" action="<?php echo esc_url( home_url( '/' ) ); ?>" role="search">
						<div class="input-group">
							<input class="field form-control" id="s" name="s" type="text" value="<?php the_search_query(); ?>">
							<button type="submit" class="submit btn btn-primary" id="searchsubmit" name="submit" >
								<i class="fal fa-search"></i>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper" id="search-wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content" tabindex="-1">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 content-area" id="primary">
					<main class="site-main" id="main">
						<?php 
						if ( have_posts() ) : 
							while ( have_posts() ) : the_post();
								get_template_part( 'loop-templates/content', 'search' );
							endwhile;
						else : 
							get_template_part( 'loop-templates/content', 'none' ); 
						endif;
						?>
					</main><!-- #main -->
					<!-- The pagination component -->
					<?php understrap_pagination(); ?>
				</div><!-- #primary -->
			</div><!-- .row -->
		</div><!-- Container end -->
	</div><!-- Wrapper end -->
</section>

<?php get_footer(); ?>
