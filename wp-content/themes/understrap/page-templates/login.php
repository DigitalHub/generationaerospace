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
		<?php $bgimg = get_template_directory_uri() . "/img/Dashboard_Bg.jpg";
		include(locate_template('loop-templates/home-hubbase.php')); ?>
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row login-row">
				<div class="col-xl-6 content-area" id="primary">

					<a href="<?php bloginfo('url') ?>/sign-up" class="defaultbtn btn--color">
						<div class="defaultbtn-wrapper"><span>New to GenAero?</span></div>
					</a>

					<h2>Login Now</h2>
					<?php echo $response; ?>
					<form id="login_form" method="post" action="">
						<!-- <label for="login_username">Username</label> -->
						<input type="text" name="login_username" id="login_username" placeholder="Username" minlength="4" maxlength="20" required><br>
						<!-- <label for="login_password">Password</label> -->
						<input type="password" name="login_password" id="login_password" placeholder="Password" title="Password" minlength="6" maxlength="14" autocomplete="new-password" required><br><br>
						<div class="clear"></div>
						<div class="login_submit--wrap arrowbtn btn--color">
							<span class="fas fa-long-arrow-alt-right icon-left"></span>	
							<div class="arrowbtn-wrapper">
								<input type="submit" name="login_submit" class="" id="login_submit" value="Login">
							</div>	
						</div>
						<a class="forgot_password--btn" href="../forgot-passw1rd">Forgot password?</a>

						<div class="separator">OR</div>

						<?php echo do_shortcode("[genaero_facebook]"); ?>
					</form>

				</div><!-- #primary -->

			</div><!-- .row end -->

		</div><!-- Container end -->

	</main><!-- #main -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
