<?php
/**
 * Displays top navigation
 *
 * @package basic
 */

?>
<!-- <nav id="site-navigation" class="main-navigation" role="navigation"> 
	<?php //wp_nav_menu( array( 'theme_location' => 'menu-1', 'menu_id' => 'primary-menu' ) ); ?>
</nav>--><!-- #site-navigation -->
<menu id="menu-content" class="menu-content">
	<a href="#" class="menu_butt__close headerbutt close_butt">
		<i class="fal"></i>
		<span>Close</span>
	</a>
	<div class="container">
		<div class="menu__wrapper">
			<div class="search-form">
				<input type="text" />
				<button type="submit"><i class="fal fa-search"></i></button>
			</div>
			<div class="menu-content__wrapper">
				<nav class="menu-content__nav">
					<div class="menu-content__nav--label">menu</div>
					<div class="menu-content__nav--login small-text"><a href="#">Login</a> or <a href="#">Register</a> to join us</div>
					<div class="corner corner-top-left"></div>
					<div class="corner corner-top-right"></div>
					<div class="corner corner-bottom-left"></div>
					<div class="corner corner-bottom-right"></div>
					
					<div class="menu-content__list">
						<a href="#">
							<span>01</span>
							<p>home</p>
						</a>
						<a href="#">
							<span>02</span>
							<p>find a video</p>
						</a>
						<a href="#">
							<span>03</span>
							<p>find an experiments</p>
						</a>
						<a href="#">
							<span>04</span>
							<p>genaero trailblazers</p>
						</a>
						<a href="#">
							<span>05</span>
							<p>events</p>
						</a>
						<a href="#">
							<span>06</span>
							<p>the vault</p>
						</a>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<div class="menu-content__footer small-text"><a href="#">Terms &amp; Conditions</a> | <a href="#">Privacy Policy</a></div>
</menu>