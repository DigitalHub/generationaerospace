<?php
/**
 * Template Name: Page Videos
 *
 * Template for displaying a page without sidebar even if a sidebar widget is published.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); ?>

<section class="subpage--hud" style="background-image: url(<?php echo get_template_directory_uri(); ?>/img/bg1.jpg ); ">
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
	<div class="subpage--content">
		<div class="container">
			<h1><?php the_title(); ?></h1>
			<p class="highlight">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique praesentium quisquam dignissimos, magni ea accusamus provident illo corporis, non cumque.</p>
			<div class="row">
				<div class="col-xl-8 ">
					<div class="search-form">
						<input type="text" />
						<button type="submit"><i class="fal fa-search"></i></button>
					</div>
				</div>
				<div class="col-xl-4">
					<h3>Submit your videos here:</h3>
					<button class="arrowbtn btn--color">
						<span class="fas fa-long-arrow-alt-right icon-left"></span>
						<div class="arrowbtn-wrapper"><span>Sign up or Register Now</span></div>
					</button>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="col-xl-8 col-xl-8 col-md-6 col-sm-12 col-xs-12 featured_experiment--card">
					<div class="post-thumbnail">
						<a href="#ab"><img src="http://lorempixel.com/500/253" /></a>
					</div>
					<div class="experiment--fav_link"><a href="#heart"><i class="fas fa-heart"></i></a></div>
				</div>
				<div class="col-xl-4 col-xl-4 col-md-6 col-sm-12 col-xs-12">
					<h2>Featured Video of the Month_</h2>
					<h3>Title Goes Here <?php the_title(); ?></h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati debitis, omnis est distinctio aperiam sint, harum magnam tempora quas veniam id laboriosam assumenda dolores cumque accusamus iste quia sapiente quis! Quibusdam sunt soluta odit maxime iure tempora corporis suscipit laboriosam.</p>

					<div class="meta-date_fav">
						<div class="alignleft">
							<div class="meta-profile_pic"><i class="fas fa-user"></i></div>
						</div>
						<div class="alignleft">
							<div class="meta-posted">Posted by <span class="meta-student">Jimmy Bin Ali</span></div>
							<div class="meta-date"><i class="fas fa-clock"></i><?php echo get_the_date("d M Y"); ?></div>
							<div class="meta-comment"><i class="fas fa-comment"></i>200</div>
							<div class="meta-fav"><i class="fas fa-heart"></i>100</div>
						</div>
					</div>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-xl-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<h3>Featured_</h3>
						<div class="row">
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12 featured_experiment--card">
								<div class="post-thumbnail">
									<a href="#ab"><img src="http://lorempixel.com/500/250" /></a>
								</div>
								<div class="experiment--fav_link"><a href="#heart"><i class="fas fa-heart"></i></a></div>
								<div class="experiment_card--content">
									<a href="#a">Lorem ipsum dolor sit amet <?php the_title(); ?></a>
									<div class="meta-date_fav">
										<div class="alignleft">
											<div class="meta-profile_pic"><i class="fas fa-user"></i></div>
										</div>
										<div class="alignleft">
											<div class="meta-posted">Posted by <span class="meta-student">Jimmy Bin Ali</span></div>
											<div class="meta-date"><i class="fas fa-clock"></i><?php echo get_the_date("d M Y"); ?></div>
											<div class="meta-comment"><i class="fas fa-comment"></i>200</div>
											<div class="meta-fav"><i class="fas fa-heart"></i>100</div>
										</div>
									</div>
								</div>
							</div> <!-- .featured_experimentcard end -->
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12 featured_experiment--card">
								<div class="post-thumbnail">
									<a href="#ab"><img src="http://lorempixel.com/500/251" /></a>
								</div>
								<div class="experiment--fav_link"><a href="#heart"><i class="fas fa-heart"></i></a></div>
								<div class="experiment_card--content">
									<a href="#a">Lorem ipsum dolor sit amet <?php the_title(); ?></a>
									<div class="meta-date_fav">
										<div class="alignleft">
											<div class="meta-profile_pic"><i class="fas fa-user"></i></div>
										</div>
										<div class="alignleft">
											<div class="meta-posted">Posted by <span class="meta-student">Jimmy Bin Ali</span></div>
											<div class="meta-date"><i class="fas fa-clock"></i><?php echo get_the_date("d M Y"); ?></div>
											<div class="meta-comment"><i class="fas fa-comment"></i>200</div>
											<div class="meta-fav"><i class="fas fa-heart"></i>100</div>
										</div>
									</div>
								</div>
							</div> <!-- .featured_experimentcard end -->
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12 featured_experiment--card">
								<div class="post-thumbnail">
									<a href="#ab"><img src="http://lorempixel.com/500/252" /></a>
								</div>
								<div class="experiment--fav_link"><a href="#heart"><i class="fas fa-heart"></i></a></div>
								<div class="experiment_card--content">
									<a href="#a">Lorem ipsum dolor sit amet <?php the_title(); ?></a>
									<div class="meta-date_fav">
										<div class="alignleft">
											<div class="meta-profile_pic"><i class="fas fa-user"></i></div>
										</div>
										<div class="alignleft">
											<div class="meta-posted">Posted by <span class="meta-student">Jimmy Bin Ali</span></div>
											<div class="meta-date"><i class="fas fa-clock"></i><?php echo get_the_date("d M Y"); ?></div>
											<div class="meta-comment"><i class="fas fa-comment"></i>200</div>
											<div class="meta-fav"><i class="fas fa-heart"></i>100</div>
										</div>
									</div>
								</div>
							</div> <!-- .featured_experimentcard end -->
						</div>
					</main><!-- #main -->
				</div><!-- #primary -->
			</div><!-- .row end -->
		</div><!-- Container end -->
	</div><!-- Wrapper end --></section>
	<?php get_footer(); ?>
