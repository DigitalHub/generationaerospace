<?php
/**
 * The template for displaying all single posts.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); 

$tags = get_the_tags();

?>


<section class="singlepost--hud content--overflow">
	<?php $bgimg = get_template_directory_uri() . "/img/imgbg_homepage-findanexperiment.jpg";
	include(locate_template('loop-templates/single-hubbase.php')); ?>
	<div class="singlepost--content content--overflow">
		<div class="container">
			<div class="col-xl-10 offset-xl-1 col-lg-10 offset-lg-1 col-md-12 col-sm-12 col-xs-12">
				<h2><?php the_title(); ?></h2>
				<div class="experiment-meta">
					<div class="meta-date"><i class="fas fa-clock"></i><?php echo get_the_date(); ?></div>
					<ul class="meta-keywords">
						<?php
						if($tags) :
							foreach($tags as $tag) :
								echo '<li><a href="'.get_term_link($tag).'">'.$tag->name.'</a></li>';
							endforeach;
						endif;
						?>
					</ul>
				</div>
				<div class="experiment--link">
					<div class="content--overflow_wrapper">
						<?php the_post_thumbnail( 'large' ); ?>
						<a data-fancybox data-src="#singleexperiement" href="javascript:;" class="arrowbtn btn--invert fullpopup">
							<span class="fas fa-long-arrow-alt-right icon-left"></span>
							<div class="arrowbtn-wrapper"><span style="width: 180px;">Try It Now</span></div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="display: none;" id="singleexperiement">
		<?php get_template_part( 'loop-templates/content', 'experiment' ); ?>
	</div>
</section>
<section class="single_main">
	<div class="wrapper" id="single-wrapper">
		<div class="container" id="content">
			<div class="row">
				<div class="col-xl-10 offset-xl-1 col-lg-10 offset-lg-1 col-md-12 col-sm-12 col-xs-12 content-area" id="primary">
					<main class="site-main" id="main" role="main">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 entry-content">
							<p class="highlight"><?php echo get_field('summary'); ?></p>
						</div>
					</main><!-- #main -->
				</div><!-- #primary -->
			</div><!-- .row end -->
		</div><!-- Container end -->
	</div><!-- Wrapper end -->
</section>

<?php get_footer(); ?>
