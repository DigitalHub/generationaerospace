<?php
/**
 * Post rendering content according to caller of get_template_part.
 *
 * @package understrap
 */

global $video;

$posted_by = $video->posted_by;
$profile_pic = $video->profile_pic;
$video_id = $video->video_id;
$title = $video->video_title;
$desc = $video->video_desc;
$posted_date = date_create($video->posted_date);
$posted_date = date_format($posted_date, 'd M Y');
// $desc = substr($video->description,0,120);
$youtube = $video->video_link;
parse_str( parse_url( $youtube, PHP_URL_QUERY ), $my_array_of_vars );
$youtube_id =  $my_array_of_vars['v'];

$url_to_json = 'https://www.googleapis.com/youtube/v3/videos?key='.YOUTUBE_API_KEY.'&part=snippet&id='.$youtube_id;

$data = file_get_contents($url_to_json);
$json = json_decode($data);
$thumbnail_url = $json->items[0]->snippet->thumbnails->high->url;

?>

<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12 featured_experiment--card">
	<div class="post-thumbnail">
		<a href="#ab"><img src="<?=$thumbnail_url?>" /></a>
	</div>
	<!-- TODO: STEF TO ADD FUNCTIONALITY FOR LIKE -->
	<div class="experiment--fav_link"><a href="#heart"><i class="fas fa-heart"></i></a></div>
	<div class="experiment_card--content">
		<!-- TODO: STEF TO ADD SINGLE VIDEO LINK -->
		<a href="#a"><?=$title?></a>
		<div class="meta-date_fav">
			<div class="alignleft">
				<!-- TODO: STEF TO ADD PROFILE PIC -->
				<div class="meta-profile_pic">
					<img src="<?=$profile_pic?>" class="profile_photo" alt="<?=$fullname?>'s Profile Photo">
				</div>
			</div>
			<div class="alignleft">
				<div class="meta-posted">Posted by <span class="meta-student"><?=$posted_by?></span></div>
				<div class="meta-date"><i class="fas fa-clock"></i><?=$posted_date?></div>
				<div class="meta-comment"><i class="fas fa-comment"></i>200</div>
				<div class="meta-fav"><i class="fas fa-heart"></i>100</div>
			</div>
		</div>
	</div>
</div> <!-- .featured_experimentcard end -->