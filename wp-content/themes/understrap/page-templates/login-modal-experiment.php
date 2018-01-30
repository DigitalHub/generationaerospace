<?php
/**
 * Template for displaying a login modal.
 *
 * @package understrap
 */

//response generation function
global $wpdb;
$response = "";

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
		if($wpdb->num_rows > 0) {
			//check password
			$hashed_password = $results[0]->password;
			if(wp_check_password($password, $hashed_password)) {
				$user_id = $results[0]->id;

				session_start();
				$_SESSION['username'] = $username;
				$_SESSION['user_id'] = $user_id;
				$exp_ID = get_the_ID();

				$fav_exp_table = $wpdb->prefix.'genaero_favourite_experiments';
				$wpdb->query($wpdb->prepare("INSERT INTO $fav_exp_table (member_id, experiment_id) VALUES (%d, %d)",$user_id, $exp_ID));

				echo '<script>window.location="'.get_permalink().'"</script>';
				exit; 
			} else {
				my_contact_form_generate_response("error", $wrong_login_details);
			}
		} else {
			my_contact_form_generate_response("error", $wrong_login_details);
		}

	}				
}

$container = get_theme_mod( 'understrap_container_type' );
?>

<div class="wrapper" id="full-width-page-wrapper">

	<main id="main" class="site-main container" role="main">
		<?php $bgimg = get_template_directory_uri() . "/img/img-header_findaVideo.jpg";
		include(locate_template('loop-templates/hub-base.php')); ?>
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row login-row">
				<div class="col-xl-6 col-lg-6 col-md-8 col-sm-10 col-xs-12 content-area" id="primary">
					<div class="text-center">
						<a href="<?php bloginfo('url') ?>/sign-up" class="defaultbtn btn--color">
							<div class="defaultbtn-wrapper"><span>New to GenAero?</span></div>
						</a>
					</div>
					<h2>Login Now</h2>
					<p>Login now to save this experiment to your favourite experiments list.</p>
					<?php echo $response; ?>
					<form id="login_form" method="post" action="">
						<input type="text" name="login_username" id="login_username" placeholder="Username" minlength="4" maxlength="20" required><br>
						<input type="password" name="login_password" id="login_password" placeholder="Password" title="Password" minlength="6" maxlength="14" autocomplete="new-password" required><br><br>
						<div class="clear"></div>
						<div class="login_submit--wrap arrowbtn btn--color">
							<span class="fas fa-long-arrow-alt-right icon-left"></span>	
							<div class="arrowbtn-wrapper">
								<input type="submit" name="login_submit" class="" id="login_submit" value="Login">
							</div>	
						</div>
						<a class="forgot_password--btn" href="<?php bloginfo('url') ?>/forgot-password">Forgot password?</a>

						<div class="separator">OR</div>

						<!-- TODO: STEF TO FIX FOR FACEBOOK LOGIN -->
						<?php echo do_shortcode("[genaero_facebook]"); ?>
					</form>

				</div><!-- #primary -->

			</div><!-- .row end -->

		</div><!-- Container end -->

	</main><!-- #main -->

</div><!-- Wrapper end -->