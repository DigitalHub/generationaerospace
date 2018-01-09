<?php
/**
 * Template Name: Page Trailblazers
 *
 * Template for displaying a page without sidebar even if a sidebar widget is published.
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' ); ?>

<div class="container-fluid single_trailblazers">
	<div class="row">
		<div class="col-xl-7 col-lg-7 col-md-7 col-sm-12 col-xs-12 single_trailblazers--profile">
			<div class="col-xl-10 offset-xl-2 col-lg-11 offset-lg-1 col-md-12 col-sm-12 col-xs-12 single_trailblazers--profile_wrapper">
				<div class="row single_trailblazers--row">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12  single_trailblazers--col">
						<div class="row">
							<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<h1>Profile_</h1>
							</div>
							<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 col-xs-12">
								<div class="post-thumbnail">
									<img src="<?php echo get_template_directory_uri(); ?>/img/img-Trailblazers_Mariani.jpg" />
								</div>
							</div>
							<div class="col-xl-7 col-lg-7 col-md-7 col-sm-12 col-xs-12">
								<h2>Mariani Dowood</h2>
								<p class="highlight">Engine Assembly Technician</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque perspiciatis sequi, nam accusantium, tempore sapiente provident facilis hic sint ipsum quo incidunt, temporibus quia eum dolorum aut. Consequatur odit, dolore hic illo minima ad obcaecati recusandae repudiandae qui enim autem rerum labore asperiores nam illum. <br/><br/>
								libero repellendus ut maiores rem suscipit fugit perspiciatis, quod tempore unde. Error aperiam, dignissimos quidem, placeat natus libero. Illo, similique perferendis error sequi tenetur debitis vel vero ullam, dolores, non cumque at! Accusantium aliquam blanditiis voluptates eius, iusto amet quisquam eum delectus obcaecati eligendi sed distinctio incidunt, facere vel molestiae eveniet omnis quam corporis ratione.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 col-xs-12 single_trailblazers--video">
			<div class="row single_trailblazers--row">
				<div class="single_trailblazers--col col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12">

					<h1>Video_</h1>
					<div class="single_trailblazers--iframe">
						<iframe src="https://www.youtube.com/embed/kPDnw3_1GOI" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
					</div>
					<h3>Mariani Dawwod - Engine Assembly Technician</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. In qui mollitia sapiente iure odit doloremque molestias.</p>

					<br>
					<div class="addthis_inline_share_toolbox_dznu"></div>
				</div>
				<div class="col-xl-2 col-lg-2 hidden-md-down" style="color: transparent;">Lorem</div><!-- this is to push video col to left  -->
			</div>
		</div>
	</div>
</div>
<?php get_footer(); ?>