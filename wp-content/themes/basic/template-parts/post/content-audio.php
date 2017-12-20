<?php
/**
 * Template part for displaying audio posts
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package basic
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="entry-header">
		<?php the_title( '<h2 class="entry-title">', '</h2>' ); ?>
		<div class="entry-meta"><?php basic_posted_on(); ?></div>
	</header><!-- .entry-header -->

	<?php
	$content = apply_filters( 'the_content', get_the_content() );
	$audio = false;

		// Only get audio from the content if a playlist isn't present.
	if ( false === strpos( $content, 'wp-playlist-script' ) ) {
		$audio = get_media_embedded_in_content( $content, array( 'audio' ) );
	}

	?>
	
	<?php if ( '' !== get_the_post_thumbnail() ) : ?>
		<div class="post-thumbnail">
			<a href="<?php the_permalink(); ?>">
				<?php the_post_thumbnail(); ?>
			</a>
		</div><!-- .post-thumbnail -->
	<?php endif; ?>

	<div class="entry-content">
		<?php if ( ! empty( $audio ) ) :
		foreach ( $audio as $audio_html ) {
			echo '<div class="entry-audio">';
			echo $audio_html;
			echo '</div><!-- .entry-audio -->';
		}
		endif;
		the_content();
		?>
	</div><!-- .entry-content -->

	<footer class="entry-footer">
		<?php basic_entry_footer(); ?>
	</footer><!-- .entry-footer -->

</article><!-- #post-## -->
