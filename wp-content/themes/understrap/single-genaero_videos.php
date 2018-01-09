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
			<div class="offset-xl-1 offset-lg-1 offset-md-1 col-xl-10 col-lg-10 col-md-10 col-sm-12 col-xs-12">
				<?php echo $embed_code; ?>
			</div>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper" id="single-wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="offset-xl-1 offset-lg-1 offset-md-1 col-xl-2 col-lg-2 col-md-2">
					sharing
				</div>
				<div class="col-xl-8 col-lg-8 col-md-8 content-area" id="primary">
					<main class="site-main" id="main" role="main">
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
								<!-- TODO: STEF TO ADD NUMBER OF COMMENTS -->
								<div class="meta-comment"><i class="fas fa-comment"></i>200</div>
								<div class="meta-fav"><i class="fas fa-heart"></i><?=$favourite?></div>
							</div>
						</div>
					</main><!-- #main -->
				</div><!-- #primary -->
			</div><!-- .row end -->
		</div><!-- Container end -->
	</div><!-- Wrapper end -->
</section>
<?php get_footer(); ?>
