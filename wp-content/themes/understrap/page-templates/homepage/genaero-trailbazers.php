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
	<section class="section" data-anchor="genaero_trailblazers">
		<?php $bgimg = get_template_directory_uri() . "/img/imgbg_homepage-trailblizers.jpg";
		include(locate_template('loop-templates/home-hubbase.php')); ?>
		<div class="container sub_content featured_trailbazers">
			<div class="row">
				<div class="offset-xl-1 col-xl-4 offset-lg-1 col-lg-4 d-lg-block d-none animated_circles--wrapper featured_trailbazers--img">
					<div class="animated_circles top_circles">
						<svg class="circle" width="370" height="20" viewBox="0 0 370 20"><rect x="0" y="0" width="370" height="20"></rect><g><circle cx="17" cy="10" r="5"></circle><circle cx="41" cy="10" r="5"></circle><circle cx="210" cy="10" r="5"></circle><circle cx="250" cy="10" r="5"></circle><circle cx="300" cy="10" r="5"></circle><circle cx="320" cy="10" r="5"></circle></g></svg>
						<svg class="line" width="320" height="1" viewBox="0 0 320 1"><rect x="0" y="0" width="320" height="1"></rect><g><line x1="0" y1="1" x2="320" y2="1"></line></g></svg>
					</div>
					<div class="post-thumbnail">
						<?php the_post_thumbnail( 'full' ); ?>
					</div>
					<div class="animated_circles bottom_circles">
						<svg class="circle" width="370" height="20" viewBox="0 0 370 20"><rect x="0" y="0" width="370" height="20"></rect><g><circle cx="17" cy="10" r="5"></circle><circle cx="40" cy="10" r="5"></circle><circle cx="110" cy="10" r="5"></circle><circle cx="150" cy="10" r="5"></circle><circle cx="300" cy="10" r="5"></circle><circle cx="320" cy="10" r="5"></circle></g>
						</svg>
						<svg class="line" width="320" height="1" viewBox="0 0 320 1"><rect x="0" y="0" width="320" height="1"></rect><g><line x1="0" y1="1" x2="320" y2="1"></line></g></svg>
					</div>
				</div>

				<div class="offset-xl-0 col-xl-6 offset-lg-0 col-lg-6 d-lg-block d-none">
					<h2 class="trailblazer--title">FOLLOW THE TRAILBLAZERS</h2>
					<h2 class="trailblazer--name"><?php the_title(); ?></h2>
					<p class="highlight"><?php echo get_field('job_title'); ?></p>
					<?php the_excerpt(); ?>
					<a data-fancybox data-type="iframe" data-src="<?php the_permalink(); ?>" href="javascript:;" class="fullpopup arrowbtn btn--color" style="margin-top: 30px">
						<span class="fas fa-long-arrow-alt-right icon-left"></span>
						<div class="arrowbtn-wrapper"><span>Read More</span></div>
					</a>
					<a href="<?php echo get_permalink( get_page_by_path( 'follow-the-trailblazers' ) ) ?>" class="arrowbtn btn--color" style="margin-top: 30px">
						<span class="fas fa-long-arrow-alt-right icon-left"></span>
						<div class="arrowbtn-wrapper"><span>See More Trailblazers</span></div>
					</a>
				</div>

				<div class="d-lg-none dg-xl-none col-md-12 col-sm-12 col-xs-12">
					<h2 class="trailblazer--title center">FOLLOW THE TRAILBLAZERS</h2>
					<div class="row">
						<div class="col-md-4">
							<div class="post-thumbnail">
								<?php the_post_thumbnail( 'medium' ); ?>
							</div>
						</div>
						<div class="col-md-8 center">
							<h2 class="trailblazer--name"><?php the_title(); ?></h2>
							<p class="highlight"><?php echo get_field('job_title'); ?></p>
							<div class="mobileexcerpt">
								<?php the_excerpt(); ?>
								<a data-fancybox data-type="iframe" data-src="<?php the_permalink(); ?>" href="javascript:;" class="fullpopup arrowbtn btn--color" style="margin-top: 30px">
									<span class="fas fa-long-arrow-alt-right icon-left"></span>
									<div class="arrowbtn-wrapper"><span>Read More</span></div>
								</a>
							</div>
						</div>
					</div>
					<div class="center">
						<a href="<?php echo get_permalink( get_page_by_path( 'follow-the-trailblazers' ) ) ?>" class="arrowbtn btn--color">
							<span class="fas fa-long-arrow-alt-right icon-left"></span>
							<div class="arrowbtn-wrapper"><span>See More Trailblazers</span></div>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="fullpagecounter"><span class="counting">05</span><span class="totalcount">06</span></div>
	</section>

<?php endif; ?>