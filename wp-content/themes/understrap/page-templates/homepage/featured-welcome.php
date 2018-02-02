<?php
/**
 * Template Name: Left and Right Sidebar Layout
 *
 * This template can be used to override the default template and sidebar setup
 *
 * @package understrap
 */

?>
<section class="section" data-anchor="welcome">
	<video loop muted preload="auto" id="video">
		<source src="<?php echo get_template_directory_uri(); ?>/img/GenAero-welcome.mp4" type="video/mp4">
			<source src="<?php echo get_template_directory_uri(); ?>/img/GenAero-welcome.ogv" type="video/mp4">
				<source src="<?php echo get_template_directory_uri(); ?>/img/GenAero-welcome.webm" type="video/mp4">
				</video>
				<div class="HudOverlay">
					<svg class="homeHudOverlay" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1316 653.6" style="enable-background:new 0 0 1316 653.6;" xml:space="preserve" preserveAspectRatio="none">
						<path class="outsideHudOverlay" d="M0,0v653.6h1316V0H0z M1271.5,605.7c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6
						C39,604.6,24.9,484,19.7,387.5c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3
						C24.1,175.8,39,55.2,39.1,54c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8l450,0.4c173.1,5,377.8,11.2,381.3,11.3
						c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3C1292.4,377.1,1271.7,603.4,1271.5,605.7z"/>
						<g>
							<defs>
								<path id="SVGID_1_" d="M880.4,34c173.1,5,377.8,11.2,381.3,11.3c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3
								c0,48.9-20.7,275.2-20.9,277.5c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6C39,604.6,24.9,484,19.7,387.5
								c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3C24.1,175.8,39,55.2,39.1,54
								c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8L880.4,34z"/>
							</defs>
							<g>
								<path class="HudOverlay-fill" d="M880.4,33.9c173.1,5,377.8,11.2,381.3,11.3c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3
								c0,48.9-20.7,275.2-20.9,277.5c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6c-0.1-1.1-14.2-121.7-19.4-218.2
								c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3c4.7-97.2,19.6-217.8,19.7-219
								c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8"/>
								<path class="HudOverlay-fullBorder" d="M880.4,33.9c173.1,5,377.8,11.2,381.3,11.3c5.3,0,9.8,3.9,9.8,8.6c0.2,2.3,20.9,225.5,20.9,274.3
								c0,48.9-20.7,275.2-20.9,277.5c0,4.7-4.4,8.6-9.8,8.6H48.9c-5.3,0-9.8-3.9-9.8-8.6c-0.1-1.1-14.2-121.7-19.4-218.2
								c6.7-6.9,13.4-14.9,13.5-14.9l0.1-0.1l0.8-85.1l-0.1-0.1c0-0.1-7.9-8.1-14.6-14.3c4.7-97.2,19.6-217.8,19.7-219
								c0-4.7,4.4-8.6,9.8-8.6c3.5-0.1,212.1-6.7,381.5-11.8"/>
							</g>
						</g>
						<polygon class="polygon" points="521.5,614.2 538.7,608.6 773.5,608.6 790.2,614.2 773.8,617.4 539,617.4"/>
					</svg>
				</div> 
				<!--  -->
				<div class="container welcome_content">
					<div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-md-10 offset-md-1 col-sm-12 col-xs-12">
						<h1 class="welcome_text">Welcome</h1>
						<div class="highlight"><?php echo get_field('welcome_copy'); ?></div>

						<!-- TODO: STEF TO ADD BACKGROUND VIDEO -->
						<a data-fancybox href="https://www.youtube.com/watch?v=ulBQ9ryWBdg">
							<div class="watch_video--typewriter">
								<div class="watch_video--button">
									<div class="watch_video--play">
										<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0" y="0" height="100px" width="100px"
										viewBox="0 0 100 100" enable-background="new 0 0 100 100" xml:space="preserve"><path class="stroke-solid" d="M49.9,2.5C23.6,2.8,2.1,24.4,2.5,50.4C2.9,76.5,24.7,98,50.3,97.5c26.4-0.6,47.4-21.8,47.2-47.7
										C97.3,23.7,75.7,2.3,49.9,2.5"/><path class="pathicon" d="M38,69c-1,0.5-1.8,0-1.8-1.1V32.1c0-1.1,0.8-1.6,1.8-1.1l34,18c1,0.5,1,1.4,0,1.9L38,69z"/></svg>
									</div>
								</div>
								<div class="watch_video--text">
									<p><span>Watch Video</span></p>
								</div>
							</div>
						</a>
					</div>
					<div class="clear"></div>
				</div>
				<div class="fullpagecounter"><span class="counting">01</span><span class="totalcount">06</span></div>
			</section>