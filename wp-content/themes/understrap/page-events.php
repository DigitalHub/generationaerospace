<?php
/**
 * Template Name: Page Events
 *
 * Template for displaying a page without sidebar even if a sidebar widget is published.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); 

$today = date('Ymd');

$args1 = array(
	'post_type' 		=> 'genaero_events',
	'posts_per_page' 	=> -1,
	'meta_query' 		=> array(
		array(
			'key' 		=> 'start_date',
			'value' 	=> $today,
			'compare' 	=> '>=',
			'type' 		=> 'DATE'
		)),
	'meta_key'			=> 'start_date',
	'orderby'			=> 'meta_value',
	'order'				=> 'ASC',
);
$upcoming_query = new WP_Query($args1);

$args2 = array(
	'post_type' 		=> 'genaero_events',
	'posts_per_page' 	=> -1,
	'meta_query' 		=> array(
		array(
			'key' 		=> 'start_date',
			'value' 	=> $today,
			'compare' 	=> '<',
			'type' 		=> 'DATE'
		)),
	'meta_key'			=> 'start_date',
	'orderby'			=> 'meta_value',
	'order'				=> 'DESC',
);
$old_query = new WP_Query($args2);

?>

<section class="subpage--hud">
	<?php $bgimg = "http://localhost/generationaerospace/wp-content/themes/understrap/img/Dashboard_Bg.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="subpage--content">
		<div class="container">
			<h1><?php //the_title(); ?>What's Happening</h1>
			<?php 
			if (have_posts()) : while (have_posts()) : the_post(); 
				the_content();
			endwhile; endif; 
			?>

			<!-- TODO: STEF TO ADD FUNCTIONALITY -->
			<a href="#" class="defaultbtn btn--color">
				<div class="defaultbtn-wrapper"><span>All</span></div>
			</a>

			<a href="#" class="defaultbtn btn--color">
				<div class="defaultbtn-wrapper"><span>Upcoming</span></div>
			</a>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="col-xl-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<div class="container">
							<div class="events_table ongoing_events">
								<div class="row events_row--header">
									<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 col-xs-12"><h3>Events</h3></div>
									<div class="col-xl-2 col-lg-2 col-md-2 d-md-block d-sm-none d-none"><h3>Date</h3></div>
									<div class="col-xl-2 col-lg-2 col-md-2 d-md-block d-sm-none d-none"><h3>time</h3></div>
									<div class="col-xl-3 col-lg-3 col-md-3 d-md-block d-sm-none d-none"><h3>venue</h3></div>
								</div>
								<?php
								if($upcoming_query->have_posts()) :
									while($upcoming_query->have_posts()) : $upcoming_query->the_post();
										get_template_part( 'loop-templates/row', 'event' );
									endwhile;
								endif;
								?>
							</div><!-- .ongoing_events end -->
							
							<div class="events_table past_events">
								<div class="row events_row--header">
									<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 col-xs-12"><h3>Past Events</h3></div>
									<div class="col-xl-2 col-lg-2 col-md-2 d-md-block d-sm-none d-none"><h3>Date</h3></div>
									<div class="col-xl-2 col-lg-2 col-md-2 d-md-block d-sm-none d-none"><h3>time</h3></div>
									<div class="col-xl-3 col-lg-3 col-md-3 d-md-block d-sm-none d-none"><h3>venue</h3></div>
								</div>
								<?php
								if($old_query->have_posts()) :
									while($old_query->have_posts()) : $old_query->the_post();
										get_template_part( 'loop-templates/row', 'event' );
									endwhile;
								endif;
								?>
							</div><!-- .past_events end -->
						</div>
					</main>
				</div><!-- #primary -->
			</div><!-- .row end -->
		</div><!-- Container end -->
	</div><!-- Wrapper end -->
</section>
<?php get_footer(); ?>