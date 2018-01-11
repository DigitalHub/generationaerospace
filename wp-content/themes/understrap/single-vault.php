<?php
/**
 * The template for displaying all single posts.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); ?>

<section class="subpage--hud" style="background-image: url(<?php echo get_template_directory_uri(); ?>/img/bg1.jpg ); ">
	<div class="HudOverlay">
		<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1316 835" style="enable-background:new 0 0 1316 835" xml:space="preserve" class="HudOverlay-fullBorder" preserveAspectRatio="none"> 
			<filter  height="120%" id="blurlayer" width="110%">
				<feGaussianBlur  result="blur" stdDeviation="4"></feGaussianBlur>
			</filter>
			<g>
				<defs>
					<path id="SVGID_1_" d="M889.8,4.7 M425.3,4.4 M889.8,5.8c178.7,7.1,390,15.8,393.6,16c5.5,0,10.1,5.5,10.1,12.2
					c0.2,3.2,21.6,318.7,21.6,387.7c0,69.1-21.4,389-21.6,392.3c0,6.7-4.5,12.2-10.1,12.2H31.4c-5.5,0-10.1-5.5-10.1-12.2
					c-0.1-1.7-14.6-172.1-20-308.6c6.9-9.8,13.8-21,13.9-21.1l0.1-0.1l0.8-120.3l-0.1-0.2c0-0.2-8.2-11.4-15.1-20.2
					C5.8,206.3,21.2,35.7,21.3,34c0-6.7,4.5-12.2,10.1-12.2c3.6-0.2,219-9.4,393.8-16.7L889.8,5.8z"/>
				</defs>
				<clipPath id="SVGID_2_">
					<use xlink:href="#SVGID_1_"  style="overflow:visible;"/>
				</clipPath>
				<g class="st0">
					<path class="st1" d="M889.8,4.7 M425.3,4.4 M889.8,5.8c178.7,7.1,390,15.8,393.6,16c5.5,0,10.1,5.5,10.1,12.2
					c0.2,3.2,21.6,318.7,21.6,387.7c0,69.1-21.4,389-21.6,392.3c0,6.7-4.5,12.2-10.1,12.2H31.4c-5.5,0-10.1-5.5-10.1-12.2
					c-0.1-1.7-14.6-172.1-20-308.6c6.9-9.8,13.8-21,13.9-21.1l0.1-0.1l0.8-120.3l-0.1-0.2c0-0.2-8.2-11.4-15.1-20.2
					C5.8,206.3,21.2,35.7,21.3,34c0-6.7,4.5-12.2,10.1-12.2c3.6-0.2,219-9.4,393.8-16.7"/>
				</g>
			</g>
			<polygon class="st1" points="519.3,826.1 537.1,818.2 779.5,818.2 796.7,826.1 779.8,830.6 537.4,830.6 "/>
			<g>
				<path class="st2" d="M889.8,4.7 M425.3,4.4 M889.8,5.8c178.7,7.1,390,15.8,393.6,16c5.5,0,10.1,5.5,10.1,12.2
				c0.2,3.2,21.6,318.7,21.6,387.7c0,69.1-21.4,389-21.6,392.3c0,6.7-4.5,12.2-10.1,12.2H31.4c-5.5,0-10.1-5.5-10.1-12.2
				c-0.1-1.7-14.6-172.1-20-308.6c6.9-9.8,13.8-21,13.9-21.1l0.1-0.1l0.8-120.3l-0.1-0.2c0-0.2-8.2-11.4-15.1-20.2
				C5.8,206.3,21.2,35.7,21.3,34c0-6.7,4.5-12.2,10.1-12.2c3.6-0.2,219-9.4,393.8-16.7"/>
			</g>
		</svg>
	</div> 
	<div class="subpage--content">
		<div class="container">
			<h1><?php the_title(); ?></h1>
			<p class="highlight">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique praesentium quisquam dignissimos, magni ea accusamus provident illo corporis, non cumque.</p>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper" id="single-wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<?php the_content(); ?>
					</main><!-- #main -->
				</div><!-- #primary -->
			</div><!-- .row end -->
		</div><!-- Container end -->
	</div><!-- Wrapper end -->
</section>
<?php get_footer(); ?>
