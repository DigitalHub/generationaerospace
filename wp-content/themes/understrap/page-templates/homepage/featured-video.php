<?php
/**
 * Template Name: Left and Right Sidebar Layout
 *
 * This template can be used to override the default template and sidebar setup
 *
 * @package understrap
 */
?>

<section class="section" data-anchor="featured_video">
	<div class="container sub_content">
		<div class="row">
			<div class="col-xl-4"><!-- offset-xl-1 -->
				<h1>Featured Video_</h1>
				<div class="highlight"><?php echo get_field('featured_video_copy'); ?></div>
				<button class="arrowbtn btn--color">
					<span class="fas fa-long-arrow-alt-right icon-left"></span>
					<div class="arrowbtn-wrapper"><span>See More Videos</span></div>
				</button>
			</div>
			<div class="col-xl-6 "><!-- offset-xl-1 -->
				<div class="featured_video--carousel_wrapper">
					<div class="featured_video--carousel">
						<!-- TODO: STEF KIV -->
						<?php
						if(have_rows('featured_video')) :
							while(have_rows('featured_video')) : the_row();
								$test = get_sub_field('id');
							endwhile;
						endif;
						?>
						<div class="video_slide">
							<img src="http://lorempixel.com/500/250" />
							<h3>Video One</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, voluptas.</p>
						</div>
						<div class="video_slide">
							<img src="http://lorempixel.com/500/251" />
							<h3>Video One</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam quaerat repellat nam consequatur ullam perspiciatis?</p>
						</div>
						<div class="video_slide">
							<img src="http://lorempixel.com/500/249" />
							<h3>Video One</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi cupiditate velit, officiis reprehenderit!</p>
						</div>
					</div>
				</div>
				<div class="pagingInfo"></div>
			</div>
		</div>
	</div>
</section>