<?php
/**
 * Post rendering content according to caller of get_template_part.
 *
 * @package understrap
 */

// global $video;

$posted_by_username = $video->posted_by_username;
$posted_by = $video->posted_by;

if($posted_by === '' || $posted_by === NULL) {
	$name = $posted_by_username;
} else {
	$name = $posted_by;
}

$video_id = $video->video_id;
$title = $video->video_title;
$favourite = $video->favourite;

$posted_date = date_create($video->posted_date);
$posted_date = date_format($posted_date, 'd M Y');

$permalink = get_permalink($video->link_id);

$profile_pic = $video->profile_pic;
if($profile_pic === '' || $profile_pic === NULL) {
	$profile_pic = get_template_directory_uri().'/img/default-photo.png';
} else {
	$wordpress_upload_dir = wp_upload_dir();
	$profile_pic = $wordpress_upload_dir['baseurl'] . '/genaero-members/' . $profile_pic;
}

$youtube = $video->video_link;
parse_str( parse_url( $youtube, PHP_URL_QUERY ), $my_array_of_vars );
$youtube_id =  $my_array_of_vars['v'];

$thumbnail_url = 'http://img.youtube.com/vi/'.$youtube_id.'/mqdefault.jpg';
?>

<div class="featured_experiment--card col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-6">
	<a href="<?=$permalink?>">
		<div class="post-thumbnail" style="background-image:url('<?=$thumbnail_url?>');">
			<!-- <div class="bg-opaque"></div> -->
		</div>
	</a>
	<div class="experiment--fav_link" data-video-id="<?=$video_id?>"><i class="fas fa-heart"></i></div>
	<div class="experiment_card--content">
		<a href="<?=$permalink?>"><?=$title?></a>
		<div class="meta-date_fav">
			<div class="alignleft">
				<div class="meta-profile_pic">
					<img src="<?=$profile_pic?>" class="profile_photo" alt="<?=$fullname?>'s Profile Photo">
				</div>
			</div>
			<div class="alignleft">
				<div class="meta-posted">Posted by <span class="meta-student"><?=$name?></span></div>
				<div class="meta-date"><i class="fas fa-clock"></i><?=$posted_date?></div>
				<!-- <div class="meta-comment"><i class="fas fa-comment"></i>200</div> -->
				<div class="meta-fav"><i class="fas fa-heart"></i><?=$favourite?></div>
			</div>
		</div>
	</div>
</div> <!-- .featured_experimentcard end -->