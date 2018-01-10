<?php
/**
 * Template Name: Dashboard Page
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' );

global $wpdb;
$videos_table = $wpdb->prefix.'genaero_videos';
$fav_videos_table = $wpdb->prefix . 'genaero_favourite_videos';
$user_id = $_SESSION['user_id'];

//get announcement
$args = array(
	'post_type' => 'announcements',
	'posts_per_page' => 1,
	// 'date_query' => array(
	// 	array(
	// 	'column' => 'post_date_gmt', 
	// 	'before' => '1 month ago',
	// ))
);
$announcement = new WP_Query( $args );

//get total videos stats
$videos_sql = $wpdb->prepare("SELECT COUNT(id) as total_videos, SUM(favourite) as total_favs FROM $videos_table WHERE member_id = %s", $user_id);
$results = $wpdb->get_results($videos_sql);
$video_results_count = $wpdb->num_rows;
foreach($results as $result) {
	$total_videos = $result->total_videos;
	$total_favs = $result->total_favs;
}

if($video_results_count > 0) {
//get last video
	$last_video_sql = $wpdb->prepare("SELECT * FROM $videos_table WHERE member_id = %s AND create_date = (SELECT MAX(create_date) FROM $videos_table WHERE member_id = %s)", $user_id, $user_id);
	$results = $wpdb->get_results($last_video_sql);
	$lastvid_results_count = $wpdb->num_rows;
	if($lastvid_results_count > 0) {
		$title = $results[0] -> title;
		$desc = substr($results[0]->description,0,120);
		$youtube = $results[0] -> youtube;

		parse_str( parse_url( $youtube, PHP_URL_QUERY ), $my_array_of_vars );
		$youtube_id =  $my_array_of_vars['v'];

		$url_to_json = 'https://www.googleapis.com/youtube/v3/videos?key='.YOUTUBE_API_KEY.'&part=snippet&id='.$youtube_id;

		$data = file_get_contents($url_to_json);
		$json = json_decode($data);
		$thumbnail_url = $json->items[0]->snippet->thumbnails->default->url;
	}	
} 
?>

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
		<div class="<?php if ( is_active_sidebar( 'left-sidebar' ) ) : ?>col-md-8<?php else : ?>col-md-12<?php endif; ?> content-area"
			id="primary">

			<main class="site-main container dashboard_content" id="main" role="main">
				<div class="row">
					<div class="announcement col-lg-12">
						<i class="fal fa-bell"></i>
						<?php if ( $announcement -> have_posts() ) : while ( $announcement->have_posts() ) : $announcement->the_post();
						echo "<p>" . get_field('message'). "</p>";
						endwhile; endif; ?>
					</div>
				</div>

				<div class="row dashboard_user--stats">
					<div class="total_videos">
						<h1><?=$total_videos?></h1>
						<p>Videos Submitted</p>
					</div>
					<div class="total_favs">
						<h1><?=$total_favs?></h1>
						<p>Favourited Videos</p>
					</div>
				</div>
				<?php if($video_results_count > 0) { ?>
				<div class="row">
					<h3>Recent Submitted Video:</h3>
				</div>
				<div class="row recent_submitted_video">
					<div class="col-lg-5">
						<div class="row">
							<a href="<?=$youtube?>" target="_blank">
								<img src="<?=$thumbnail_url?>" alt="<?=$title?>">
							</a>
						</div>
					</div>
					<div class="col-lg-7">
						<h5><?=$title?></h5>
						<p><?=$desc?>...</p>
						<a href="<?php echo get_permalink( get_page_by_path( 'my-videos' ) ) ?>" class="arrowbtn btn--color">
							<span class="fas fa-long-arrow-alt-right icon-left"></span>
							<div class="arrowbtn-wrapper"><span>See More Videos</span></div>
						</a>
					</div>
				</div>
				<?php } else { ?>
				<div class="row recent_submitted_video">
					<div class="row">
						<h3>It looks like you haven't submitted any videos yet. Why don't you get started by clicking over here?</h3>
						<a href="<?php echo get_permalink( get_page_by_path( 'submit-a-video' ) ) ?>" class="arrowbtn btn--color">
							<span class="fas fa-long-arrow-alt-right icon-left"></span>
							<div class="arrowbtn-wrapper"><span>Submit a Video</span></div>
						</a>
					</div>
				</div>
				<?php } ?>
			</main><!-- #main -->

		</div><!-- #primary -->

	</div><!-- .row -->

</div><!-- Container end -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
