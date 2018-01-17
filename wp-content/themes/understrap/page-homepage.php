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
	<main id="main" class="site-main" role="main">
		<ul class="chapter-selector">
			<li data-menuanchor="welcome" class="active"><a href="#welcome">Welcome</a></li>
			<li data-menuanchor="featured_video"><a href="#featured_video">Find A Video</a></li>
			<li data-menuanchor="featured_experiment"><a href="#featured_experiment">Find An Experiment</a></li>
			<li data-menuanchor="genaero_explorer"><a href="#genaero_explorer">Be A Genaero Explorer</a></li>
			<li data-menuanchor="genaero_trailbazers"><a href="#genaero_trailbazers">Be A Genaero Trailbazers</a></li>
			<li data-menuanchor="featured_events"><a href="#featured_events">Events</a></li>
		</ul>

		<div id="fullpage">
			<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
				<?php get_template_part( 'page-templates/homepage/featured', 'welcome' ); ?>
				<?php get_template_part( 'page-templates/homepage/featured', 'video' ); ?>
				<?php get_template_part( 'page-templates/homepage/featured', 'experiment' ); ?>
				<?php get_template_part( 'page-templates/homepage/genaero', 'explorer' ); ?>
				<?php get_template_part( 'page-templates/homepage/genaero', 'trailbazers' ); ?>
				<?php get_template_part( 'page-templates/homepage/featured', 'events' ); ?>
			<?php endwhile;endif; ?>
		</div>
	</main>
</div>
<?php get_footer(); ?>