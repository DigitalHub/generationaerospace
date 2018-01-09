<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package understrap
 */

$the_theme = wp_get_theme();
$container = get_theme_mod( 'understrap_container_type' );
?>
<!-- <a href="#" class="scrolling up--button down--button">
	<div class="headerbutt scroll_butt">
		<div class="hexagon-icon">
			<svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewbox="0 0 173.20508075688772 200" stroke="#fff" fill="#000" stroke-width="5">
				<path d="M82.27241335952166 2.4999999999999996Q86.60254037844386 0 90.93266739736606 2.4999999999999996L168.87495373796554 47.5Q173.20508075688772 50 173.20508075688772 55L173.20508075688772 145Q173.20508075688772 150 168.87495373796554 152.5L90.93266739736606 197.5Q86.60254037844386 200 82.27241335952166 197.5L4.330127018922194 152.5Q0 150 0 145L0 55Q0 50 4.330127018922194 47.5Z"></path>
			</svg>
			<i class="fal"></i>
		</div>
		<span>scroll</span>
	</div>
</a> -->
<?php get_sidebar( 'footerfull' ); ?>
<div class="wrapper" id="wrapper-footer">
	<div class="<?php echo esc_attr( $container ); ?>">
		<div class="row">
			<footer class="site-footer" id="colophon">
				<div class="site-info">
					<p>Copyright <?php echo date(Y); ?>. Powered by Rolls-Royce.</p>
				</div><!-- .site-info -->
			</footer><!-- #colophon -->
		</div><!-- row end -->
	</div><!-- container end -->
</div><!-- wrapper end -->
</div><!-- #page we need this extra closing tag here -->
<?php wp_footer(); ?>

<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5a52e2069431fe9c"></script>

</body>
</html>

