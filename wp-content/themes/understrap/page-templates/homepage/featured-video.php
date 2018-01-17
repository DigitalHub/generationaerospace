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
		$sql = $wpdb->prepare("SELECT t1.id, t1.link_id, t1.title, t1.youtube, t2.fullname FROM $videos_table t1 INNER JOIN $members_table t2 ON t1.member_id = t2.id WHERE link_id = '%s'", get_sub_field('id'));

		$videos[] = $wpdb->get_results($sql);
	endwhile;
endif;

?>

<section class="section" data-anchor="featured_video">
	<?php $bgimg = get_template_directory_uri() . "/img/Dashboard_Bg.jpg";
	include(locate_template('loop-templates/home-hubbase.php')); ?>
	<div class="container sub_content">
		<div class="row">
			<div class="col-xl-4"><!-- offset-xl-1 -->
				<h1>Featured Video_</h1>
				<div class="highlight"><?php echo get_field('featured_video_copy'); ?></div>
				<button class="arrowbtn btn--color">
					<span class="fas fa-long-arrow-alt-right icon-left"></span>
					<div class="arrowbtn-wrapper"><span>See More Videos</span></div>
				</button>
			</div>
			<div class="col-xl-6 "><!-- offset-xl-1 -->
				<div class="featured_video--carousel_wrapper">
					<div class="featured_video--carousel">
						<?php
						foreach($videos as $video) :
							$thumbnail = getYoutubeThumbnail($video[0]->youtube);
							?>
							<div class="video_slide">
								<img src="<?=$thumbnail?>" />
								<h3><?=$video[0]->title?></h3>
								<p><?=$video[0]->fullname?></p>
							</div>
						<?php endforeach; ?>
					</div>
				</div>
				<div class="pagingInfo"></div>
			</div>
		</div>
	</div>
</section>