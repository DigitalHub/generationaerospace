<?php
/**
 * Template Name: Profile Page
 *
 * @package understrap
 */

get_header();
$container = get_theme_mod( 'understrap_container_type' );

$countries = array("Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegowina", "Botswana", "Bouvet Island", "Brazil", "British Indian Ocean Territory", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo", "Congo, the Democratic Republic of the", "Cook Islands", "Costa Rica", "Cote d'Ivoire", "Croatia (Hrvatska)", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Falkland Islands (Malvinas)", "Faroe Islands", "Fiji", "Finland", "France", "France Metropolitan", "French Guiana", "French Polynesia", "French Southern Territories", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard and Mc Donald Islands", "Holy See (Vatican City State)", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran (Islamic Republic of)", "Iraq", "Ireland", "Israel", "Italy", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, Democratic People's Republic of", "Korea, Republic of", "Kuwait", "Kyrgyzstan", "Lao, People's Democratic Republic", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libyan Arab Jamahiriya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia, The Former Yugoslav Republic of", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Federated States of", "Moldova, Republic of", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romania", "Russian Federation", "Rwanda", "Saint Kitts and Nevis", "Saint Lucia", "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Seychelles", "Sierra Leone", "Singapore", "Slovakia (Slovak Republic)", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia and the South Sandwich Islands", "Spain", "Sri Lanka", "St. Helena", "St. Pierre and Miquelon", "Sudan", "Suriname", "Svalbard and Jan Mayen Islands", "Swaziland", "Sweden", "Switzerland", "Syrian Arab Republic", "Taiwan, Province of China", "Tajikistan", "Tanzania, United Republic of", "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "United States Minor Outlying Islands", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "Virgin Islands (British)", "Virgin Islands (U.S.)", "Wallis and Futuna Islands", "Western Sahara", "Yemen", "Yugoslavia", "Zambia", "Zimbabwe");

global $wpdb;
$table = $wpdb->prefix.'genaero_members';
$username = $_SESSION['username'];

//function to generate response
function my_contact_form_generate_response($type, $message){
	global $response;
	if($type === 'error')
		$response = "<div class='error'>{$message}</div>";
	if($type === 'success')
		$response = "<div class='success'>{$message}</div>";
}

//response messages
$large_file = "File size is too large. Please upload a photo that is less than 1MB in size";
$wrong_type = "Wrong file type. Please upload image files with extension gif, jpg, jpeg and png only.";
$try_again = "There was an error in uploading your profile photo. Please try again.";
$success = "Your profile has been updated.";

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
	$email = $wpdb->escape($_POST['profile_email']);
	$password = $wpdb->escape($_POST['profile_password']);
	$is_fb_user = $wpdb->escape($_POST['profile_is_fb_user']);

	if($_FILES['profile_photo_file']['name']) {
		$allowedExts = array("gif", "jpeg", "jpg", "png");
		$temp = explode(".", $_FILES["profile_photo_file"]["name"]);
		$extension = end($temp);
		if ((($_FILES["profile_photo_file"]["type"] == "image/gif") || ($_FILES["profile_photo_file"]["type"] == "image/jpeg") || ($_FILES["profile_photo_file"]["type"] == "image/jpg") || ($_FILES["profile_photo_file"]["type"] == "image/pjpeg") || ($_FILES["profile_photo_file"]["type"] == "image/x-png") || ($_FILES["profile_photo_file"]["type"] == "image/png")) && in_array($extension, $allowedExts)) {

			$filename = $_FILES['profile_photo_file']['name'];
			$filetemp = $_FILES['profile_photo_file']['tmp_name'];
			$filetype = $_FILES['profile_photo_file']['type'];
			$filesize = $_FILES['profile_photo_file']['size'];

			if($filesize > (1024000)) {
				my_contact_form_generate_response("error", $large_file);
			} else {
				$wordpress_upload_dir = wp_upload_dir();
				$newfilename = $username.'-profile.'.end($temp);
				$new_file_path = $wordpress_upload_dir['path'] . '/' . $newfilename;
				$new_file_url = $wordpress_upload_dir['url'] . '/' . $newfilename;

				if(move_uploaded_file($filetemp, $new_file_path)) {
					my_contact_form_generate_response("success", $success);

					$upload_id = wp_insert_attachment( array(
						'guid'           => $new_file_path, 
						'post_mime_type' => $filetype,
						'post_title'     => $username.'\'s Profile Photo',
						'post_content'   => '',
						'post_status'    => 'inherit'
					), $new_file_path );

					require_once( ABSPATH . 'wp-admin/includes/image.php' );

					wp_update_attachment_metadata( $upload_id, wp_generate_attachment_metadata( $upload_id, $new_file_path ) );

					if(!$is_fb_user && $password !== NULL && $password !== '') {
						$password = wp_hash_password($password);
						$sql = $wpdb->prepare("UPDATE $table SET fullname=%s,school=%s,phone=%s,address=%s,country=%s,birthdate=%s,facebook=%s,instagram=%s,bio=%s,photo=%s,email=%s,password=%s WHERE username=%s", array($fullname,$school,$phone,$address,$country,$birthdate,$facebook,$instagram,$bio,$new_file_url,$email,$password,$username));
						$wpdb->query($sql);
					} else {
						$sql = $wpdb->prepare("UPDATE $table SET fullname=%s,school=%s,phone=%s,address=%s,country=%s,birthdate=%s,facebook=%s,instagram=%s,bio=%s,photo=%s,email=%s WHERE username=%s", array($fullname,$school,$phone,$address,$country,$birthdate,$facebook,$instagram,$bio,$new_file_url,$email,$username));
						$wpdb->query($sql);
					}	
				} else {
					my_contact_form_generate_response("error", $try_again);
				}
			}
		} else {
			my_contact_form_generate_response("error", $wrong_type);
		}
	} else {
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
	<?php $bgimg = get_template_directory_uri() . "/img/img-header_findaVideo.jpg";
	include(locate_template('loop-templates/hub-base.php')); ?>
	<div class="<?php echo esc_attr( $container ); ?>" id="content">
		<div class="row dashboard-row">
			<?php get_sidebar( 'left' ); ?>
			<div class="<?php if ( is_active_sidebar( 'left-sidebar' ) ) : ?>col-md-8<?php else : ?>col-md-12<?php endif; ?> content-area" id="primary">
				<main class="site-main dashboard_content" id="main" role="main">
					<form id="profile_form" method="post" action="" enctype="multipart/form-data">
						<div class="dashboard_content--title-half">
							<h4>My Profile</h4>
						</div>
						<div class="dashboard_content--editlink">
							<input type="submit" name="profile_submit" id="profile_submit" value="Save">
						</div>
						<div class="clear"></div>
						<div class="profile_form--wrapper">
							<?php echo $response; ?>
							<div class="clear"></div>

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
							<select name="profile_country" id="profile_country">
								<option value="">--Select Country--</option>
								<?php
								foreach($countries as $each) {
									if($each == $country) {
										$select = ' selected ';
									} else {
										$select = '';
									}
									echo '<option value="'.$each.'" '.$select.'>'.$each.'</option>';
								}
								?>
							</select>
							<div class="clear"></div>
							<label for="birthdate">Date of Birth</label>
							<input type="date" name="profile_birthdate" id="profile_birthdate" value="<?=$birthdate?>">
							<div class="clear"></div>
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
								<input type="file" name="profile_photo_file" id="profile_photo_file" accept="image/*">
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

			<menu class="d-block d-md-none col-sm-12 col-xs-12 memberdashboard--menu">
				<div class="memberdashboard--menuwrap">
					<?php dynamic_sidebar( 'left-sidebar' ); ?>
				</div>
				<a href="#" class="memberdashboard--btn">Dashboard Menu</a>
			</menu>

		</div><!-- .row -->

	</div><!-- Container end -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>