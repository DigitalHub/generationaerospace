<?php
/**
 * Displays header site branding
 *
 * @package basic
 */

?>
<div class="site-branding">
	<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
	<?php
	$description = get_bloginfo( 'description', 'display' );
	if ( $description || is_customize_preview() ) :
		echo "<p class='site-description'>$description</p>";
	endif; ?>
</div><!-- .site-branding -->
