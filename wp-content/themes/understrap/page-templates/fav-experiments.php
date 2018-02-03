<?php
/**
 * Template Name: Favourite Experiments Page
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' );

global $wpdb;
$fav_experiments_table = $wpdb->prefix . 'genaero_favourite_experiments';
$username = $_SESSION['username'];
$user_id = $_SESSION['user_id'];

$experiments_sql = $wpdb->prepare("SELECT t1.id, t1.experiment_id, t2.post_title, t2.post_excerpt FROM $fav_experiments_table t1 INNER JOIN $wpdb->posts t2 ON t1.experiment_id = t2.ID WHERE t1.member_id = %s", $user_id);
$results = $wpdb->get_results($experiments_sql);
$results_count = $wpdb->num_rows;
?>

<div class="wrapper" id="page-wrapper">
	<?php $bgimg = get_template_directory_uri() . "/img/img-header_findaVideo.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="<?php echo esc_attr( $container ); ?>" id="content">
		<div class="row dashboard-row">
			<?php get_sidebar( 'left' ); ?>
			<div class="<?php if ( is_active_sidebar( 'left-sidebar' ) ) : ?>col-md-8<?php else : ?>col-md-12<?php endif; ?> content-area" id="primary">
				<main class="site-main dashboard_content" id="main" role="main">
					<div class="row">
						<div class="dashboard_content--title">
							<h4>My Favourite Experiments</h4>
						</div>
						<div class="clear"></div>
						<div class="container">
						<?php //TODO: STEF TO ADD PAGINATION
						if($results_count > 0) {
							foreach ($results as $result) {
								global $result;
								get_template_part( 'page-templates/members/fav', 'experiment-row' );
							}
						} else {
							echo '<div class="row"><p>You have not liked any experiments yet. Check out some of our experiments here. <a href="'.get_permalink( get_page_by_path( 'try-this-at-home' ) ).'">Find an Experiment</a></p></div>';
						}?>
					</div>
				</div>
			</main><!-- #main -->
		</div><!-- #primary -->
		<menu class="container memberdashboard--menu">
			<div class="row">
				<div class="d-block d-md-none col-sm-12 col-xs-12">
					<div class="memberdashboard--menuwrap">
						<?php dynamic_sidebar( 'left-sidebar' ); ?>
					</div>
					<a href="#" class="memberdashboard--btn">Dashboard Menu</a>
				</div>
			</div>
		</menu>
	</div><!-- .row -->
</div><!-- Container end -->
</div><!-- Wrapper end -->
<?php get_footer(); ?>
