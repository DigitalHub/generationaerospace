<?php
/**
 * Template Name: Page Experiments
 *
 * Template for displaying a page without sidebar even if a sidebar widget is published.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); 

global $loggedin;
$username = $_SESSION['username'];
$user_id = $_SESSION['user_id'];

global $wpdb;
$members_table = $wpdb->prefix.'genaero_members';
$fav_experiments_table = $wpdb->prefix . 'genaero_favourite_experiments';

//get favourites if loggedin
if($loggedin == '1') {
	$favs_sql = $wpdb->prepare("SELECT experiment_id FROM $fav_experiments_table WHERE member_id = '%s'", $user_id);
	$favs_results = $wpdb->get_results($favs_sql);
	$favs_count = $wpdb->num_rows;
	$fav_exp_ids = array();
	if($favs_count > 0) {
		foreach($favs_results as $result) {
			array_push($fav_exp_ids,$result->experiment_id);
		}
		echo '<script>fav_exp_ids = '.json_encode($fav_exp_ids).'</script>';
	}
}

$tags = get_field('tags');
$num_of_tags = count($tags);

global $the_query;

$cpt = 'genaero_experiments';
$posts_per_page = 3;
$template = 'experiment';


if($_GET['keyword']) {
	$keyword = $_GET['keyword'];
	$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
	$args = array(
		'post_type' => $cpt,
		'tag_slug__in' => $keyword,
		'posts_per_page' => $posts_per_page,
		'paged' =>  $paged,
	);
	$the_query = new WP_Query( $args );
	$post_count = $the_query->post_count;
} else {
//Load More AJAX
	$keyword = '';
	$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
	$args = array(
		'post_type' => $cpt,
		'posts_per_page' => $posts_per_page,
		'paged' =>  $paged,
	);
	$the_query = new WP_Query( $args );
	$post_count = $the_query->post_count;
}

?>

<section class="subpage--hud">
	<?php $bgimg = "http://localhost/generationaerospace/wp-content/themes/understrap/img/Dashboard_Bg.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="subpage--content">
		<div class="container">
			<div class="row">
				<div class="col-xl-8 offset-xl-2">
					<h1><?php the_title(); ?></h1>
					<?php 
					if (have_posts()) : while (have_posts()) : the_post(); 
						the_content();
					endwhile; endif; 
					?>
					<div class="search-form">
						<input type="text" id="experiment_search" name="experiment_search" value="<?=$keyword?>" />
						<button type="submit" id="experiment_submit" name="experiment_submit" data-cpt="<?=$cpt?>" data-posts_per_page="<?=$posts_per_page?>" data-template="<?=$template?>">
							<i class="fal fa-search"></i>
						</button>
					</div>
					<p>Suggestion search: 
						<?php
						if($tags) {
							$count = 0;
							// TODO: STEF TO ADD TAG LINK
							foreach($tags as $tag) {
								echo '<a href="'.get_term_link( $tag ).'">'.$tag->name.'</a>';
								$count++;
								if($count < $num_of_tags) {
									echo ', ';
								}
							}
						}
						?>
					</p>
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
					<img class="ajax-loading" src="<?php echo get_template_directory_uri();?>./img/ajax-loader.gif" style="display:none">
					<main class="site-main" id="main" role="main">
						<?php
						if($the_query->have_posts()) :
							$count = 0;
							while($the_query->have_posts()) : $the_query->the_post();
								if($count % $posts_per_page == 0) :
									echo $count > 0 ? '</div>' : '';
									echo '<div class="row">';
								endif;
								get_template_part( 'loop-templates/tile', $template );
								$count++;
							endwhile;

							if($count % $posts_per_page !== 0) {
								echo '</div>';
							}
						endif;
						?>
					</main><!-- #main -->
					<?php 
					if (  $the_query->max_num_pages > 1 ) {
						echo '<div class="row"><a href="#" class="genaero_loadmore" data-cpt="'.$cpt.'" data-posts_per_page="'.$posts_per_page.'" data-template="'.$template.'">More posts</a></div>';
					}
					?>
					<div class="clear"></div>
					
					<!-- TODO: STEF TO ADD LOAD MORE -->
					<a href="#" class="defaultbtn btn--default aligncenter">
						<div class="defaultbtn-wrapper"><span>See More Videos</span></div>
					</a>

				</div><!-- #primary -->
			</div><!-- .row end -->
		</div><!-- Container end -->
	</div><!-- Wrapper end --></section>
	<?php get_footer(); ?>
