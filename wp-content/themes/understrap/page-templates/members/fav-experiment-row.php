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
<div class="row videopost--row">
	<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-3">
		<div class="row">
			<a href="<?php echo get_permalink( $experiment_id )?>" target="_blank">
				<?php echo get_the_post_thumbnail( $experiment_id, 'thumbnail' ); ?>
			</a>
		</div>
	</div>
	<div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-8">
		<h5><?=$title;?></h5>
		<?php if($excerpt) echo '<p class="d-md-block d-sm-none d-none">'.$excerpt.'...</p>';
		?>
	</div>
	<div class="col-xl-1 col-lg-1 col-md-1 col-sm-1 col-1">
		<a href="#" class="row delete-fav-experiment edit_videopost--btn" data-fav-id="<?=$fav_id?>"><i class="fal fa-trash"></i></a>
	</div>
</div>

