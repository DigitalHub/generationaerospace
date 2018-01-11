<?php
/**
 * Template Name: Page Experiments
 *
 * Template for displaying a page without sidebar even if a sidebar widget is published.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); ?>

<section class="subpage--hud">
	<?php $bgimg = "http://localhost/generationaerospace/wp-content/themes/understrap/img/Dashboard_Bg.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="subpage--content">
		<div class="container">
			<div class="row">
				<div class="col-xl-8 offset-xl-2">
					<h1><?php the_title(); ?></h1>
					<p class="highlight">
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique praesentium quisquam dignissimos, magni ea accusamus provident illo corporis, non cumque.
					</p>
					<div class="search-form">
						<input type="text" />
						<button type="submit"><i class="fal fa-search"></i></button>
					</div>
					<p>Suggestion search: <a href="#">Air pressure</a>, <a href="#">Plants</a></p>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="sub_main">
	<div class="wrapper">
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row">
				<div class="col-xl-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<div class="row">
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12 featured_experiment--card">
								<div class="post-thumbnail">
									<a href="#ab"><img src="http://lorempixel.com/500/250" /></a>
								</div>
								<div class="experiment--fav_link"><a href="#heart"><i class="fas fa-heart"></i></a></div>
								<div class="experiment_card--content">
									<a href="#a">Lorem ipsum dolor sit amet <?php the_title(); ?></a>
									<ul class="meta-keywords">
										<li><a href="#b">Nature</a></li> 
										<li><a href="#b">Air pressure</a></li>
									</ul>
									<div class="meta-date_fav">
										<div class="meta-date"><i class="fas fa-clock"></i><?php echo get_the_date("d M Y"); ?></div>
										<div class="meta-fav"><i class="fas fa-heart"></i>100</div>
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
									<ul class="meta-keywords">
										<li><a href="#b">Nature</a></li> 
										<li><a href="#b">Air pressure</a></li>
									</ul>
									<div class="meta-date_fav">
										<div class="meta-date"><i class="fas fa-clock"></i><?php echo get_the_date("d M Y"); ?></div>
										<div class="meta-fav"><i class="fas fa-heart"></i>100</div>
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
									<ul class="meta-keywords">
										<li><a href="#b">Nature</a></li> 
										<li><a href="#b">Air pressure</a></li>
									</ul>
									<div class="meta-date_fav">
										<div class="meta-date"><i class="fas fa-clock"></i><?php echo get_the_date("d M Y"); ?></div>
										<div class="meta-fav"><i class="fas fa-heart"></i>100</div>
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
