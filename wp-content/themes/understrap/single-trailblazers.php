<?php
/**
 * The template for displaying all single posts.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); ?>
<div class="container-fluid single_trailblazers">
	<div class="row">
		<div class="col-xl-7 single_trailblazers--profile">
			<div class="single_trailblazers--profile_wrapper">
				<div class="alignleft">
					<h1>Profile_</h1>
					<div class="post-thumbnail">
						<img src="<?php echo get_template_directory_uri(); ?>/img/img-Trailblazers_Mariani.jpg" />
					</div>
				</div>
				<div class="alignleft ">
					<h2>Mariani Dowood</h2>
					<p class="highlight">Engine Assembly Technician</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque perspiciatis sequi, nam accusantium, tempore sapiente provident facilis hic sint ipsum quo incidunt, temporibus quia eum dolorum aut. Consequatur odit, dolore hic illo minima ad obcaecati recusandae repudiandae qui enim autem rerum labore asperiores nam illum. <br/><br/>
					libero repellendus ut maiores rem suscipit fugit perspiciatis, quod tempore unde. Error aperiam, dignissimos quidem, placeat natus libero. Illo, similique perferendis error sequi tenetur debitis vel vero ullam, dolores, non cumque at! Accusantium aliquam blanditiis voluptates eius, iusto amet quisquam eum delectus obcaecati eligendi sed distinctio incidunt, facere vel molestiae eveniet omnis quam corporis ratione.</p>
				</div>
			</div>
		</div>
		<div class="col-xl-5 single_trailblazers--video">
			
			<h1>Video_</h1>
			<img src="<?php echo get_template_directory_uri(); ?>/img/imgbg_homepage-trailblizers.jpg" />
			<h3>Mariani Dawwod - Engine Assembly Technician</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. In qui mollitia sapiente iure odit doloremque molestias.</p>
		</div>
	</div>
</div>
<?php get_footer(); ?>