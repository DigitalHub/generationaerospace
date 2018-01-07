<?php
/**
 * Displays top navigation
 *
 * @package basic
 */

?>
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
						<nav id="site-navigation" class="main-navigation" role="navigation"> 
							<ol><?php wp_nav_menu( array( 'menu' => 'primary Menu', 'container'	=> false, 'items_wrap'=> '%3$s', 'depth' => 0, ) ); ?></ol>
						</nav>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<div class="menu-content__footer small-text">
		<?php wp_nav_menu( array( 'menu' => 'footer menu', 'container' => false, 'depth' => 0, ) ); ?>
	</div>
</menu>