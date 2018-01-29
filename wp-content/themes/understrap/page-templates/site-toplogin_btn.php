<?php
/**
 * Displays header site-title
 *
 * @package basic
 */
global $wpdb;
global $loggedin;
$table = $wpdb->prefix.'genaero_members';

if($loggedin == 1) :
	$username = $_SESSION['username'];
	$sql = $wpdb->prepare("SELECT fullname,photo FROM $table WHERE username = %s", $username);
	$results = $wpdb->get_results($sql);
	if($wpdb->num_rows > 0) {
		foreach($results as $result) {
			$fullname = $result->fullname;
			$photo = $result->photo;
		}
	}

	if($fullname === '' || $fullname === NULL) {
		$fullname = $username;
	}
	if($photo === '' || $photo === NULL) {
		$photo = get_template_directory_uri().'/img/default-photo.png';
	} else {
		$wordpress_upload_dir = wp_upload_dir();
		$photo = $wordpress_upload_dir['baseurl'] . '/genaero-members/' . $photo;
	}
	?>
	<div class="site-toplogin_btn">
		<a href="<?php echo get_permalink( get_page_by_path( 'member-dashboard' ) ) ?>" class="headerbutt login_butt">

			<div class="hexagon"><div class="hexagon-in1"><div style="background-image: url(<?=$photo?>);" class="hexagon-in2">
			</div></div></div>
			<span><?=$fullname;?></span>
		</a>
	</div>
<?php elseif($loggedin == 0) : ?>
	<div class="site-toplogin_btn">
		<a href="<?php echo get_permalink( get_page_by_path( 'login' ) ) ?>" class="headerbutt login_butt">
			<div class="hexagon-icon">
				<svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewbox="0 0 173.20508075688772 200" stroke="#fff" fill="#000" stroke-width="5">
					<path d="M82.27241335952166 2.4999999999999996Q86.60254037844386 0 90.93266739736606 2.4999999999999996L168.87495373796554 47.5Q173.20508075688772 50 173.20508075688772 55L173.20508075688772 145Q173.20508075688772 150 168.87495373796554 152.5L90.93266739736606 197.5Q86.60254037844386 200 82.27241335952166 197.5L4.330127018922194 152.5Q0 150 0 145L0 55Q0 50 4.330127018922194 47.5Z"></path>
				</svg>
				<i class="fal"></i>
			</div>
			<span>LOGIN</span>
		</a>
	</div>
<?php endif;?>