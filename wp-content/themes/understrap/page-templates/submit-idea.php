<?php
/**
 * Template Name: Submit an Idea Page
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' );

?>

<div class="wrapper" id="page-wrapper">
	<?php $bgimg = get_template_directory_uri() . "/img/img-header_findaVideo.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="<?php echo esc_attr( $container ); ?>" id="content">
		<div class="row dashboard-row">

			<?php get_sidebar( 'left' ); ?>

			<div class="<?php if ( is_active_sidebar( 'left-sidebar' ) ) : ?>col-md-8<?php else : ?>col-md-12<?php endif; ?> content-area" id="primary">
				<main class="site-main dashboard_content" id="main" role="main">
					<div class="dashboard_content--title">
						<h4>Got an Idea or Feedback? Tell us!</h4>
					</div>
					<?php while ( have_posts() ) : the_post();
					the_content();
					endwhile; ?>

					<div id="username" style="display:none" data-user-id="<?=$_SESSION['username']?>"></div>

				</main><!-- #main -->
			</div><!-- #primary -->
		</div><!-- .row -->
	</div><!-- Container end -->
</div><!-- Wrapper end -->
<?php get_footer(); ?>
