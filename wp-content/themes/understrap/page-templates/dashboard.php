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
$videos_sql = $wpdb->prepare("SELECT COUNT(id) as total_videos, COALESCE(SUM(favourite),0) as total_favs FROM $videos_table WHERE member_id = %s", $user_id);
$results = $wpdb->get_results($videos_sql);
$video_results_count = $wpdb->num_rows;
foreach($results as $result) {
	$total_videos = $result->total_videos;
	$total_favs = $result->total_favs;
}

if($total_videos > 0) {
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

		$thumbnail_url = 'http://img.youtube.com/vi/'.$youtube_id.'/mqdefault.jpg';
	}	
} 
?>

<div class="wrapper" id="page-wrapper">
	<?php $bgimg = get_template_directory_uri() . "/img/img-header_findaVideo.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="<?php echo esc_attr( $container ); ?>" id="content">

		<div class="row dashboard-row">
			<?php get_sidebar( 'left' ); ?>
			<div class="<?php if ( is_active_sidebar( 'left-sidebar' ) ) : ?>col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12<?php else : ?>col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12<?php endif; ?> content-area" id="primary">

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
					<?php if($total_videos > 0) { ?>
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
							<div class="col-lg-12">
								<p>It looks like you haven't submitted any videos yet. Why don't you get started by clicking the button below?</p>
							</div>
							<div class="offset-lg-3 col-lg-6">
								<a href="<?php echo get_permalink( get_page_by_path( 'submit-a-video' ) ) ?>" class="arrowbtn btn--color">
									<span class="fas fa-long-arrow-alt-right icon-left"></span>
									<div class="arrowbtn-wrapper"><span>Submit a Video</span></div>
								</a>
							</div>
						</div>
					</div>
					<?php } ?>
				</main><!-- #main -->

			</div><!-- #primary -->

		</div><!-- .row -->

	</div><!-- Container end -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
