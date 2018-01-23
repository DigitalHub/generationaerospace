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
	<?php $bgimg = get_template_directory_uri() . "/img/imgbg_homepage-welcome.jpg";
	include(locate_template('loop-templates/home-hubbase.php')); ?>
	<div class="container welcome_content">
		<div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2">
			<h1 class="welcome_text">Welcome</h1>
			<div class="highlight"><?php echo get_field('welcome_copy'); ?></div>

			<!-- TODO: STEF TO ADD BACKGROUND VIDEO -->
			<a data-fancybox href="https://www.youtube.com/watch?v=l4LHKJkco7U">
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
</section>