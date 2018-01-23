<?php
/**
 * Template Name: Left and Right Sidebar Layout
 *
 * This template can be used to override the default template and sidebar setup
 *
 * @package understrap
 */
global $wpdb;
$videos_table = $wpdb->prefix.'genaero_videos';
$members_table = $wpdb->prefix.'genaero_members';

//videos loop
$videos = array();
if(have_rows('featured_video')) :
	while(have_rows('featured_video')) : the_row();
		$sql = $wpdb->prepare("SELECT t1.id, t1.link_id, t1.title, t1.youtube, t2.fullname FROM $videos_table t1 INNER JOIN $members_table t2 ON t1.member_id = t2.id INNER JOIN $wpdb->posts t3 ON t1.link_id = t3.id WHERE link_id = '%s' AND t3.post_status = 'publish'", get_sub_field('id'));
		$results = $wpdb->get_results($sql);

		if($wpdb->num_rows > 0) {
			$videos[] = $results;
		}
	endwhile;
endif;

?>

<section class="section" data-anchor="featured_video">
	<?php $bgimg = get_template_directory_uri() . "/img/imgbg_homepage-feature-video.jpg";
	include(locate_template('loop-templates/home-hubbase.php')); ?>
	<div class="container sub_content featured_videohomepage">
		<div class="row">
			<div class="offset-xl-1 col-xl-4 col-lg-5 col-md-12 col-sm-12 col-xs-12">
				<h1>Get Inspired_</h1>
				<div class="highlight"><?php echo get_field('featured_video_copy'); ?></div>
				<a href="<?php echo get_permalink( get_page_by_path( 'get-inspired' ) ); ?>" class="arrowbtn btn--color hidinmobile">
					<span class="fas fa-long-arrow-alt-right icon-left"></span>
					<div class="arrowbtn-wrapper"><span>See More Videos</span></div>
				</a>
			</div>
			<div class="col-xl-6 col-lg-7 col-md-12 col-sm-12 col-xs-12">
				<div class="featured_video--carousel_wrapper">
					<div class="featured_video--carousel">
						<?php
						foreach($videos as $video) :
							$thumbnail = getYoutubeThumbnail($video[0]->youtube);
							?>
							<div class="video_slide">
								<div class="post-thumbnail" style="background-image:url('<?=$thumbnail?>');>
								<img src="<?=$thumbnail?>" />
							</div>
							<h3><?=$video[0]->title?></h3>
							<p><?=$video[0]->fullname?></p>
						</div>
					<?php endforeach; ?>
				</div>
			</div>
			<div class="pagingInfo"></div>

			<a href="<?php echo get_permalink( get_page_by_path( 'get-inspired' ) ); ?>" class="arrowbtn btn--color hidindesktop--inline">
				<span class="fas fa-long-arrow-alt-right icon-left"></span>
				<div class="arrowbtn-wrapper"><span>See More Videos</span></div>
			</a>
		</div>
	</div>
</div>
<div class="fullpagecounter"><span class="counting">02</span><span class="totalcount">06</span></div>
</section>