<?php
/**
 * The sidebar containing the main widget area.
 *
 * @package understrap
 */

global $wpdb;
$table = $wpdb->prefix.'genaero_members';
$username = $_SESSION['username'];

$sql = $wpdb->prepare("SELECT * FROM $table WHERE username = %s", $username);
$results = $wpdb->get_results($sql);
if($wpdb->num_rows > 0) {
	$fullname = $results[0]->fullname;
	$photo = $results[0]->photo;

	if($photo === '' || $photo === NULL) {
		$photo = get_template_directory_uri().'/img/default-photo.png';
	}
}

if ( ! is_active_sidebar( 'left-sidebar' ) ) {
	return;
}

// when both sidebars turned on reduce col size to 3 from 4.
$sidebar_pos = get_theme_mod( 'understrap_sidebar_position' );
?>

<?php if ( 'both' === $sidebar_pos ) : ?>
<div class="col-md-3 widget-area" id="left-sidebar" role="complementary">
	<?php else : ?>
<div class="col-md-4 widget-area" id="left-sidebar" role="complementary">
	<?php endif; ?>

<img src="<?=$photo?>" id="profile_photo" alt="<?=$fullname?>'s Profile Photo" width="100px">
<h3><?=$fullname?></h3>
<?php dynamic_sidebar( 'left-sidebar' ); ?>

</div><!-- #secondary -->
