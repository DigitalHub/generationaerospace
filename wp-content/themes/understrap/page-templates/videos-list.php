<?php
/**
 * Template Name: Videos List Page
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' );

global $wpdb;
$videos_table = $wpdb->prefix.'genaero_videos';
$username = $_SESSION['username'];
$user_id = $_SESSION['user_id'];

$videos_sql = $wpdb->prepare("SELECT * FROM $videos_table INNER JOIN $wpdb->posts ON $videos_table.link_id = $wpdb->posts.id WHERE member_id = %s", $user_id);
$results = $wpdb->get_results($videos_sql);
$results_count = $wpdb->num_rows;
?>

<div class="wrapper" id="page-wrapper">

	<div class="<?php echo esc_attr( $container ); ?>" id="content">

		<div class="row">

			<?php get_sidebar( 'left' ); ?>

			<div
			class="<?php if ( is_active_sidebar( 'left-sidebar' ) ) : ?>col-md-8<?php else : ?>col-md-12<?php endif; ?> content-area"
			id="primary">

			<main class="site-main" id="main" role="main">

				<div class="col-lg-8">
					<h4>My Videos</h4>
				</div>
				<div class="col-lg-4">
					<a href="<?php echo get_permalink( get_page_by_path( 'submit-a-video' ) ) ?>">Add New</a>
				</div>

				<div class="container">

					<?php
					//TODO: STEF TO ADD PAGINATION
					if($results_count > 0) {
						foreach ($results as $result) {
							global $result;
							get_template_part( 'page-templates/members/video', 'row' );
						}
					} else {
						echo '<p>You have not submitted any videos yet. Why not submit your own video here?</p>';
						echo '<a href="'.get_permalink( get_page_by_path( 'submit-a-video' ) ).'">Submit New Video</a>';
					}
					?>

				</div>

			</main><!-- #main -->

		</div><!-- #primary -->

	</div><!-- .row -->

</div><!-- Container end -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
