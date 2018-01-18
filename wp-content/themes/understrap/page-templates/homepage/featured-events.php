<?php
/**
 * Template Name: Left and Right Sidebar Layout
 *
 * This template can be used to override the default template and sidebar setup
 *
 * @package understrap
 */

$today = date('Ymd');

$args1 = array(
	'post_type' 		=> 'genaero_events',
	'posts_per_page' 	=> 1,
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
$first_query = new WP_Query($args1);

$args2 = array(
	'post_type' 		=> 'genaero_events',
	'posts_per_page' 	=> 3,
	'offset'			=> 1,
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
$second_query = new WP_Query($args2);

?>
<section class="section" data-anchor="featured_events">
	<?php $bgimg = get_template_directory_uri() . "/img/imgbg_homepage-event.jpg";
	include(locate_template('loop-templates/home-hubbase.php')); ?>
	<div class="container sub_content">
		<div class="row">
			<div class="col-xl-6 featured_trailbazers featured_events">
				<?php 
				if($first_query->have_posts()) :
					while($first_query->have_posts()) : $first_query->the_post();
						?>
						<h2><?php the_title(); ?></h2>
						<div class="animated_circles top_circles">
							<svg class="circle" width="500" height="20" viewBox="0 0 500 20"><rect x="0" y="0" width="500" height="20"></rect><g><circle cx="17" cy="10" r="5"></circle><circle cx="41" cy="10" r="5"></circle><circle cx="310" cy="10" r="5"></circle><circle cx="350" cy="10" r="5"></circle><circle cx="460" cy="10" r="5"></circle><circle cx="490" cy="10" r="5"></circle></g></svg>
							<svg class="line" width="500" height="1" viewBox="0 0 500 1"><rect x="0" y="0" width="500" height="1"></rect><g><line x1="0" y1="1" x2="320" y2="1"></line></g></svg>
						</div>
						<div class="post-thumbnail">
							<?php the_post_thumbnail( 'large' ); ?>

							<?php 
							$startdate = get_field('start_date');
							$enddate = get_field('end_date');
							$date = getDates($startdate, $enddate);

							$starttime = get_field('start_time');
							$endtime = get_field('end_time');
							$time = $starttime.' - '.$endtime;
							$venue = get_field('venue');  ?>
							<h3>Date: <?=$date?><br/>
								Time: <?=$time?><br/>
								Venue: <?=$venue?></h3>
							</div>
							<?php $summary = get_field('pre_event_summary');
							echo substr($summary, 0, 200); ?>
							<div class="clear"></div>
							<a href="<?php the_permalink(); ?>" class="arrowbtn btn--color">
								<span class="fas fa-long-arrow-alt-right icon-left"></span>
								<div class="arrowbtn-wrapper"><span>Read More</span></div>
							</a>
						</div>
						<?php
					endwhile;
				endif;
				?>

				<div class="col-xl-4">
					<h2>Upcoming Events</h2>
					<?php if($second_query->have_posts()) : while($second_query->have_posts()) : $second_query->the_post();
					$startdate = get_field('start_date');
					$enddate = get_field('end_date');
					$date = getDates($startdate, $enddate);
					$summary = get_field('pre_event_summary'); ?>
					
					<div class="featured--upcoming_event">
						<span class="post_date"><i class="fal fa-clock"></i><?=$date?></span>
						<p><?php the_title(); ?></p>
						<?php echo substr($summary, 0, 150);  ?><br>
					</div>
				<?php endwhile; endif; ?>
				<a href="<?php echo get_permalink( get_page_by_path( 'events' ) ) ?>" class="arrowbtn btn--color">
					<span class="fas fa-long-arrow-alt-right icon-left"></span>
					<div class="arrowbtn-wrapper"><span>View All</span></div>
				</a>
			</div>
		</div>
	</div>
</section>