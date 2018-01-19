<?php
/**
 * The template for displaying single genaero_videos posts.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); 

global $loggedin;
$user_id = $_SESSION['user_id'];

global $wpdb;
$members_table = $wpdb->prefix.'genaero_members';
$videos_table = $wpdb->prefix.'genaero_videos';

$sql = $wpdb->prepare("SELECT t1.id as video_id, t1.title as video_title, t1.description as video_desc, t1.youtube as video_link, t1.favourite, t1.create_date as posted_date, t2.fullname as posted_by, t2.photo as profile_pic FROM $videos_table t1 INNER JOIN $members_table t2 ON t1.member_id = t2.id WHERE t1.link_id = '%s'", get_the_ID());

$results = $wpdb->get_results($sql);
if($wpdb->num_rows > 0) { 
	foreach($results as $result) {
		$video_id = $result->video_id;
		$title = $result->video_title;
		$desc = stripslashes(stripslashes($result->video_desc));
		$youtube = $result->video_link;
		$favourite = $result->favourite;
		$posted_by = $result->posted_by;
		$profile_pic = $result->profile_pic;
		if($profile_pic === '' || $profile_pic === NULL) {
			$profile_pic = get_template_directory_uri().'/img/default-photo.png';
		}

		$posted_date = date_create($result->posted_date);
		$posted_date = date_format($posted_date, 'd M Y');
	}
}

$embed_code = youtubeEmbedFromUrl($youtube, 720, 540);

//featured videos loop
$featured_videos_sql = $wpdb->prepare("SELECT t1.id as video_id, t1.link_id, t1.title as video_title, t1.youtube as video_link, t1.favourite, t1.create_date as posted_date, t2.fullname as posted_by, t2.photo as profile_pic, t3.meta_value as featured FROM $videos_table t1 INNER JOIN $members_table t2 ON t1.member_id = t2.id INNER JOIN $wpdb->postmeta t3 ON t3.post_id = t1.link_id WHERE t3.meta_key = 'featured' AND t3.meta_value = '1' AND NOT t1.id = '%s' ORDER BY t1.create_date DESC LIMIT 3", $video_id);

$featured_videos_results = $wpdb->get_results($featured_videos_sql);
$featured_videos_count = $wpdb->num_rows;
?>

<section class="singlepost--hud content--overflow">
	<?php $bgimg = get_template_directory_uri() . "/img/Dashboard_Bg.jpg";
	include(locate_template('loop-templates/single-hubbase.php')); ?>

	<div class="singlepost--content content--overflow">
		<div class="container">
			<div class="col-xl-10 offset-xl-1 col-lg-10 offset-xl-1 col-md-10 offset-md-1 col-sm-12 col-xs-12">
				<div class="row">
					<div class="content--overflow_wrapper"><?php echo $embed_code; ?></div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="single_main">
	<div class="wrapper" id="single-wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="col-xl-10 offset-xl-1 col-lg-10 offset-lg-1 col-md-12 col-sm-12 col-xs-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<div class="row">
							<div class="col-xl-2 col-lg-2 col-md-2 col-sm- col-xs- entry-share"><div class="row"><div class="addthis_inline_share_toolbox"></div></div></div>
							<div class="col-xl-10 col-lg-10 col-md-10 col-sm-12 col-xs-12">
								<div class="entry-content">
									<h2><?=$title?></h2>
									<div class="meta-date_fav">
										<div class="alignleft">
											<div class="meta-profile_pic">
												<img src="<?=$profile_pic?>" class="profile_photo" alt="<?=$fullname?>'s Profile Photo">
											</div>
										</div>
										<div class="alignleft">
											<div class="meta-posted">Posted by <span class="meta-student"><?=$posted_by?></span></div>
											<div class="meta-date"><i class="fas fa-clock"></i><?=$posted_date?></div>
											<!-- <div class="meta-comment"><i class="fas fa-comment"></i>200</div> -->
											<div class="meta-fav"><i class="fas fa-heart"></i><?=$favourite?></div>
										</div>
									</div>
									<?=$desc?>
								</div>
								<div class="entry-comments">
									<h4>Add Comment</h4>
									<hr style="border-top: 1px solid #00000047;">
									<?php comments_template('', true); ?>
								</div>
							</div>
						</div>
					</main><!-- #main -->
				</div><!-- #primary -->
			</div><!-- .row end -->
			<hr>
			<h3>More Videos For You_</h3>
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
			} ?>
		</div><!-- Container end -->
	</div><!-- Wrapper end -->
</section>
<?php get_footer(); ?>
