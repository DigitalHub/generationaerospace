<?php
/**
 * Template Name: Videos List Page
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' );

global $wpdb;
$videos_table = $wpdb->prefix.'genaero_videos';
$username = $_SESSION['username'];
$user_id = $_SESSION['user_id'];

$videos_sql = $wpdb->prepare("SELECT * FROM $videos_table INNER JOIN $wpdb->posts ON $videos_table.link_id = $wpdb->posts.id WHERE member_id = %s", $user_id);
$results = $wpdb->get_results($videos_sql);
$results_count = $wpdb->num_rows;
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
		<div class="<?php if ( is_active_sidebar( 'left-sidebar' ) ) : ?>col-md-8<?php else : ?>col-md-12<?php endif; ?> content-area" id="primary">
			<main class="site-main dashboard_content" id="main" role="main">
				<div class="dashboard_content--title">
					<h4>My Videos</h4>
				</div>
				<div class="dashboard_content--editlink">
					<a href="<?php echo get_permalink( get_page_by_path( 'submit-a-video' ) ) ?>">Add New</a>
				</div>
				<div class="clear"></div>

				<div class="profile_form--wrapper">
					<?php //TODO: STEF TO ADD PAGINATION
					if($results_count > 0) {
						foreach ($results as $result) {
							global $result;
							get_template_part( 'page-templates/members/video', 'row' );
						}
					} else {
						echo '<p>You have not submitted any videos yet. Why not submit your own video here?</p>';
						echo '<a href="'.get_permalink( get_page_by_path( 'submit-a-video' ) ).'">Submit New Video</a>';
					} ?>
				</div>
			</main><!-- #main -->
		</div><!-- #primary -->
	</div><!-- .row -->
</div><!-- Container end -->
</div><!-- Wrapper end -->
<?php get_footer(); ?>
