<?php
/**
 * Displays site footer if assigned
 *
 * @package basic
 */

?><div class="site-info">
	<a href="<?php echo esc_url( __( 'https://wordpress.org/', 'basic' ) ); ?>"><?php printf( esc_html__( 'Proudly powered by %s', 'basic' ), 'WordPress' ); ?></a>
	<span class="sep"> | </span>
	<?php printf( esc_html__( 'Theme: %1$s by %2$s.', 'basic' ), 'basic', '<a href="https://automattic.com/" rel="designer">Underscores.me</a>' ); ?>
</div><!-- .site-info -->