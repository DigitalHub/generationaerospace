<?php
/**
 * Template Name: Left and Right Sidebar Layout
 *
 * This template can be used to override the default template and sidebar setup
 *
 * @package understrap
 */
?>
<section class="section" data-anchor="genaero_explorer">
	<?php $bgimg = get_template_directory_uri() . "/img/imgbg_homepage-why.jpg";?>
	<div class="HudOverlay" style="background-image: url('<?php echo $bgimg; ?>');">

		<div class="tiny-stars"><img src="<?php echo get_template_directory_uri(); ?>/img/stars2.svg" alt=""></div>

		<div class="tiny-stars middle-stars"><img src="<?php echo get_template_directory_uri(); ?>/img/stars3.svg" alt=""></div>

		<div class="planet-big centered"> <!-- ORBIT --> <span class="round round-1"></span> <span class="round round-2"></span> <span class="round round-3"></span> <span class="round round-4"></span> <span class="round round-5"></span> <!-- END OF ORBIT --> </div>

		<svg class="HudOverlayme" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1316 653.6" style="enable-background:new 0 0 1316 653.6;" xml:space="preserve" preserveAspectRatio="none">
			<filter height="120%" id="blurlayer" width="110%">
				<feGaussianBlur  result="blur" stdDeviation="2"></feGaussianBlur>
			</filter>
			<g>
				<g class="HubOverlay--Blur">
					<image xlink:href="<?php echo $bgimg; ?>"></image>
				</g>
				<defs>
					<path id="HubOutside" d="M880.4,34c173.1,5,377.8,11.2,381.3,11.3c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3
					c0,48.9-20.7,275.2-20.9,277.5c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6C39,604.6,24.9,484,19.7,387.5 c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3C24.1,175.8,39,55.2,39.1,54 c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8L880.4,34z"/>

					<path id="clip_path_bg" d="M880.4,34c173.1,5,377.8,11.2,381.3,11.3c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3
					c0,48.9-20.7,275.2-20.9,277.5c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6C39,604.6,24.9,484,19.7,387.5 c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3C24.1,175.8,39,55.2,39.1,54 c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8L880.4,34z"/>
				</defs>
				<clipPath id="HubOverlay--Blur">
					<use xlink:href="#HubOutside" style="overflow:visible;"/>
					<use xlink:href="#clip_path_bg" style="overflow:visible;"/>
				</clipPath>
				<g class="HudOverlay-fullBorder">
					<path class="path" d="M880.4,34c173.1,5,377.8,11.2,381.3,11.3c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3
					c0,48.9-20.7,275.2-20.9,277.5c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6C39,604.6,24.9,484,19.7,387.5 c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3C24.1,175.8,39,55.2,39.1,54 c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8"/>
				</g>
				<polygon class="polygon" points="521.5,614.3 538.7,608.7 773.5,608.7 790.2,614.3 773.8,617.5 539,617.5	"/>
			</g>
		</svg>
	</div> 
	<div class="container sub_content">
		<div class="row">
			<div class="col-xl-8 offset-xl-2">
				<h2 style="text-align: center;">BECOME A #GENAERO EXPLORER</h2>
				<div class="genaero_explorer--navigation">
					<?php while(have_rows('explorer_slides')) : the_row();
					$icon = get_sub_field('icon');
					$paused_icon = get_sub_field('paused_icon'); ?>
					<div class="explorer_slide">
						<div class="post-thumbnail">
							<img class="running_icon" src="<?=$icon['url']?>" />
							<img class="paused_icon" src="<?=$paused_icon['url']?>" />
						</div>
					</div>
				<?php endwhile; ?>
			</div>
			<div class="genaero_explorer--carousel">
				<?php while(have_rows('explorer_slides')) : the_row();
				$title = get_sub_field('title');
				$copy = get_sub_field('copy'); ?>
				<div class="explorer_slide">
					<h2><?=$title?></h2>
					<p class="highlight"><?=$copy?></p>
				</div>
			<?php endwhile; ?>
		</div>
	</div>
</div>
</div>
</section>