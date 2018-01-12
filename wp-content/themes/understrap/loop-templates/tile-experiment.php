<?php
/**
 * Post rendering content according to caller of get_template_part.
 *
 * @package understrap
 */

$tags = get_the_tags();
?>

<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12 featured_experiment--card">
	<div class="post-thumbnail">
		<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail( 'medium' ); ?></a>
	</div>
	<div class="experiment--fav_link" data-experiment-id="<?php echo get_the_ID();?>"><i class="fas fa-heart"></i></div>
	<div class="experiment_card--content">
		<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
		<ul class="meta-keywords">
			<!-- TODO: RACH TO FIX COMMA ISSUE -->
			<?php
			if($tags) :
				foreach($tags as $tag) :
					echo '<li><a href="'.get_term_link($tag).'">'.$tag->name.'</a></li>';
				endforeach;
			endif;
			?>
		</ul>
		<div class="meta-date_fav">
			<div class="meta-date"><i class="fas fa-clock"></i><?php echo get_the_date("d M Y"); ?></div>
			<!-- TODO: STEF TO DO FAV FUNCTION -->
			<div class="meta-fav"><i class="fas fa-heart"></i>100</div>
		</div>
	</div>
</div> <!-- .featured_experimentcard end -->