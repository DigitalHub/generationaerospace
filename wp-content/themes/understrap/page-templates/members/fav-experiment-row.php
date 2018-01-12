<?php
/**
 *
 * This template is used to create the favourite experiment rows on members pages
 *
 * @package understrap
 */

global $result;

$fav_id = $result->id;
$experiment_id = $result->experiment_id;
$title = $result->post_title;
$excerpt = substr($result->post_excerpt, 0, 150);
?>

<div class="row">
	<div class="col-lg-3">
		<a href="<?php echo get_permalink( $experiment_id )?>" target="_blank">
			<?php echo get_the_post_thumbnail( $experiment_id, 'thumbnail' ); ?>
		</a>
	</div>
	<div class="col-lg-8">
		<h5><?=$title;?></h5>
		<?php
		if($excerpt)
			echo '<p>'.$excerpt.'...</p>';
		?>
	</div>
	<div class="col-lg-1">
		<!-- TODO: RACH TO REPLACE WITH ICONS -->
		<button class="delete-fav-experiment" data-fav-id="<?=$fav_id?>">delete</button>
	</div>
</div>
