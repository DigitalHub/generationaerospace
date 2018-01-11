<?php
/**
 * Template Name: Add/Edit Video Page
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' );

global $wpdb;
$videos_table = $wpdb->prefix.'genaero_videos';
$user_id = $_SESSION['user_id'];
$username = $_SESSION['username'];

function my_contact_form_generate_response($type, $message){
	global $response;
	if($type ==='error') {
		$response = "<div class='error'>{$message}</div>";
	} else {
		$response = "<div class='success'>{$message}</div>";
	}
}

//response messages
$general_error = "<span class='error'>There seems to be a problem. Please try to submit again.</span>";
$missing_content = "<span class='error'>Please fill in all fields.</span>";
$long_desc = "<span class='error'>Your description has exceeded the 500 characters limit. Please reduce the number of characters in your description.</span>";
$success_content = "<span class='success'>Thanks for your submission. We'll notify you once your video has been reviewed and approved.</span>";

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
			$video_cpt_id = $results[0]->link_id; 
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
				$video_cpt_args = array(
					'post_title' => $title,
					'post_status' => 'pending',
					'post_type' => 'genaero_videos'
				);

				$video_cpt_id = wp_insert_post( $video_cpt_args, $wp_error);

				if($video_cpt_id) {
					$sql = $wpdb->prepare("INSERT INTO $videos_table (link_id, member_id,title,description,youtube) VALUES (%s,%s,%s,%s,%s)", array($video_cpt_id,$user_id,$title,$desc,$youtube));
					$wpdb->query($sql);

					my_contact_form_generate_response("success", $success_content);
				} else {
					my_contact_form_generate_response("error", $general_error);
				}
				
			} else if($new_video === '0') {
				$sql = $wpdb->prepare("UPDATE $videos_table SET title=%s,description=%s,youtube=%s WHERE member_id=%s", array($title,$desc,$youtube,$user_id));
				$wpdb->query($sql);

				$video_cpt_post = array(
					'ID'			=>	$video_cpt_id,
					'post_title' 	=> $title,
				);
				wp_update_post($video_cpt_post);
				my_contact_form_generate_response("success", $success_content);
			} else {
				my_contact_form_generate_response("error", $general_error);
			}
		}
	}
} ?>

<div class="wrapper" id="page-wrapper">
	<div class="HudOverlay">
		<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1316 835" style="enable-background:new 0 0 1316 835" xml:space="preserve" class="HudOverlay-fullBorder" preserveAspectRatio="none"> 
			<defs>
				<clipPath id="my-shape">
					<path d="M1294.4,37.7c0-7.3-4.9-13.3-11-13.3c-3.6-0.1-214.9-8.9-393.6-16v1.1c178.7,7.1,390,15.8,393.6,16
					c5.5,0,10.1,5.5,10.1,12.2c0.2,3.2,21.6,318.7,21.6,387.7c0,69.1-21.4,389-21.6,392.3c0,6.7-4.5,12.2-10.1,12.2H31.5
					c-5.5,0-10.1-5.5-10.1-12.2c-0.1-1.7-14.6-172.1-20-308.6c6.9-9.8,13.8-21,13.9-21.1l0.1-0.1l0.8-120.3l-0.1-0.2
					C16.1,367.2,7.9,356,1,347.2C5.9,210,21.3,39.4,21.4,37.7c0-6.7,4.5-12.2,10.1-12.2c3.6-0.2,219.7-9.4,394.7-16.7V7.7
					C251.2,14.9,35,24.2,31.5,24.4c-6.1,0-11,6-11,13.2C20.3,39.3,4.9,210.1,0,347.4l0,0.2l0.1,0.2c6.6,8.3,14.1,18.7,15.2,20.1
					l-0.8,119.5c-0.9,1.4-7.4,11.9-13.9,21.1l-0.1,0.2l0,0.2c5.4,136.5,19.8,307.1,20,308.8c0,7.3,4.9,13.3,11,13.3h1251.9
					c6.1,0,11-6,11-13.2c0.2-3.2,21.6-323.2,21.6-392.3C1316,356.3,1294.6,40.8,1294.4,37.7z">
				</path>
			</clipPath>
			<filter id="blurlayer" width="110%" height="120%">
				<feGaussianBlur  stdDeviation="4" result="blur"/>
			</filter>
		</defs>
		<g> 
			<path class="st1" d="M1294.4,37.7c0-7.3-4.9-13.3-11-13.3c-3.6-0.1-214.9-8.9-393.6-16v1.1c178.7,7.1,390,15.8,393.6,16
			c5.5,0,10.1,5.5,10.1,12.2c0.2,3.2,21.6,318.7,21.6,387.7c0,69.1-21.4,389-21.6,392.3c0,6.7-4.5,12.2-10.1,12.2H31.5
			c-5.5,0-10.1-5.5-10.1-12.2c-0.1-1.7-14.6-172.1-20-308.6c6.9-9.8,13.8-21,13.9-21.1l0.1-0.1l0.8-120.3l-0.1-0.2
			C16.1,367.2,7.9,356,1,347.2C5.9,210,21.3,39.4,21.4,37.7c0-6.7,4.5-12.2,10.1-12.2c3.6-0.2,219.7-9.4,394.7-16.7V7.7
			C251.2,14.9,35,24.2,31.5,24.4c-6.1,0-11,6-11,13.2C20.3,39.3,4.9,210.1,0,347.4l0,0.2l0.1,0.2c6.6,8.3,14.1,18.7,15.2,20.1
			l-0.8,119.5c-0.9,1.4-7.4,11.9-13.9,21.1l-0.1,0.2l0,0.2c5.4,136.5,19.8,307.1,20,308.8c0,7.3,4.9,13.3,11,13.3h1251.9
			c6.1,0,11-6,11-13.2c0.2-3.2,21.6-323.2,21.6-392.3C1316,356.3,1294.6,40.8,1294.4,37.7z"/>
		</g> 
		<polygon class="polygon" points="519.3,830.5 537.1,822.6 779.5,822.6 796.7,830.5 779.8,835 537.4,835  "/>
	</svg>
</div>
<div class="<?php echo esc_attr( $container ); ?>" id="content">
	<div class="row dashboard-row">
		<?php get_sidebar( 'left' ); ?>

		<div class="<?php if ( is_active_sidebar( 'left-sidebar' ) ) : ?>col-md-8<?php else : ?>col-md-12<?php endif; ?> content-area" id="primary">
			<main class="site-main dashboard_content" id="main" role="main">
				<form id="video_form" method="post" action="">
					<div class="dashboard_content--title">
						<?php if($is_new_video === '1') {
							echo '<h4>Submit your Video!</h4>';
						} else if($is_new_video === '0') {
							echo '<h4>Edit your Video!</h4>';
						} ?>
					</div><div class="clear"></div>
					<?php echo $response; ?>

					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis, quam a ultrices iaculis, lorem lectus aliquet sem, et lobortis elit nunc eu nisi. Etiam luctus tellus dui, sit amet faucibus lacus dapibus eu. In fringilla, sem ut mattis sodales, quam est ultrices ipsum, nec efficitur velit augue nec felis.</p>

					<label for="title">Title</label>
					<input type="text" name="video_title" id="video_title" value="<?=$title?>" required>
					<div class="clear"></div>
					<label for="desc">Description (500 characters limit)</label>
					<textarea name="video_desc" id="video_desc" rows="5" cols="70" maxlength="500"><?=$desc?></textarea>
					<div class="clear"></div>
					<label for="youtube">YouTube URL</label>
					<input type="text" name="video_youtube" id="video_youtube" value="<?=$youtube?>" pattern="https?://.+" required>
					<input type="hidden" name="video_is_new_video" value="<?=$is_new_video?>">
					<input type="hidden" name="video_cpt_id" value="<?=$video_cpt_id?>">

					<div class="clear"></div>
					<div class="arrowbtn btn--color">
						<span class="fas fa-long-arrow-alt-right icon-left"></span>	
						<div class="arrowbtn-wrapper">
							<input type="submit" name="video_submit" id="video_submit" value="Submit">
						</div>	
					</div>
					
				</form>

			</main><!-- #main -->

		</div><!-- #primary -->

	</div><!-- .row -->

</div><!-- Container end -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
