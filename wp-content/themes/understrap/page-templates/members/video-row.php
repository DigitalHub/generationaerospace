<?php
/**
 *
 * This template is used to create the video rows on members pages
 *
 * @package understrap
 */

global $result;

$video_id = $result->id;
$title = $result->title;
$desc = substr($result->description,0,120);
$approved = $result->post_status;

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
		<p class="highlight">
			<?php echo $title;
			if($approved === 'pending') { echo '<span>(Pending Approval)<span>'; } 
			?>
		</p>
		<span><?=$desc?>...</span>
	</div>
	<div class="col-lg-1">
		<a class="edit_videopost--btn" href="<?php echo get_permalink( get_page_by_path( 'edit-a-video' ) ) ?>?id=<?=$video_id?>"><i class="fal fa-pencil"></i></a>
	</div>
</div>

