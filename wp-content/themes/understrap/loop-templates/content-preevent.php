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
$summary = get_field('pre_event_summary');
?>
<section class="singlepost--hud">
	<?php $bgimg = get_template_directory_uri() . "/img/img-header_The-vault.jpg";
	include(locate_template('loop-templates/single-hubbase.php')); ?>

	<div class="singlepost--content">
		<div class="container">
			<h1><?php the_title(); ?></h1>
			<p class="highlight text-center" style="color: #00aed4 !important;"><?=$date?>, <?=$venue?></p>
			<div class="addthis_inline_share_toolbox_dznu"></div>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper" id="single-wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="col-xl-10 offset-xl-1 col-lg-10 offset-lg-1 col-md-12 col-sm-12 col-xs-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<div class="entry-content">
							<?=$summary?>
							<br>
							<h4>Date: <?=$date?><br/>
								Time: <?=$time?><br/>
								Venue: <?=$venue?></h4>
								<br>
								<?php if(!empty($map)) : ?>
									<div class="acf-map">
										<div class="marker" data-lat="<?php echo $map['lat']; ?>" data-lng="<?php echo $map['lng']; ?>"></div>
									</div>
								<?php endif; ?>
							</div>
						</main><!-- #main -->
					</div><!-- #primary -->
				</div><!-- .row end -->
			</div><!-- Container end -->
		</div><!-- Wrapper end -->
	</section>