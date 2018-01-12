<?php
/**
 * Template Name: Profile Page
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' );

global $wpdb;
$table = $wpdb->prefix.'genaero_members';
$username = $_SESSION['username'];

if($_POST['profile_submit']) {
	$fullname = $wpdb->escape($_POST['profile_fullname']);
	$school = $wpdb->escape($_POST['profile_school']);
	$phone = $wpdb->escape($_POST['profile_phone']);
	$address = $wpdb->escape($_POST['profile_address']);
	$country = $wpdb->escape($_POST['profile_country']);
	$birthdate = $wpdb->escape($_POST['profile_birthdate']);
	$facebook = $wpdb->escape($_POST['profile_facebook']);
	$instagram = $wpdb->escape($_POST['profile_instagram']);
	$bio = $wpdb->escape($_POST['profile_bio']);
	// $photo = $wpdb->escape($_POST['profile_photo']);
	$email = $wpdb->escape($_POST['profile_email']);
	$password = $wpdb->escape($_POST['profile_password']);
	$is_fb_user = $wpdb->escape($_POST['profile_is_fb_user']);

	//if is not fb user and password field is not empty, save password
	if(!$is_fb_user && $password !== NULL && $password !== '') {
		$password = wp_hash_password($password);
		$sql = $wpdb->prepare("UPDATE $table SET fullname=%s,school=%s,phone=%s,address=%s,country=%s,birthdate=%s,facebook=%s,instagram=%s,bio=%s,email=%s,password=%s WHERE username=%s", array($fullname,$school,$phone,$address,$country,$birthdate,$facebook,$instagram,$bio,$email,$password,$username));
		$wpdb->query($sql);
	} else {
		$sql = $wpdb->prepare("UPDATE $table SET fullname=%s,school=%s,phone=%s,address=%s,country=%s,birthdate=%s,facebook=%s,instagram=%s,bio=%s,email=%s WHERE username=%s", array($fullname,$school,$phone,$address,$country,$birthdate,$facebook,$instagram,$bio,$email,$username));
		$wpdb->query($sql);
	}
}

$sql = $wpdb->prepare("SELECT * FROM $table WHERE username = %s", $username);
$results = $wpdb->get_results($sql);
if($wpdb->num_rows > 0) {
	$id = $results[0]->id;
	$email = $results[0]->email;
	$password = $results[0]->password;
	$fullname = $results[0]->fullname;
	$school = $results[0]->school;
	$phone = $results[0]->phone;
	$address = $results[0]->address;
	$country = $results[0]->country;
	$birthdate = $results[0]->birthdate;
	$facebook = $results[0]->facebook;
	$instagram = $results[0]->instagram;
	$bio = $results[0]->bio;
	$photo = $results[0]->photo;
	$is_fb_user = $results[0]->is_fb_user;

	if($photo === '' || $photo === NULL) {
		$photo = get_template_directory_uri().'/img/default-photo.png';
	}
}
?>

<div class="wrapper" id="page-wrapper">
	<?php $bgimg = "http://localhost/generationaerospace/wp-content/themes/understrap/img/Dashboard_Bg.jpg";
	include(locate_template('loop-templates/home-hubbase.php')); ?>
	<div class="<?php echo esc_attr( $container ); ?>" id="content">
		<div class="row dashboard-row">
			<?php get_sidebar( 'left' ); ?>
			<div class="<?php if ( is_active_sidebar( 'left-sidebar' ) ) : ?>col-md-8<?php else : ?>col-md-12<?php endif; ?> content-area" id="primary">
				<main class="site-main dashboard_content" id="main" role="main">
					<form id="profile_form" method="post" action="">
						<div class="dashboard_content--title">
							<h4>My Profile</h4>
						</div>
						<div class="dashboard_content--editlink">
							<input type="submit" name="profile_submit" id="profile_submit" value="Save">
						</div>
						<div class="clear"></div>
						<div class="profile_form--wrapper">
							<label for="fullname">Full Name*</label>
							<input type="text" name="profile_fullname" id="profile_fullname" value="<?=$fullname?>" required>
							<div class="clear"></div>
							<label for="school">School</label>
							<input type="text" name="profile_school" id="profile_school" value="<?=$school?>">
							<div class="clear"></div>
							<label for="phone">Phone Number</label>
							<input type="text" name="profile_phone" id="profile_phone" value="<?=$phone?>">
							<div class="clear"></div>
							<label for="address">Mailing Address</label>
							<input type="text" name="profile_address" id="profile_address" value="<?=$address?>">
							<div class="clear"></div>
							<label for="country">Country</label>
							<input type="text" name="profile_country" id="profile_country" value="<?=$country?>">
							<div class="clear"></div>
							<!-- TODO: STEF TO CHANGE IT TO COUNTRY DROPDOWN -->
							<label for="birthdate">Date of Birth</label>
							<input type="text" name="profile_birthdate" id="profile_birthdate" value="<?=$birthdate?>">
							<div class="clear"></div>
							<!-- TODO: STEF TO CHANGE TO DATESELECT -->
							<label for="facebook">Social Media</label>
							<input type="text" name="profile_facebook" id="profile_facebook" value="<?=$facebook?>" placeholder="Facebook">
							<div class="clear"></div>
							<input type="text" name="profile_instagram" id="profile_instagram" value="<?=$instagram?>" placeholder="Instagram">
							<br>
							<div class="clear"></div>
							<label for="bio">Bio</label>
							<textarea name="profile_bio" id="profile_bio" rows="5" cols="70"><?=$bio?></textarea>
							<br>
							<div class="clear"></div>
							<div class="profile_photo--wrapper">
								<label for="profile_photo">Profile Photo</label>
								<img src="<?=$photo?>" id="profile_photo" alt="<?=$fullname?>'s Profile Photo" width="100px">
								<input type="file" name="profile_photo" accept="image/*">
								<!-- TODO: STEF TO ADD PHOTO PREVIEW AND UPLOAD FUNCTION -->
							</div>
							<div class="clear"></div><br>
							<h5>Login Information</h5>
							<label for="email">Email Address*</label>
							<input type="text" name="profile_email" id="profile_email" value="<?=$email?>" required>
							<input type="hidden" name="profile_is_fb_user" value="<?=$is_fb_user?>">
							<div class="clear"></div>
							<?php if(!$is_fb_user) { ?>
							<label for="password">Password*</label>
							<div class="hide-show"><span>Show</span></div>
							<input type="password" name="profile_password" id="profile_password" title="Password must be between 6-14 characters long with alphabets and numbers." minlength="6" maxlength="14" pattern="^(?=.*\d)(?=.*[a-zA-Z])(?!.*\s).*$" autocomplete="new-password">
							<?php } ?>
						</div>
					</form>

				</main><!-- #main -->

			</div><!-- #primary -->

		</div><!-- .row -->

	</div><!-- Container end -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
