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
	// 'posts_per_page' => 1,
	// 'date_query' => array(
	// 	array(
	// 	'column' => 'post_date_gmt', 
	// 	'before' => '1 month ago',
	// ))
);
$announcement = new WP_Query( $args );

//get total number of submitted videos, regardless of approval
$videos_sql = $wpdb->prepare("SELECT * FROM $videos_table WHERE member_id = %s", $user_id);
$results = $wpdb->get_results($videos_sql);
$video_results_count = $wpdb->num_rows;

//get favourited videos count
$fav_sql = $wpdb->prepare("SELECT t2.member_id as member_id, t1.id as fav_id,t1.member_id as fav_by,t1.video_id as video_id,t2.title as video_title,t2.description as video_desc,t2.youtube as video_link FROM $fav_videos_table t1 INNER JOIN $videos_table t2 ON t1.video_id = t2.id WHERE t2.member_id = %s", $user_id);
$results = $wpdb->get_results($fav_sql);
$fav_results_count = $wpdb->num_rows;

//get last approved video
$last_video_sql = $wpdb->prepare("SELECT * FROM $videos_table WHERE member_id = %s AND approved = '1' AND create_date = (SELECT MAX(create_date) FROM $videos_table WHERE member_id = %s AND approved = '1')", $user_id, $user_id);
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
?>

<div class="wrapper" id="page-wrapper">

	<div class="<?php echo esc_attr( $container ); ?>" id="content">

		<div class="row">

			<?php get_sidebar( 'left' ); ?>

			<div
			class="<?php if ( is_active_sidebar( 'left-sidebar' ) ) : ?>col-md-8<?php else : ?>col-md-12<?php endif; ?> content-area"
			id="primary">

			<main class="site-main container" id="main" role="main">
				<div class="row">
					<div class="announcement col-lg-12">
						<?php
						if ( $announcement -> have_posts() ) :
							while ( $announcement->have_posts() ) : $announcement->the_post();
								echo get_field('message');
							endwhile;
						endif;
						?>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-6">
						<h1><?=$video_results_count?></h1>
						<p>Videos Submitted</p>
					</div>
					<div class="col-lg-6">
						<h1><?=$fav_results_count?></h1>
						<p>Favourited Videos</p>
					</div>
				</div>
				<hr>
				<div class="row">
					<h3>Most Recent Approved Video</h3>
				</div>
				<div class="row">
					<div class="col-lg-3">
						<a href="<?=$youtube?>" target="_blank">
							<img src="<?=$thumbnail_url?>" alt="<?=$title?>">
						</a>
					</div>
					<div class="col-lg-9">
						<h5><?=$title?></h5>
						<span><?=$desc?>...</span>
						<a href="<?php echo get_permalink( get_page_by_path( 'my-videos' ) ) ?>"><button>See More Videos</button></a>
					</div>
				</div>
			</main><!-- #main -->

		</div><!-- #primary -->

	</div><!-- .row -->

</div><!-- Container end -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
