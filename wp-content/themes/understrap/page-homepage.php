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
<div class="clear"></div>
<div class="wrapper" id="page-wrapper">
	<main id="main" class="site-main" role="main">
		<ul class="chapter-selector">
			<li data-menuanchor="welcome" class="active"><a href="#welcome">Welcome</a></li>
			<li data-menuanchor="featured_video"><a href="#featured_video">Get Inspired</a></li>
			<li data-menuanchor="featured_experiment"><a href="#featured_experiment">Try This at Home</a></li>
			<li data-menuanchor="genaero_explorer"><a href="#genaero_explorer">Be A Genaero Explorer</a></li>
			<li data-menuanchor="genaero_trailblazers"><a href="#genaero_trailblazers">Genaero Trailblazers</a></li>
			<li data-menuanchor="featured_events"><a href="#featured_events">Events</a></li>
		</ul>

		<div id="fullpage">
			<?php if (have_posts()) : while (have_posts()) : the_post();
			get_template_part( 'page-templates/homepage/featured', 'welcome' );
			get_template_part( 'page-templates/homepage/featured', 'video' );
			get_template_part( 'page-templates/homepage/featured', 'experiment' );
			get_template_part( 'page-templates/homepage/genaero', 'explorer' );
			get_template_part( 'page-templates/homepage/genaero', 'trailbazers' );
			get_template_part( 'page-templates/homepage/featured', 'events' ); 
			endwhile;endif; ?>
		</div>
	</main>
</div>
<?php get_footer(); ?>