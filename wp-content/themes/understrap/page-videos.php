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
$username = $_SESSION['username'];
$user_id = $_SESSION['user_id'];

global $wpdb;
$members_table = $wpdb->prefix.'genaero_members';
$videos_table = $wpdb->prefix.'genaero_videos';
$fav_videos_table = $wpdb->prefix . 'genaero_favourite_videos';

//get favourites if loggedin
if($loggedin == '1') {
	$favs_sql = $wpdb->prepare("SELECT video_id FROM $fav_videos_table WHERE member_id = '%s'", $user_id);
	$favs_results = $wpdb->get_results($favs_sql);
	$favs_count = $wpdb->num_rows;
	$fav_ids = array();
	if($favs_count > 0) {
		foreach($favs_results as $result) {
			array_push($fav_ids,$result->video_id);
		}
		echo '<script>fav_ids = '.json_encode($fav_ids).'</script>';
	}
}

//featured of the month loop
$featured_month = get_field('monthly_feature');
if($featured_month) :
	$post = $featured_month;
	setup_postdata( $post ); 
	$post_id = get_the_ID();
	wp_reset_postdata();
endif;
$featured_month_sql = $wpdb->prepare("SELECT t1.id as video_id, t1.title as video_title, t1.description as video_desc, t1.youtube as video_link, t1.favourite, t3.post_date as posted_date, t2.fullname as posted_by, t2.photo as profile_pic FROM $videos_table t1 INNER JOIN $members_table t2 ON t1.member_id = t2.id INNER JOIN $wpdb->posts t3 ON t1.link_id = t3.id WHERE t1.link_id = '%s'", $post_id);

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
$featured_videos_sql = "SELECT t1.id as video_id, t1.link_id, t1.title as video_title, t1.youtube as video_link, t1.favourite, t1.create_date as posted_date, t2.fullname as posted_by, t2.photo as profile_pic, t3.meta_value as featured FROM $videos_table t1 INNER JOIN $members_table t2 ON t1.member_id = t2.id INNER JOIN $wpdb->postmeta t3 ON t3.post_id = t1.link_id WHERE t3.meta_key = 'featured' AND t3.meta_value = '1' ORDER BY t1.create_date DESC LIMIT 3";

$featured_videos_results = $wpdb->get_results($featured_videos_sql);
$featured_videos_count = $wpdb->num_rows;

//all (approved) videos loop
$all_videos_sql = "SELECT t1.id as video_id, t1.link_id, t1.title as video_title, t1.youtube as video_link, t1.favourite, t1.create_date as posted_date, t2.fullname as posted_by, t2.photo as profile_pic FROM $videos_table t1 INNER JOIN $members_table t2 ON t1.member_id = t2.id INNER JOIN $wpdb->posts t3 ON t1.link_id = t3.id WHERE t3.post_status = 'publish' ORDER BY t1.create_date DESC";

$all_videos_results = $wpdb->get_results($all_videos_sql);
$all_videos_count = $wpdb->num_rows;

$cpt = 'genaero_videos';
$posts_per_page = 3;
$template = 'video';
?>

<section class="subpage--hud">
	<?php $bgimg = "http://localhost/generationaerospace/wp-content/themes/understrap/img/Dashboard_Bg.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="subpage--content">
		<div class="container">
			<h1><?php the_title(); ?></h1>
			<p class="highlight">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique praesentium quisquam dignissimos, magni ea accusamus provident illo corporis, non cumque.</p>
			<div class="row">
				<div class="col-xl-8 ">
					<h3 class="text-left">Search for Videos</h3>
					<div class="search-form">
						<input type="text" id="video_search" name="video_search"/>
						<button type="submit" id="video_submit" name="video_submit">
							<i class="fal fa-search"></i>
						</button>
					</div>
				</div>
				<div class="col-xl-4">
					<div class="submit_register--btn">
						<h3 class="text-left">Submit your videos here:</h3>
						<?php if($loggedin === '0') {?>
						<a href="<?php echo get_permalink( get_page_by_path( 'login' ) ) ?>" class="arrowbtn btn--color">
							<span class="fas fa-long-arrow-alt-right icon-left"></span><div class="arrowbtn-wrapper"><span>Sign up or Register Now</span></div>
						</a>
						<?php } elseif($loggedin === '1') {?>
						<a href="<?php echo get_permalink( get_page_by_path( 'submit-a-video' ) ) ?>" class="arrowbtn btn--color">
							<span class="fas fa-long-arrow-alt-right icon-left"></span><div class="arrowbtn-wrapper"><span>Submit a Video</span></div>
						</a>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper">
		<div class="video-main <?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="month_experiment--card col-xl-8 col-xl-8 col-md-6 col-sm-12 col-xs-12">
					<a data-fancybox href="<?=$youtube?>">
						<div class="post-thumbnail">
							<i class="fas fa-play"></i>
							<img src="<?=$thumbnail_url?>" />
						</div>
					</a>
					<div class="month_experiment--link" data-video-id="<?=$video_id?>"><i class="fas fa-heart"></i></div>
				</div>

				<div class="month_experiment--content col-xl-4 col-xl-4 col-md-6 col-sm-12 col-xs-12">
					<h2>Featured Video of the Month_</h2>
					<h3><?=$title?></h3>
					<p><?=$desc?>...</p><br>
					<div class="meta-date_fav">
						<div class="alignleft">
							<div class="meta-profile_pic"><img src="<?=$profile_pic?>" class="profile_photo" alt="<?=$fullname?>'s Profile Photo"></div>
						</div>
						<div class="alignleft">
							<!-- TODO: STEF TO ADD LINK TO STUDENT PROFILE -->
							<div class="meta-posted">Posted by <span class="meta-student"><?=$posted_by?></span></div>
							<div class="meta-date"><i class="fas fa-clock"></i><?=$posted_date?></div>
							<!-- <div class="meta-comment"><i class="fas fa-comment"></i>200</div> -->
							<div class="meta-fav"><i class="fas fa-heart"></i><?=$favourite?></div>
						</div>
						<div class="clear"></div><br>
						<a href="<?=$permalink?>" class="arrowbtn btn--default">
							<span class="fas fa-long-arrow-alt-right icon-left"></span><div class="arrowbtn-wrapper"><span>More Details</span></div>
						</a>
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
					echo "</div>"; ?>
					<hr>
					<h3>All Videos_</h3>
					<?php if($all_videos_count > 0) {
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
					} ?>
					<!-- TODO: STEF TO ADD LOAD MORE -->
					<!-- <a href="#" class="defaultbtn btn--default aligncenter">
						<div class="defaultbtn-wrapper"><span>See More Videos</span></div>
					</a> -->
				</main><!-- #main -->
			</div><!-- #primary -->
		</div><!-- .row end -->
	</div><!-- .container end -->
</div><!-- .wrapper end -->
</section>

<section class="juicer-section">
	<div class="juicer-wrapper"></div>
	<div class="juicer-content container">
		<h2 class="text-center">#GENAERO</h2>
		<p class="highlight text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis nemo modi fuga fugit cumque voluptas cum animi dolore accusamus.</p>
		<ul class="juicer-feed" data-feed-id="harihasanah" data-per="11" data-columns="5"></ul>
	</div>
</section>
<link href="//assets.juicer.io/embed.css" media="all" rel="stylesheet" type="text/css" />
<script src="//assets.juicer.io/embed.js" type="text/javascript"></script>
<?php get_footer(); ?>
