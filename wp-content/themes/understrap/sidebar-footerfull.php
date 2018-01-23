<?php
/**
 * Sidebar setup for footer full.
 *
 * @package understrap
 */

if ( ! is_home() && is_front_page() ) { ?>
<a class="homescroll scrolling down--button text--left">
	<div class="headerbutt scroll_butt">
		<div class="hexagon-icon">
			<svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewbox="0 0 173.20508075688772 200" stroke="#fff" fill="#000" stroke-width="5">
				<path d="M82.27241335952166 2.4999999999999996Q86.60254037844386 0 90.93266739736606 2.4999999999999996L168.87495373796554 47.5Q173.20508075688772 50 173.20508075688772 55L173.20508075688772 145Q173.20508075688772 150 168.87495373796554 152.5L90.93266739736606 197.5Q86.60254037844386 200 82.27241335952166 197.5L4.330127018922194 152.5Q0 150 0 145L0 55Q0 50 4.330127018922194 47.5Z"></path>
			</svg>
			<i class="fal bounce"></i>
		</div>
		<span>scroll</span>
	</div>
</a>
<a class="homescroll scrolling up--button text--left">
	<div class="headerbutt scroll_butt">
		<div class="hexagon-icon">
			<svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewbox="0 0 173.20508075688772 200" stroke="#fff" fill="#000" stroke-width="5">
				<path d="M82.27241335952166 2.4999999999999996Q86.60254037844386 0 90.93266739736606 2.4999999999999996L168.87495373796554 47.5Q173.20508075688772 50 173.20508075688772 55L173.20508075688772 145Q173.20508075688772 150 168.87495373796554 152.5L90.93266739736606 197.5Q86.60254037844386 200 82.27241335952166 197.5L4.330127018922194 152.5Q0 150 0 145L0 55Q0 50 4.330127018922194 47.5Z"></path>
			</svg>
			<i class="fal bounce"></i>
		</div>
		<span>scroll</span>
	</div>
</a>
<?php //} elseif (is_singular( array( 'genaero_videos', 'genaero_experiments', 'genaero_events', 'genaero_vault' ) )) { ?>
<!-- <a id="link" class="scrolling">
	<div class="headerbutt scroll_butt">
		<div class="hexagon-icon">
			<svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewbox="0 0 173.20508075688772 200" stroke="#000" fill="transparent" stroke-width="5">
				<path d="M82.27241335952166 2.4999999999999996Q86.60254037844386 0 90.93266739736606 2.4999999999999996L168.87495373796554 47.5Q173.20508075688772 50 173.20508075688772 55L173.20508075688772 145Q173.20508075688772 150 168.87495373796554 152.5L90.93266739736606 197.5Q86.60254037844386 200 82.27241335952166 197.5L4.330127018922194 152.5Q0 150 0 145L0 55Q0 50 4.330127018922194 47.5Z"></path>
			</svg>
			<i class="fal bounce"></i>
		</div>
		<span>scroll</span>
	</div>
</a> -->
<?php } elseif (is_page_template( 'page-events.php' ) || is_page_template( 'page-experiments.php' ) || is_page_template( 'page-trailblazers.php' ) || is_page_template( 'page-vault.php' )) { ?>
<a id="link" class="scrolling">
	<div class="headerbutt scroll_butt">
		<div class="hexagon-icon">
			<svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewbox="0 0 173.20508075688772 200" stroke="#000" fill="transparent" stroke-width="5">
				<path d="M82.27241335952166 2.4999999999999996Q86.60254037844386 0 90.93266739736606 2.4999999999999996L168.87495373796554 47.5Q173.20508075688772 50 173.20508075688772 55L173.20508075688772 145Q173.20508075688772 150 168.87495373796554 152.5L90.93266739736606 197.5Q86.60254037844386 200 82.27241335952166 197.5L4.330127018922194 152.5Q0 150 0 145L0 55Q0 50 4.330127018922194 47.5Z"></path>
			</svg>
			<i class="fal bounce"></i>
		</div>
		<span>scroll</span>
	</div>
</a>
<?php } ?>