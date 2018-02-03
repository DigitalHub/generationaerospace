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


get_sidebar( 'footerfull' );

if ( is_singular( 'genaero_trailblazers' ) ) { //for fancybox   
} else { ?>
<div class="wrapper" id="wrapper-footer">
	<footer class="site-footer" id="colophon">
		<div class="site-info">
			<p>Copyright <?php echo date(Y); ?>. <a href="http://www.rolls-royce.com/country-sites/sea.aspx" target="_blank">Powered by Rolls-Royce.</a></p>
		</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- wrapper end -->

<?php } ?>
</div><!-- #page we need this extra closing tag here -->
<?php wp_footer(); ?>

<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5a52e2069431fe9c"></script>

</body>
</html>

