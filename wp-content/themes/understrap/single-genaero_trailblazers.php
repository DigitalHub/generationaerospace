<?php
/**
 *
 * Template for displaying a page without sidebar even if a sidebar widget is published.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); 
$page_template = get_page_template_slug( get_queried_object_id() );
$has_video = get_field('video');

if($has_video) {
	$video_link = get_field('video_link');
	$video_summary = get_field('video_summary');
	$embed_code = extractUTubeVidId($video_link);
	// $mbed_code = youtubeEmbedFromUrl($video_link, 480, 360);
	?>
	<div class="<?php echo $page_template ?> container-fluid single_trailblazers">
		<div class="row">
			<div class="col-xl-7 col-lg-7 col-md-7 col-sm-12 col-xs-12 single_trailblazers--profile">
				<div class="col-xl-10 offset-xl-2 col-lg-11 offset-lg-1 col-md-12 col-sm-12 col-xs-12 single_trailblazers--profile_wrapper">
					<div class="row single_trailblazers--row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12  single_trailblazers--col">
							<div class="row">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<h1>Profile_</h1>
								</div>
								<div class="col-xl-5 col-lg-5 col-md-12 col-sm-12 col-xs-12">
									<div class="post-thumbnail">
										<?php the_post_thumbnail( 'large' ); ?>
									</div>
								</div>
								<div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-xs-12">
									<h2><?php the_title(); ?></h2>
									<p class="highlight"><?php echo get_field('job_title'); ?></p>
									<?php 
									while ( have_posts() ) : the_post();
										the_content(); 
									endwhile;
									?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 col-xs-12 single_trailblazers--video">
				<div class="row single_trailblazers--row">
					<div class="single_trailblazers--col col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12">

						<h1>Video_</h1>
						<div class="single_trailblazers--iframe">
							<div class="youtube-player" data-id="<?php echo $embed_code; ?>">
							</div>
							<h3><?php echo get_the_title().' - '.get_field('job_title'); ?></h3>
							<p><?php echo $video_summary; ?></p>
							<br>
							<div class="addthis_inline_share_toolbox_dznu"></div>
						</div>
						<div class="col-xl-2 col-lg-2 hidden-md-down" style="color: transparent;">Lorem</div><!-- this is to push video col to left  -->
					</div>
				</div>
			</div>
		</div>

		<?php } else { ?>

		<div class="container-fluid single_trailblazers">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 single_trailblazers--profile">
					<div class="col-xl-10 offset-xl-1 col-lg-11 offset-lg-1 col-md-12 col-sm-12 col-xs-12 single_trailblazers--profile_wrapper">
						<div class="row single_trailblazers--row">
							<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12  single_trailblazers--col">
								<div class="row">
									<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<h1>Profile_</h1>
									</div>
									<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 col-xs-12">
										<div class="post-thumbnail">
											<?php the_post_thumbnail( 'large' ); ?>
										</div>
									</div>
									<div class="col-xl-7 col-lg-7 col-md-7 col-sm-12 col-xs-12">
										<h2><?php the_title(); ?></h2>
										<p class="highlight"><?php echo get_field('job_title'); ?></p>
										<?php 
										while ( have_posts() ) : the_post();
											the_content(); 
										endwhile;
										?>
										<br>
										<div class="addthis_inline_share_toolbox_dznu"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<?php  }  get_footer();  ?>