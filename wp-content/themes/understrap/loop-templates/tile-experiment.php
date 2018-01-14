<?php
/**
 * Post rendering content according to caller of get_template_part.
 *
 * @package understrap
 */

global $wpdb;
$fav_experiments_table = $wpdb->prefix . 'genaero_favourite_experiments';

$tags = get_the_tags();
$experiment_id = get_the_ID();

$experiments_sql = $wpdb->prepare("SELECT * FROM $fav_experiments_table WHERE experiment_id = %s", $experiment_id);
$results = $wpdb->get_results($experiments_sql);
$results_count = $wpdb->num_rows;
?>

<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12 featured_experiment--card">
	<a href="<?php the_permalink(); ?>">
		<div class="post-thumbnail">
			<?php the_post_thumbnail( 'medium' ); ?>
			<div class="bg-opaque"></div>
		</div>
	</a>
	<div class="experiment--fav_link" data-experiment-id="<?=$experiment_id?>"><i class="fas fa-heart"></i></div>
	<div class="experiment_card--content">
		<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
		<ul class="meta-keywords">
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
			<div class="meta-fav"><i class="fas fa-heart"></i><?=$results_count?></div>
		</div>
	</div>
</div> <!-- .featured_experimentcard end -->