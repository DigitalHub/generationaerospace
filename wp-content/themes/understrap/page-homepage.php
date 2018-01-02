<?php
/**
 * Template Name: Page Homepage
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package understrap
 */

get_header(); ?>

<div class="wrapper" id="page-wrapper">
	<main id="main" class="site-main container" role="main">
		<div class="HudOverlay">
			<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1316 835" style="enable-background:new 0 0 1316 835" xml:space="preserve" class="HudOverlay-fullBorder" preserveAspectRatio="none"> 
				<defs>
					<mask id="mask">
						<rect x="0" y="0" width="100%" height="100%" fill="white"></rect> 
						<rect class="title-mask" stroke="none" fill="black" x="0" y="0" width="380" height="45" transform="scale(1,0.2) translate(470,-28)"></rect>
					</mask> 
					<filter id="blurlayer" width="110%" height="120%">
						<feGaussianBlur  stdDeviation="4" result="blur"/>
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
		</div> <!-- stroke="#ff0" stroke-width="10" -->

		<ul class="chapter-selector">
			<li data-menuanchor="welcome" class="active"><a href="#welcome">Welcome</a></li>
			<li data-menuanchor="featured_video"><a href="#featured_video">Find A Video</a></li>
			<li data-menuanchor="featured_experiment"><a href="#featured_experiment">Find An Experiment</a></li>
			<li data-menuanchor="genaero_explorer"><a href="#genaero_explorer">Be A Genaero Explorer</a></li>
			<li data-menuanchor="genaero_trailbazers"><a href="#genaero_trailbazers">Be A Genaero Trailbazers</a></li>
			<li data-menuanchor="featured_events"><a href="#featured_events">Events</a></li>
		</ul>

		<div id="fullpage">
			<?php get_template_part( 'page-templates/homepage/featured', 'welcome' ); ?>
			<?php get_template_part( 'page-templates/homepage/featured', 'video' ); ?>
			<?php get_template_part( 'page-templates/homepage/featured', 'experiment' ); ?>
			<?php get_template_part( 'page-templates/homepage/genaero', 'explorer' ); ?>
			<?php get_template_part( 'page-templates/homepage/genaero', 'trailbazers' ); ?>
			<?php get_template_part( 'page-templates/homepage/featured', 'events' ); ?>
		</div>
	</main>
</div>
<?php get_footer(); ?>