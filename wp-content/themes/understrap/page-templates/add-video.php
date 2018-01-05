<?php
/**
 * Template Name: Add/Edit Video Page
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' );

function my_contact_form_generate_response($type, $message){
	global $response;
	if($type ==='error') {
		$response = "<div class='error'>{$message}</div>";
	} else {
		$response = "<div class='success'>{$message}</div>";
	}
}

//response messages
$general_error = "There seems to be a problem. Please try to submit again.";
$missing_content = "Please fill in all fields.";
$long_desc = "Your description has exceeded the 500 characters limit. Please reduce the number of characters in your description.";
$success_content = "Thanks for your submission. We'll notify you once your video has been reviewed and approved.";

global $wpdb;
$videos_table = $wpdb->prefix.'genaero_videos';
$user_id = $_SESSION['user_id'];

//if submit a video page
if(is_page('submit-a-video')) {
	$is_new_video = '1';
} else {
	$is_new_video = '0';

	if($_GET['id']) {
		$video_id = $_GET['id'];

		$edit_sql = $wpdb->prepare("SELECT * FROM $videos_table WHERE id = %s", $video_id);
		$results = $wpdb->get_results($edit_sql);
		if($wpdb->num_rows > 0) {
			$title = stripslashes($results[0]->title);
			$desc = stripslashes(stripslashes($results[0]->description));
			$youtube = $results[0]->youtube;
		}
	}
}

if($_POST['video_submit']) {
	$title = $wpdb->escape($_POST['video_title']);
	$desc = $wpdb->escape($_POST['video_desc']);
	$youtube = $wpdb->escape($_POST['video_youtube']);
	$new_video = $wpdb->escape($_POST['video_is_new_video']);

	if(empty($title) || empty($youtube)) {
		my_contact_form_generate_response("error", $missing_content);
	} else {
		if(strlen($desc) > 500) {
			my_contact_form_generate_response("error", $long_desc);
		} else {
			//is new video
			if($new_video === '1') {
				$sql = $wpdb->prepare("INSERT INTO $videos_table (member_id,title,description,youtube) VALUES (%s,%s,%s,%s)", array($user_id,$title,$desc,$youtube));
				$wpdb->query($sql);
				my_contact_form_generate_response("success", $success_content);
			} else if($new_video === '0') {
				$sql = $wpdb->prepare("UPDATE $videos_table SET title=%s,description=%s,youtube=%s WHERE member_id=%s", array($title,$desc,$youtube,$user_id));
				$wpdb->query($sql);
				my_contact_form_generate_response("success", $success_content);
			} else {
				my_contact_form_generate_response("error", $general_error);
			}
		}
	}
}
?>

<div class="wrapper" id="page-wrapper">

	<div class="<?php echo esc_attr( $container ); ?>" id="content">

		<div class="row">

			<?php get_sidebar( 'left' ); ?>

			<div
			class="<?php if ( is_active_sidebar( 'left-sidebar' ) ) : ?>col-md-8<?php else : ?>col-md-12<?php endif; ?> content-area"
			id="primary">

			<main class="site-main" id="main" role="main">

				<form id="video_form" method="post" action="">

					<?php
					if($is_new_video === '1') {
						echo '<h4>Submit your Video!</h4>';
					} else if($is_new_video === '0') {
						echo '<h4>Edit your Video!</h4>';
					}
					?>

					<!-- TODO: RACH: ADD A STYLE FOR SUCCESS -->
					<?php echo $response; ?>

					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis, quam a ultrices iaculis, lorem lectus aliquet sem, et lobortis elit nunc eu nisi. Etiam luctus tellus dui, sit amet faucibus lacus dapibus eu. In fringilla, sem ut mattis sodales, quam est ultrices ipsum, nec efficitur velit augue nec felis.</p>

					<label for="title">Title</label>
					<input type="text" name="video_title" id="video_title" value="<?=$title?>" required>
					<label for="desc">Description (500 characters limit)</label>
					<textarea name="video_desc" id="video_desc" rows="5" cols="70" maxlength="500"><?=$desc?></textarea>
					<br>
					<!-- <div class="col-lg-3">
						<label for="thumbnail">Thumbnail</label>
						<img src="<?=$thumbnail?>" name="video_thumbnail" id="video_thumbnail" height="150px">
					</div>
					<div class="col-lg-9"> -->
						<label for="youtube">YouTube URL</label>
						<input type="text" name="video_youtube" id="video_youtube" value="<?=$youtube?>" pattern="https?://.+" required>
						<!-- </div> -->
						<input type="hidden" name="video_is_new_video" value="<?=$is_new_video?>">

						<input type="submit" name="video_submit" id="video_submit" value="Submit">
					</form>

				</main><!-- #main -->

			</div><!-- #primary -->

		</div><!-- .row -->

	</div><!-- Container end -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
