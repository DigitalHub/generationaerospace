<?php
/**
 * Post rendering content according to caller of get_template_part.
 *
 * @package understrap
 */

?>
<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-x-12 vault--card">
	<a href="<?php the_permalink(); ?>">
		<?php custom_post_thumbnail(); ?>

		<div class="vault_card--content">
			<?php the_title(); ?>
		</div>
	</a>
</div><!-- .vault-card end -->