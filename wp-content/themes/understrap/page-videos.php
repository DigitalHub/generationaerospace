<?php
/**
 * Template Name: Page Videos
 *
 * Template for displaying a page without sidebar even if a sidebar widget is published.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); 

global $loggedin;

global $wpdb;
$members_table = $wpdb->prefix.'genaero_members';
$videos_table = $wpdb->prefix.'genaero_videos';
$fav_videos_table = $wpdb->prefix . 'genaero_favourite_videos';

//featured of the month loop
$featured_month = get_field('monthly_feature');
if($featured_month) :
	$post = $featured_month;
	setup_postdata( $post ); 
	$post_id = get_the_ID();
	wp_reset_postdata();
endif;
$featured_month_sql = $wpdb->prepare("SELECT t1.title as video_title, t1.description as video_desc, t1.youtube as video_link, t1.favourite, t3.post_date as posted_date, t2.fullname as posted_by, t2.photo as profile_pic FROM $videos_table t1 INNER JOIN $members_table t2 ON t1.member_id = t2.id INNER JOIN $wpdb->posts t3 ON t1.link_id = t3.id WHERE t1.link_id = '%s'", $post_id);

$featured_month_results = $wpdb->get_results($featured_month_sql);
$featured_month_count = $wpdb->num_rows;

if($featured_month_count > 0) {
	foreach($featured_month_results as $video) {
		$posted_by = $video->posted_by;
		$video_id = $video->video_id;
		$title = $video->video_title;
		$desc = substr(stripslashes(stripslashes($video->video_desc)), 0, 180);
		$favourite = $video->favourite;

		$posted_date = date_create($video->posted_date);
		$posted_date = date_format($posted_date, 'd M Y');

		$permalink = get_permalink($post_id);

		$profile_pic = $video->profile_pic;
		if($profile_pic === '' || $profile_pic === NULL) {
			$profile_pic = get_template_directory_uri().'/img/default-photo.png';
		}

		$youtube = $video->video_link;
		parse_str( parse_url( $youtube, PHP_URL_QUERY ), $my_array_of_vars );
		$youtube_id =  $my_array_of_vars['v'];

		$url_to_json = 'https://www.googleapis.com/youtube/v3/videos?key='.YOUTUBE_API_KEY.'&part=snippet&id='.$youtube_id;

		$data = file_get_contents($url_to_json);
		$json = json_decode($data);
		$thumbnail_url = $json->items[0]->snippet->thumbnails->standard->url;
	}
}

//featured videos loop
//'best' code i ever wrote, 4 inner joined tables, you're welcome future programmer
$featured_videos_sql = "SELECT t1.id as video_id, t1.link_id, t1.title as video_title, t1.youtube as video_link, t1.favourite, t3.post_date as posted_date, t2.fullname as posted_by, t2.photo as profile_pic, t3.post_status, t4.meta_value as featured FROM $videos_table t1 INNER JOIN $members_table t2 ON t1.member_id = t2.id INNER JOIN $wpdb->posts t3 ON t1.link_id = t3.id INNER JOIN $wpdb->postmeta t4 ON t4.post_id = t1.link_id WHERE t3.post_status = 'publish' AND t4.meta_key = 'featured' AND t4.meta_value = '1' ORDER BY t3.post_date DESC";

$featured_videos_results = $wpdb->get_results($featured_videos_sql);
$featured_videos_count = $wpdb->num_rows;

//all (approved) videos loop
$all_videos_sql = "SELECT t1.id as video_id, t1.link_id, t1.title as video_title, t1.youtube as video_link, t1.favourite, t3.post_date as posted_date, t2.fullname as posted_by, t2.photo as profile_pic, t3.post_status FROM $videos_table t1 INNER JOIN $members_table t2 ON t1.member_id = t2.id INNER JOIN $wpdb->posts t3 ON t1.link_id = t3.id WHERE t3.post_status = 'publish' ORDER BY t3.post_date DESC";

$all_videos_results = $wpdb->get_results($all_videos_sql);
$all_videos_count = $wpdb->num_rows;
?>

<section class="subpage--hud" style="background-image: url(<?php echo get_template_directory_uri(); ?>/img/bg1.jpg ); ">
	<div class="HudOverlay">
		<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1316 835" style="enable-background:new 0 0 1316 835" xml:space="preserve" class="HudOverlay-fullBorder" preserveAspectRatio="none"> 
			<defs>
				<mask id="mask">
					<rect x="0" y="0" width="100%" height="100%" fill="white"></rect> 
					<rect class="title-mask" stroke="none" fill="black" x="0" y="0" width="380" height="45" transform="scale(1,0.2) translate(470,-28)"></rect>
				</mask> 
				<filter id="blurlayer" width="110%" height="120%">
					<feGaussianBlur stdDeviation="4" result="blur"/>
				</filter>
			</defs>
			<g mask="url(#mask)"> 
				<path d="M1287.9,818.3
				c5.5,0,9.5-4.5,10-10
				c9.7-113.4,14.6-217.5,16.7-310.1l-13.6-19.9
				c0.8-42.6,0.9-82.7,0.5-120.1
				l13.8-19.8
				c-2.6-195.5-17.4-310-17.4-310
				c0-5.5-4.5-10-10-10
				c0,0-630-40-1260,0
				c-5.5,0.3-10,4.5-10,10
				c0,0-14.8,114.5-17.4,309.7
				l13.4,20.3
				c-1,42.6-1.2,82.7-0.8,120L1.2,498.2
				c2,92.6,7,196.7,16.7,310.1
				c0.5,5.5,4.5,9.7,10,10"></path> 

				<path filter="url(#blurlayer)" d="M1287.9,818.3
				c5.5,0,9.5-4.5,10-10
				c9.7-113.4,14.6-217.5,16.7-310.1l-13.6-19.9
				c0.8-42.6,0.9-82.7,0.5-120.1
				l13.8-19.8
				c-2.6-195.5-17.4-310-17.4-310
				c0-5.5-4.5-10-10-10
				c0,0-630-40-1260,0
				c-5.5,0.3-10,4.5-10,10
				c0,0-14.8,114.5-17.4,309.7
				l13.4,20.3
				c-1,42.6-1.2,82.7-0.8,120L1.2,498.2
				c2,92.6,7,196.7,16.7,310.1
				c0.5,5.5,4.5,9.7,10,10"></path> 
			</g> 
			<line class="HudBorder-line HudBorder-line--left" x1="27" y1="818" x2="640" y2="814"></line>
			<line class="HudBorder-line HudBorder-line--right" x1="641" y1="814" x2="1287" y2="818"></line>
			<!-- <polygon points="144 247,172 263,572 267,585 243,568 223,168 223"></polygon> -->
		</svg>
	</div> 
	<div class="subpage--content">
		<div class="container">
			<h1><?php the_title(); ?></h1>
			<p class="highlight">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique praesentium quisquam dignissimos, magni ea accusamus provident illo corporis, non cumque.</p>
			<div class="row">
				<div class="col-xl-8 ">
					<div class="search-form">
						<!-- TODO: STEF DO SEARCH -->
						<input type="text" />
						<button type="submit"><i class="fal fa-search"></i></button>
					</div>
				</div>
				<div class="col-xl-4">
					<h3>Submit your videos here:</h3>
					<button class="arrowbtn btn--color">
						<span class="fas fa-long-arrow-alt-right icon-left"></span>
						<?php if($loggedin === '0') {?>
						<div class="arrowbtn-wrapper"><a href="<?php echo get_permalink( get_page_by_path( 'login' ) ) ?>"><span>Sign up or Register Now</span></a></div>
						<?php } elseif($loggedin === '1') {?>
						<div class="arrowbtn-wrapper"><a href="<?php echo get_permalink( get_page_by_path( 'submit-a-video' ) ) ?>"><span>Submit a Video</span></a></div>
						<?php } ?>
					</button>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="col-xl-8 col-xl-8 col-md-6 col-sm-12 col-xs-12 featured_experiment--card">
					<div class="post-thumbnail">
						<!-- TODO: RACHELLE TO ADD PLAY ICON -->
						<a data-fancybox href="<?=$youtube?>"><img src="<?=$thumbnail_url?>" /></a>
					</div>
					<div class="experiment--fav_link"><a href="#heart"><i class="fas fa-heart"></i></a></div>
				</div>
				<div class="col-xl-4 col-xl-4 col-md-6 col-sm-12 col-xs-12">
					<h2>Featured Video of the Month_</h2>
					<h3><?=$title?></h3>
					<p><?=$desc?>...</p>

					<div class="meta-date_fav">
						<div class="alignleft">
							<div class="meta-profile_pic"><?=$profile_pic?></div>
						</div>
						<div class="alignleft">
							<div class="meta-posted">Posted by <span class="meta-student"><?=$posted_by?></span></div>
							<div class="meta-date"><i class="fas fa-clock"></i><?=$posted_date?></div>
							<!-- TODO: STEF TO ADD NUMBER OF COMMENTS -->
							<div class="meta-comment"><i class="fas fa-comment"></i>200</div>
							<div class="meta-fav"><i class="fas fa-heart"></i><?=$favourite?></div>
						</div>
						<button class="arrowbtn btn--color">
							<span class="fas fa-long-arrow-alt-right icon-left"></span>
							<div class="arrowbtn-wrapper"><a href="<?=$permalink?>"><span>More Details</span></a></div>
						</button>
					</div>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xl-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<h3>Featured_</h3>
						<?php
						if($featured_videos_count > 0) {
							$count = 0;
							foreach($featured_videos_results as $video) {
								if($count % 3 == 0) :
									echo $count > 0 ? '</div>' : '';
									echo '<div class="row">';
								endif;
								global $video;
								get_template_part( 'loop-templates/tile', 'video' );
								$count++;
							}

							if($count % 3 !== 0) {
								echo '</div>';
							}
						}
						?>

						<hr>

						<h3>All Videos_</h3>
						<?php
						if($all_videos_count > 0) {
							$count = 0;
							foreach($all_videos_results as $video) {
								if($count % 3 == 0) :
									echo $count > 0 ? '</div>' : '';
									echo '<div class="row">';
								endif;
								global $video;
								get_template_part( 'loop-templates/tile', 'video' );
								$count++;
							}

							if($count % 3 !== 0) {
								echo '</div>';
							}
						}
						?>
					</main><!-- #main -->
				</div><!-- #primary -->
			</div><!-- .row end -->
		</div><!-- Container end -->
	</div><!-- Wrapper end --></section>
	<?php get_footer(); ?>
