<?php
/**
 * Displays header site-title
 *
 * @package basic
 */

?>
<div class="site-title">
	<a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>">
		<svg class="site-title-border site-title-border--left" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 15.5 42" xml:space="preserve">
			<rect x="0.5" y="0.5" width="3" height="41"></rect>
			<polyline points="8.5,15.9 8.5,0.5 15.5,0.5"></polyline>
			<polyline points="15.5,41.5 8.5,41.5 8.5,26.1"></polyline>
			<circle cx="8.5" cy="21" r="2.5"></circle>
		</svg>

		<svg class="site-title-border site-title-border--right" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 15.5 42" xml:space="preserve">
			<rect x="0.5" y="0.5" width="3" height="41"></rect>
			<polyline points="8.5,15.9 8.5,0.5 15.5,0.5"></polyline>
			<polyline points="15.5,41.5 8.5,41.5 8.5,26.1"></polyline>
			<circle cx="8.5" cy="21" r="2.5"></circle>
		</svg>
		<img src="<?php echo get_template_directory_uri(); ?>/img/logo.png" class="logo_img" alt="Generation Aerospace">
	</a>
</div><!-- .site-title -->

<div class="site-menu">
	<a href="#" class="headerbutt menu_butt">
		<div class="hexagon-icon">
			<svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewbox="0 0 173.20508075688772 200" stroke="#fff" fill="#000" stroke-width="5">
				<path d="M82.27241335952166 2.4999999999999996Q86.60254037844386 0 90.93266739736606 2.4999999999999996L168.87495373796554 47.5Q173.20508075688772 50 173.20508075688772 55L173.20508075688772 145Q173.20508075688772 150 168.87495373796554 152.5L90.93266739736606 197.5Q86.60254037844386 200 82.27241335952166 197.5L4.330127018922194 152.5Q0 150 0 145L0 55Q0 50 4.330127018922194 47.5Z"></path>
			</svg>
			<div class="inner">
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
			</div>
		</div>
		<span>Menu</span>
	</a>
</div>
