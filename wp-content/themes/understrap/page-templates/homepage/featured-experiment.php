<?php
/**
 * Template Name: Left and Right Sidebar Layout
 *
 * This template can be used to override the default template and sidebar setup
 *
 * @package understrap
 */
?>

<section class="section" data-anchor="featured_experiment">
	<?php $bgimg = get_template_directory_uri() . "/img/imgbg_homepage-findanexperiment.jpg";
	include(locate_template('loop-templates/home-hubbase.php')); ?>
	<div class="container sub_content">
		<div class="row">
			<div class="offset-xl-1 col-xl-4 offset-lg-1 col-lg-4 col-md-10 offset-md-1 col-sm-12 col-xs-12">
				<h1>TRY THIS AT HOME_</h1>
				<div class="highlight" style="margin-bottom: 30px"><?php echo get_field('featured_experiment_copy'); ?></div>
				
				<a href="<?php echo get_permalink( get_page_by_path( 'try-this-at-home' ) ); ?>" class="arrowbtn btn--color d-none d-lg-block">
					<span class="fas fa-long-arrow-alt-right icon-left"></span>
					<div class="arrowbtn-wrapper"><span>See More Experiments</span></div>
				</a>
			</div>
			<div class="col-xl-5 col-lg-5 d-none d-lg-block featured_experiment--keywords">
				<div class="row">
					<?php $count = 1;
					while(have_rows('featured_tags')) : the_row();
						$tag = get_sub_field('tag');
						$image_object  = get_sub_field('image');
						$image_size = 'large';
						$image_url = $image_object['sizes'][$image_size];

						if($count == 1 || $count == 3) :
							$toporbottom = 'hover--topbox';
						elseif($count == 2 || $count == 4) :
							$toporbottom = 'hover--bottombox';
						endif;
						?>
						<div class="col-xl-6 col-lg-6 <?php echo $toporbottom; ?>">
							<a href="<?php echo get_permalink( get_page_by_path( 'try-this-at-home' ) ).'?keyword='.$tag->name; ?>">
								<div class="post-thumbnail">
									<img src="<?=$image_url?>" />
									<div class="bg-opaque"></div>
									<h3><?php echo $tag->name; ?></h3>
								</div>
							</a>
						</div>
						<?php

						if($count == 2) {
							echo '<span class="animate--box topbox"></span>';
						} 
						if( $count == 4) {
							echo '<span class="animate--box bottombox"></span>';
						}
						$count++;
						endwhile;?>
					</div>
				</div>
				<div class="d-md-block d-md-block d-lg-none col-md-12 col-sm-12 col-xs-12 featured_experiment--keywords">
					<div class="row featured_experiment--keywordsslider-wrapp">
						<?php
						while(have_rows('featured_tags')) : the_row();
							$tag = get_sub_field('tag');
							$image_object  = get_sub_field('image');
							$image_size = 'large';
							$image_url = $image_object['sizes'][$image_size];?>
							<div class="featured_experiment--keywordsslider">
								<a href="<?php echo get_permalink( get_page_by_path( 'try-this-at-home' ) ).'?keyword='.$tag->name; ?>">
									<div class="post-thumbnail">
										<img src="<?=$image_url?>" />
										<div class="bg-opaque"></div>
										<h3><?php echo $tag->name; ?></h3>
									</div>
								</a>
							</div>
						<?php endwhile;?>
					</div>
				</div>

				<a href="<?php echo get_permalink( get_page_by_path( 'try-this-at-home' ) ); ?>" class="d-md-block d-lg-none arrowbtn btn--color">
					<span class="fas fa-long-arrow-alt-right icon-left"></span>
					<div class="arrowbtn-wrapper"><span>See More Experiments</span></div>
				</a>
			</div>
		</div>
		<div class="fullpagecounter"><span class="counting">03</span><span class="totalcount">06</span></div>
	</section>