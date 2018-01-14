<?php
/**
 * Template Name: Left and Right Sidebar Layout
 *
 * This template can be used to override the default template and sidebar setup
 *
 * @package understrap
 */
?>
<section class="section" data-anchor="genaero_explorer">
	<div class="container sub_content">
		<div class="row">
			<div class="col-xl-10 offset-xl-1">
				<h2 style="text-align: center;">Why be a Genaero Explorer</h2>
				<div class="genaero_explorer--carousel">
					<?php
					if(have_rows('explorer_slides')) :
						while(have_rows('explorer_slides')) : the_row();
							$icon = get_sub_field('icon');
							$title = get_sub_field('title');
							$copy = get_sub_field('copy');
							?>
							<div class="explorer_slide">
								<div class="post-thumbnail">
									<img src="<?=$icon['url']?>" />
								</div>
								<h2><?=$title?></h2>
								<p class="highlight"><?=$copy?></p>
							</div>
							<?php
						endwhile;
					endif;
				?>
			</div>
		</div>
	</div>
</div>
</section>