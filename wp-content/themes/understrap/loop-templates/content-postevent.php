<?php
/**
 * Single post partial template.
 *
 * @package understrap
 */

?>
<section class="singlepost--hud content--overflow" style="background-image: url(<?php echo get_template_directory_uri(); ?>/img/bg1.jpg ); ">
	<div class="HudOverlay">
		<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1316 835" style="enable-background:new 0 0 1316 835" xml:space="preserve" class="HudOverlay-fullBorder" preserveAspectRatio="none"> 
			<defs>
				<mask id="mask">
					<rect x="0" y="0" width="100%" height="100%" fill="white"></rect> 
					<rect class="title-mask" stroke="none" fill="black" x="0" y="0" width="380" height="45" transform="scale(1,0.2) translate(470,-28)"></rect>
				</mask> 
				<filter id="blurlayer" width="110%" height="120%">
					<feGaussianBlur stdDeviation="4" result="blur"/>
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
	</div> 
	<div class="singlepost--content content--overflow">
		<div class="container">
			<div class="col-xl-10 offset-xl-1">
				<img src="<?php echo get_template_directory_uri(); ?>/img/imgbg_homepage-event.jpg" alt="Singapore Airshow 2018">
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
						<div class="entry-content">
							<h2><?php the_title(); ?></h2>
							<p class="highlight">10-February 2018, Changi Exhibition Centre, Singapore</p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum repellendus esse corporis nulla tenetur iure inventore architecto deleniti omnis harum blanditiis fugit explicabo sapiente repudiandae magni magnam natus sed ullam animi obcaecati iste, consequuntur necessitatibus. Nobis ut repudiandae fuga iure eaque nisi, laboriosam ipsum culpa modi eum quasi a eius similique totam, necessitatibus reprehenderit ratione eveniet alias quibusdam accusamus corporis nemo earum. Error accusantium soluta odit, ab minima, vitae corporis laboriosam quas ullam debitis ipsum dolores animi commodi officia, quaerat, vero repudiandae mollitia porro. Aliquam dignissimos officiis corporis deleniti, facilis eos, a maxime quis praesentium, facere, vel labore eligendi tempora?
							<?php the_content(); ?>
						</div>
						<div class="entry-gallery">
							<h3>Gallery</h3>
							<!-- gallery image -->
						</div>
					</main><!-- #main -->
				</div><!-- #primary -->
			</div><!-- .row end -->
		</div><!-- Container end -->
	</div><!-- Wrapper end -->
</section>