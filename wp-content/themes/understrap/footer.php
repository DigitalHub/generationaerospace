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

<?php get_sidebar( 'footerfull' ); ?>
<div class="wrapper" id="wrapper-footer">
	<div class="<?php echo esc_attr( $container ); ?>">
		<div class="row">
			<footer class="site-footer" id="colophon">
				<div class="site-info">
					<p>Copyright <?php the_date(Y); ?>. Powered by Rolls-Royce.</p>
				</div><!-- .site-info -->
			</footer><!-- #colophon -->
		</div><!-- row end -->
	</div><!-- container end -->
</div><!-- wrapper end -->
</div><!-- #page we need this extra closing tag here -->
<?php wp_footer(); ?>
</body>
</html>

