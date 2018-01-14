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
	<div class="container sub_content">
		<div class="row">
			<div class="col-xl-4 "><!-- offset-xl-1 -->
				<h1>Find An Experiment_</h1>
				<div class="highlight"><?php echo get_field('featured_experiment_copy'); ?></div>
				
				<button class="arrowbtn btn--color">
					<span class="fas fa-long-arrow-alt-right icon-left"></span>
					<div class="arrowbtn-wrapper"><span>See More Videos</span></div>
				</button>
			</div>
			<div class="col-xl-7 featured_experiment--keywords"><!-- offset-xl-1 -->
				<div class="row">
					<div class="col-xl-11 offset-xl-1">
						<?php
						if(have_rows('featured_tags')) :
							$count = 0;
							while(have_rows('featured_tags')) : the_row();
								$tag = get_sub_field('tag');
								$image = get_sub_field('image');

								if($count % 2 == 0) :
									echo $count > 0 ? '</div>' : '';
									echo '<div class="row">';
								endif;
								?>
								<!-- TODO: STEF TO DO KEYWORD SEARCH -->
								<div class="col-xl-6 hover--topbox">
									<a href="<?php echo get_term_link($tag); ?>">
										<img src="<?=$image['url']?>" />
										<div class="bg-opaque"></div>
										<h3><?php echo $tag->name; ?></h3>
									</a>
								</div>
								<?php
								if($count === 2 || $count === 4) {
									echo '<span class="animate--box topbox"></span>';
								}
								$count++;
							endwhile;
						endif;
						?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>