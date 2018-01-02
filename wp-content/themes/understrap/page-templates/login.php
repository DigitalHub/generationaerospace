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

//validate empty content
if ($_POST['login_submit']) {
	$table = $wpdb->prefix.'genaero_members';

	if(empty($username) || empty($password)) {
		my_contact_form_generate_response("error", $missing_content);
	} else {
		//check username
		$username_sql = $wpdb->prepare("SELECT * FROM $table WHERE username = %s", $username);
		$results = $wpdb->get_results($username_sql);
		if(count($results) > 0) {
			//check password
			$hashed_password = $results[0]->password;
			if(wp_check_password($password, $hashed_password)) {
				session_start();
				$_SESSION['id'] = $results[0]->id;
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

	<div class="<?php echo esc_attr( $container ); ?>" id="content">

		<div class="row">

			<div class="col-md-12 content-area" id="primary">

				<main class="site-main" id="main" role="main">

					<!-- TODO: Rach to replace styling here -->
					<span>New to GenAero?</span>
					<span>Already Registered?</span>

					<h1>Login Now</h1>

					<?php echo $response; ?>
					<form id="login_form" method="post" action="">
						<label for="login_username">Username</label>
						<input type="text" name="login_username" id="login_username" placeholder="Username" minlength="4" maxlength="20" required><br>
						<label for="login_password">Password</label>
						<input type="password" name="login_password" id="login_password" placeholder="Password" title="Password" minlength="6" maxlength="14" required><br><br>

						<input type="submit" name="login_submit" id="login_submit" value="Login">
						<a href="forgot-password">Forgot password?</a>

						<div class="separator">OR</div>

						<a href="<?php echo htmlspecialchars($loginUrl); ?>">Login with Facebook</a>
					</form>

				</main><!-- #main -->

			</div><!-- #primary -->

		</div><!-- .row end -->

	</div><!-- Container end -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
