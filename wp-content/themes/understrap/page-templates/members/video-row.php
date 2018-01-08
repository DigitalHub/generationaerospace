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

$url_to_json = 'https://www.googleapis.com/youtube/v3/videos?key='.YOUTUBE_API_KEY.'&part=snippet&id='.$youtube_id;

$data = file_get_contents($url_to_json);
$json = json_decode($data);
$thumbnail_url = $json->items[0]->snippet->thumbnails->default->url;
?>

<div class="row">
	<div class="col-lg-3">
		<!-- TODO: REPLACE VIDEO WITH FANCYBOX LINK -->
		<a href="<?=$youtube?>" target="_blank">
			<img src="<?=$thumbnail_url?>" alt="<?=$title?>">
		</a>
	</div>
	<div class="col-lg-8">
		<h5>
			<?php
			echo $title;
			if($approved === 'pending') {
				echo ' (Pending Approval)'; //TODO: RACHELLE, MAYBE CSS THIS ONE?
			}
			?>
		</h5>
		<span><?=$desc?>...</span>
	</div>
	<div class="col-lg-1">
		<!-- TODO: RACH TO REPLACE WITH ICON -->
		<a href="<?php echo get_permalink( get_page_by_path( 'edit-a-video' ) ) ?>?id=<?=$video_id?>">edit</a>
	</div>
</div>

