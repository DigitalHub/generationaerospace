<?php
/**
 * Template Name: Login Page
 *
 * Template for displaying a login page.
 *
 * @package understrap
 */

//response generation function
global $wpdb;
$response = "";

//RACH: DON'T STYLE THIS FIRST. WILL DISCUSS WITH YOU WHEN YOU REACH HERE
//
//function to generate response
function my_contact_form_generate_response($type, $message){
	global $response;
	$response = "<div class='error'>{$message}</div>";
}

//response messages
$missing_content = "Please fill in all fields.";
$wrong_login_details = "Wrong username or password. Please try again.";

//user posted variables
$username = $wpdb->escape($_POST['login_username']);
$password = $wpdb->escape($_POST['login_password']);

// TODO: STEF TO ADD 'USERNAME IS TAKEN' IF USER IS TRYING TO LOGIN WITH A FB USERNAME MANUALLY

//validate empty content
if ($_POST['login_submit']) {
	$table = $wpdb->prefix.'genaero_members';

	if(empty($username) || empty($password)) {
		my_contact_form_generate_response("error", $missing_content);
	} else {
		//check username
		$username_sql = $wpdb->prepare("SELECT * FROM $table WHERE username = %s", $username);
		$results = $wpdb->get_results($username_sql);
		if($wpdb->num_rows > 0) {
			//check password
			$hashed_password = $results[0]->password;
			if(wp_check_password($password, $hashed_password)) {
				$user_id = $results[0]->id;

				session_start();
				$_SESSION['username'] = $username;
				$_SESSION['user_id'] = $user_id;
				wp_redirect( 'member-dashboard', 301 );
				exit; 
			} else {
				my_contact_form_generate_response("error", $wrong_login_details);
			}
		} else {
			my_contact_form_generate_response("error", $wrong_login_details);
		}

	}				
}

get_header();
$container = get_theme_mod( 'understrap_container_type' );

?>

<div class="wrapper" id="full-width-page-wrapper">

	<main id="main" class="site-main container" role="main">

		<div class="HudOverlay">
			<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1316 835" style="enable-background:new 0 0 1316 835" xml:space="preserve" class="HudOverlay-fullBorder" preserveAspectRatio="none"> 
				<defs>
					<clipPath id="my-shape">
						<path d="M1294.4,37.7c0-7.3-4.9-13.3-11-13.3c-3.6-0.1-214.9-8.9-393.6-16v1.1c178.7,7.1,390,15.8,393.6,16
						c5.5,0,10.1,5.5,10.1,12.2c0.2,3.2,21.6,318.7,21.6,387.7c0,69.1-21.4,389-21.6,392.3c0,6.7-4.5,12.2-10.1,12.2H31.5
						c-5.5,0-10.1-5.5-10.1-12.2c-0.1-1.7-14.6-172.1-20-308.6c6.9-9.8,13.8-21,13.9-21.1l0.1-0.1l0.8-120.3l-0.1-0.2
						C16.1,367.2,7.9,356,1,347.2C5.9,210,21.3,39.4,21.4,37.7c0-6.7,4.5-12.2,10.1-12.2c3.6-0.2,219.7-9.4,394.7-16.7V7.7
						C251.2,14.9,35,24.2,31.5,24.4c-6.1,0-11,6-11,13.2C20.3,39.3,4.9,210.1,0,347.4l0,0.2l0.1,0.2c6.6,8.3,14.1,18.7,15.2,20.1
						l-0.8,119.5c-0.9,1.4-7.4,11.9-13.9,21.1l-0.1,0.2l0,0.2c5.4,136.5,19.8,307.1,20,308.8c0,7.3,4.9,13.3,11,13.3h1251.9
						c6.1,0,11-6,11-13.2c0.2-3.2,21.6-323.2,21.6-392.3C1316,356.3,1294.6,40.8,1294.4,37.7z">
					</path>
				</clipPath>
				<filter id="blurlayer" width="110%" height="120%">
					<feGaussianBlur  stdDeviation="4" result="blur"/>
				</filter>
			</defs>
			<g> 
				<path class="st1" d="M1294.4,37.7c0-7.3-4.9-13.3-11-13.3c-3.6-0.1-214.9-8.9-393.6-16v1.1c178.7,7.1,390,15.8,393.6,16
				c5.5,0,10.1,5.5,10.1,12.2c0.2,3.2,21.6,318.7,21.6,387.7c0,69.1-21.4,389-21.6,392.3c0,6.7-4.5,12.2-10.1,12.2H31.5
				c-5.5,0-10.1-5.5-10.1-12.2c-0.1-1.7-14.6-172.1-20-308.6c6.9-9.8,13.8-21,13.9-21.1l0.1-0.1l0.8-120.3l-0.1-0.2
				C16.1,367.2,7.9,356,1,347.2C5.9,210,21.3,39.4,21.4,37.7c0-6.7,4.5-12.2,10.1-12.2c3.6-0.2,219.7-9.4,394.7-16.7V7.7
				C251.2,14.9,35,24.2,31.5,24.4c-6.1,0-11,6-11,13.2C20.3,39.3,4.9,210.1,0,347.4l0,0.2l0.1,0.2c6.6,8.3,14.1,18.7,15.2,20.1
				l-0.8,119.5c-0.9,1.4-7.4,11.9-13.9,21.1l-0.1,0.2l0,0.2c5.4,136.5,19.8,307.1,20,308.8c0,7.3,4.9,13.3,11,13.3h1251.9
				c6.1,0,11-6,11-13.2c0.2-3.2,21.6-323.2,21.6-392.3C1316,356.3,1294.6,40.8,1294.4,37.7z"/>
			</g> 
			<polygon class="polygon" points="519.3,830.5 537.1,822.6 779.5,822.6 796.7,830.5 779.8,835 537.4,835  "/>
			<!-- <polygon points="144 247,172 263,572 267,585 243,568 223,168 223"></polygon> -->
		</svg>
	</div> <!-- stroke="#ff0" stroke-width="10" -->
	<div class="<?php echo esc_attr( $container ); ?>" id="content">
		<div class="row login-row">
			<div class="col-xl-6 content-area" id="primary">
				<!-- TODO: Rach to replace styling here -->

				<a href="../sign-up" class="defaultbtn btn--color">
					<div class="defaultbtn-wrapper"><span>New to GenAero?</span></div>
				</a>
				<a href="#" class="defaultbtn btn--color">
					<div class="defaultbtn-wrapper"><span>Already Registered</span></div>
				</a>

				<h2>Login Now</h2>
				<?php echo $response; ?>
				<form id="login_form" method="post" action="">
					<!-- <label for="login_username">Username</label> -->
					<input type="text" name="login_username" id="login_username" placeholder="Username" minlength="4" maxlength="20" required><br>
					<!-- <label for="login_password">Password</label> -->
					<input type="password" name="login_password" id="login_password" placeholder="Password" title="Password" minlength="6" maxlength="14" autocomplete="new-password" required><br><br>

					<input type="submit" name="login_submit" id="login_submit" value="Login">
					<a href="../forgot-passw1rd">Forgot password?</a>

					<div class="separator">OR</div>

					<?php echo do_shortcode("[genaero_facebook]"); ?>
				</form>

			</div><!-- #primary -->

		</div><!-- .row end -->

	</div><!-- Container end -->

</main><!-- #main -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
