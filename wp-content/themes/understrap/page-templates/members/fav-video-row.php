<?php
/**
 *
 * This template is used to create the video rows on members pages
 *
 * @package understrap
 */

global $result;

$fav_id = $result->id;
$video_id = $result->video_id;
$title = $result->title;
$desc = substr($result->description,0,120);

$youtube = $result->youtube;
parse_str( parse_url( $youtube, PHP_URL_QUERY ), $my_array_of_vars );
$youtube_id =  $my_array_of_vars['v'];

$thumbnail_url = 'http://img.youtube.com/vi/'.$youtube_id.'/mqdefault.jpg';?>
<div class="row videopost--row">
	<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-3">
		<div class="row">
			<a data-fancybox href="<?=$youtube?>" target="_blank">
				<img src="<?=$thumbnail_url?>" alt="<?=$title?>">
			</a>
		</div>
	</div>
	<div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-8">
		<h5><?=$title;?></h5>
		<?php if($desc) echo '<p class="d-md-block d-sm-none d-none">'.$desc.'...</p>';
		?>
	</div>
	<div class="col-xl-1 col-lg-1 col-md-1 col-sm-1 col-1">
		<a href="#" class="row delete-fav-video edit_videopost--btn" data-fav-id="<?=$fav_id?>"><i class="fal fa-trash"></i></a>
	</div>
</div>

