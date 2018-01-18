<?php
/**
 * Template Name: Page Trailblazers
 *
 * Template for displaying a page without sidebar even if a sidebar widget is published.
 *
 * @package understrap
 */
get_header();
$container = get_theme_mod( 'understrap_container_type' ); 

global $the_query;

$cpt = 'genaero_trailblazers';
$posts_per_page = 4;
$template = 'trailblazer';

//Load More AJAX
$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
$args = array(
	'post_type' => $cpt,
	'posts_per_page' => $posts_per_page,
	'paged' =>  $paged,
);
$the_query = new WP_Query( $args );
$post_count = $the_query->post_count;
?>

<section class="subpage--hud">
	<?php $bgimg = get_template_directory_uri() . "/img/img-header_findanexperiment.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="subpage--content">
		<div class="container">
			<div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-md-10 offset-md-1 col-sm-12 col-xs-12">
				<h1><?php the_title(); ?></h1>
				<p class="highlight text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique praesentium quisquam dignissimos, magni ea accusamus provident illo corporis, non cumque.</p>
			</div>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<?php
						if($the_query->have_posts()) :
							$count = 0;
							while($the_query->have_posts()) : $the_query->the_post();
								if($count % $posts_per_page == 0) :
									echo $count > 0 ? '</div>' : '';
									echo '<div class="row">';
								endif;
								get_template_part( 'loop-templates/tile', $template );
								$count++;
							endwhile;

							if($count % $posts_per_page !== 0) {
								echo '</div>';
							} endif; ?>
						</main><!-- #main -->
						<?php if (  $the_query->max_num_pages > 1 ) {
							echo '<div class="row"><a href="#" class="genaero_loadmore" data-cpt="'.$cpt.'" data-posts_per_page="'.$posts_per_page.'" data-template="'.$template.'">More posts</a></div>';
						} ?>
					</div><!-- #primary -->
				</div><!-- .row end -->
			</div><!-- Container end -->
		</div><!-- Wrapper end -->
	</section>
	<?php
	wp_reset_postdata();
	get_footer(); ?>