<?php
/**
 * Template Name: Left and Right Sidebar Layout
 *
 * This template can be used to override the default template and sidebar setup
 *
 * @package understrap
 */

$trailblazer = get_field('featured_trailblazer');

if($trailblazer) :
	$post = $trailblazer;
	setup_postdata($post);
	?>
	<section class="section" data-anchor="genaero_trailbazers">
		<div class="container sub_content">
			<div class="row">
				<div class="col-xl-4 featured_trailbazers">
					<div class="animated_circles top_circles">
						<svg class="circle" width="370" height="20" viewBox="0 0 370 20"><rect x="0" y="0" width="370" height="20"></rect><g><circle cx="17" cy="10" r="5"></circle><circle cx="41" cy="10" r="5"></circle><circle cx="210" cy="10" r="5"></circle><circle cx="250" cy="10" r="5"></circle><circle cx="300" cy="10" r="5"></circle><circle cx="320" cy="10" r="5"></circle></g></svg>
						<svg class="line" width="320" height="1" viewBox="0 0 320 1"><rect x="0" y="0" width="320" height="1"></rect><g><line x1="0" y1="1" x2="320" y2="1"></line></g></svg>
					</div>
					<?php the_post_thumbnail( 'medium' ); ?>"
					<div class="animated_circles bottom_circles">
						<svg class="circle" width="370" height="20" viewBox="0 0 370 20"><rect x="0" y="0" width="370" height="20"></rect><g><circle cx="17" cy="10" r="5"></circle><circle cx="40" cy="10" r="5"></circle><circle cx="110" cy="10" r="5"></circle><circle cx="150" cy="10" r="5"></circle><circle cx="300" cy="10" r="5"></circle><circle cx="320" cy="10" r="5"></circle></g>
						</svg>
						<svg class="line" width="320" height="1" viewBox="0 0 320 1"><rect x="0" y="0" width="320" height="1"></rect><g><line x1="0" y1="1" x2="320" y2="1"></line></g></svg>
					</div>
				</div>

				<div class="col-xl-7">
					<h2>Genaero Trailblazers</h2>
					<h2><?php the_title(); ?></h2>
					<p class="highlight"><?php echo get_field('job_title'); ?></p>
					<?php the_excerpt(); ?>

					<a href="<?php the_permalink(); ?>" class="arrowbtn btn--color">
						<span class="fas fa-long-arrow-alt-right icon-left"></span>
						<div class="arrowbtn-wrapper"><span>Read More</span></div>
					</a>
					<a href="<?php echo get_permalink( get_page_by_path( 'genaero-trailblazers' ) ) ?>" class="arrowbtn btn--color">
						<span class="fas fa-long-arrow-alt-right icon-left"></span>
						<div class="arrowbtn-wrapper"><span>See More Trailblazers</span></div>
					</a>
				</div>
			</div>
		</div>
	</section>

<?php endif; ?>