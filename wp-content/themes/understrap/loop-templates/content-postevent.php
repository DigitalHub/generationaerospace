<?php
/**
 * Single post partial template.
 *
 * @package understrap
 */

$startdate = get_field('start_date');
$enddate = get_field('end_date');
$date = getDates($startdate, $enddate);

$starttime = get_field('start_time');
$endtime = get_field('end_time');
$time = $starttime.' - '.$endtime;

$venue = get_field('venue');
$map = get_field('google_map');
$summary = get_field('post_event_summary');
$gallery = get_field('gallery');
$size = 'thumbnail';
?>
<section class="singlepost--hud content--overflow">
	<?php $bgimg = get_template_directory_uri() . "/img/Dashboard_Bg.jpg";
	include(locate_template('loop-templates/single-hubbase.php')); ?>

	<div class="singlepost--content">
		<div class="container">
			<div class="col-xl-10 offset-xl-1 col-lg-10 offset-xl-1 col-md-10 offset-md-1 col-sm-12 col-xs-12">
				<div class="row">
					<div class="content--overflow_wrapper"><?php the_post_thumbnail( 'full' ); ?></div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="single_main">
	<div class="wrapper" id="single-wrapper">
		<div class="container" id="content">
			<div class="row">
				<div class="col-xl-10 offset-xl-1 col-lg-10 offset-lg-1 col-md-12 col-sm-12 col-xs-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<div class="entry-content event_summary">
							<h2><?php the_title(); ?></h2>
							<p class="highlight"><?=$date?>, <?=$venue?></p><br>
							<div class="addthis_inline_share_toolbox_dznu"></div><br>
							<?=$summary?>
						</div>
						<hr>
						<div class="entry-gallery">
							<h4>Gallery</h4>
							<div class="entry-gallery--wrapper">
								<?php if($gallery) : foreach($gallery as $image) :
								echo '<a data-fancybox="gallery" href="'.$image['sizes']['large'].'">'.wp_get_attachment_image($image["ID"], $size).'</a>';
								endforeach; endif; ?><!-- gallery image -->
							</div>
						</div>
					</main><!-- #main -->
				</div><!-- #primary -->
			</div><!-- .row end -->
		</div><!-- Container end -->
	</div><!-- Wrapper end -->
</section>