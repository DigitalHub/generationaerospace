<?php
/**
 * Post rendering content according to caller of get_template_part.
 *
 * @package understrap
 */

?>

<!-- TODO: RACH TO ADD HOVER EFFECTS -->
<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-x-12 vault--card">
	<div class="post-thumbnail">
		<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail( 'medium' ); ?></a>
	</div>
	<div class="vault_card--content">
		<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
	</div>
</div><!-- .vault-card end -->