<?php
/**
 * Post rendering content according to caller of get_template_part.
 *
 * @package understrap
 */

?>
<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-x-12 featured_trailblazer--card">
	<a class="fullpopup" data-fancybox data-type="iframe" data-src="<?php the_permalink(); ?>" href="javascript:;">
		<div class="post-thumbnail featured_trailblazer--img">
			<div class="post-thumbnail--wrapper">
				<?php the_post_thumbnail( 'large' ); ?>
				<span class="whitebg"></span><i class="fal fa-plus"></i>
			</div>
		</div>
		<div class="featured_trailblazer--details">
			<p class="featured_trailblazer--name highlight"><?php echo get_the_title(); ?></p>
			<div class="featured_trailblazer--position"><?php echo get_field('job_title'); ?></div>
		</div>
	</a>
</div><!-- .featured_trailblazer end -->