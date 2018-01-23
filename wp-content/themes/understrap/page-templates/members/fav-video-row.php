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

$thumbnail_url = 'http://img.youtube.com/vi/'.$youtube_id.'/mqdefault.jpg';
?>

<div class="row videopost--row">
	<div class="col-lg-3">
		<a data-fancybox href="<?=$youtube?>" target="_blank">
			<img src="<?=$thumbnail_url?>" alt="<?=$title?>">
		</a>
	</div>
	<div class="col-lg-8">
		<h5><?=$title;?></h5>
		<span><?=$desc?>...</span>
	</div>
	<div class="col-lg-1">
		<a href="#" class="delete-fav-video edit_videopost--btn" data-fav-id="<?=$fav_id?>"><i class="fal fa-trash"></i></a>
	</div>
</div>

