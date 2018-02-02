<?php
/**
 * Template Name: User Profile Page

 * @package understrap
 */

global $wpdb;
$members_table = $wpdb->prefix.'genaero_members';
$videos_table = $wpdb->prefix.'genaero_videos';
$fav_videos_table = $wpdb->prefix . 'genaero_favourite_videos';

if($_GET['user']) {
	$username = $_GET['user'];
} else {
 	//redirect to homepage
	wp_redirect('home', 301);
}

//get member's information
$members_sql = $wpdb->prepare("SELECT * FROM $members_table WHERE username = %s", $username);
$members_results = $wpdb->get_results($members_sql);
if($wpdb->num_rows > 0) {
	foreach($members_results as $result) {
		$user_id = $result->id;
		$fullname = $result->fullname;
		$photo = $result->photo;

		if($fullname === '' || $fullname === NULL) {
			$name = $username;
		} else {
			$name = $fullname;
		}

		if($photo === '' || $photo === NULL) {
			$photo = get_template_directory_uri().'/img/default-photo.png';
		}
	}
}

//get total videos stats
$stats_sql = $wpdb->prepare("SELECT COUNT(t1.id) as total_videos, COALESCE(SUM(t1.favourite),0) as total_favs FROM $videos_table t1 INNER JOIN $wpdb->posts t2 ON t1.link_id = t2.id WHERE t1.member_id = %s AND t2.post_status = 'publish'", $user_id);
$stats_results = $wpdb->get_results($stats_sql);
$stats_results_count = $wpdb->num_rows;
foreach($stats_results as $result) {
	$total_videos = $result->total_videos;
	$total_favs = $result->total_favs;
}

$all_videos_sql = $wpdb->prepare("SELECT t1.id as video_id, t1.link_id, t1.title as video_title, t1.youtube as video_link, t1.favourite, t1.create_date as posted_date, t2.username as posted_by_username, t2.fullname as posted_by, t2.photo as profile_pic, t2.is_fb_user as is_fb_user FROM $videos_table t1 INNER JOIN $members_table t2 ON t1.member_id = t2.id INNER JOIN $wpdb->posts t3 ON t1.link_id = t3.id WHERE t1.member_id = %s AND t3.post_status = 'publish' ORDER BY t1.create_date",$user_id);

$all_videos_results = $wpdb->get_results($all_videos_sql);
$all_videos_count = $wpdb->num_rows;

get_header();
$container = get_theme_mod( 'understrap_container_type' ); 
?>

<section class="subpage--hud">
	<?php $bgimg = get_template_directory_uri() . "/img/img-header_The-vault.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="subpage--content">
		<div class="container">
			<div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-md-10 offset-md-1 col-sm-12 col-xs-12">
				<div class="profil_pic">
					<img src="<?=$photo?>" id="profile_photo" alt="<?=$fullname?>'s Profile Photo" width="80px" height="100px">
				</div>
				<h1><?=$name?>'s Profile</h1>
				<div class="text-center highlight">
					<div class="row">
						<div class="total_videos col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<h2><?=$total_videos?></h2>
							<p>Videos Uploaded</p>
						</div>
						<div class="total_favs col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<h2><?=$total_favs?></h2>
							<p>Favourited Videos</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<section class="all-videos-section">
							<h4><?=$name?>'s Videos_</h4>
							<div class="row video-row">
								<?php if($all_videos_count > 0) {
									foreach($all_videos_results as $video) {
										include(locate_template('loop-templates/tile-video.php'));
									}
								} ?>
							</div>
							<img class="ajax-loading" id="ajax-loading1" src="<?php echo get_template_directory_uri();?>/img/ajax-loader.gif" style="display:none">
						</section>
						<img class="ajax-loading" id="ajax-loading1" src="<?php echo get_template_directory_uri();?>/img/ajax-loader.gif" style="display:none">
					</main><!-- #main -->
				</div><!-- #primary -->
			</div><!-- .row end -->
		</div><!-- Container end -->
	</div><!-- Wrapper end -->
</section>
<?php get_footer(); ?>
