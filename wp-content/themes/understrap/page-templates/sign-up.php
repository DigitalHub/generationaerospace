<?php
/**
 * Template Name: Sign Up Page
 *
 * Template for displaying a sign up page.
 *
 * @package understrap
 */

//response generation function
global $wpdb;
$response = "";

//function to generate response
//RACH: DON'T STYLE THIS FIRST. WILL DISCUSS WITH YOU WHEN YOU REACH HERE
//TODO: STEF TO MOVE THIS TO FUNCTIONS.PHP
function my_contact_form_generate_response($type, $message){
	global $response;
	$response = "<div class='error'>{$message}</div>";
}

//response messages
$missing_content = "Please fill in all fields.";
$email_invalid   = "Please fill in a valid email address.";
$password_invalid= "Please fill in a valid password. Password must be between 6-14 characters long with alphabets and numbers.";
$username_taken  = "Username is already taken. Try another username.";

//user posted variables
$email = $wpdb->escape($_POST['signup_email']);
$username = $wpdb->escape($_POST['signup_username']);
$password = $wpdb->escape($_POST['signup_password']);

//validate empty content
if ($_POST['signup_submit']) {
	$table = $wpdb->prefix.'genaero_members';

	if(empty($email) || empty($username) || empty($password)) {
		my_contact_form_generate_response("error", $missing_content);
	} else {
	//validate email
		if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
			my_contact_form_generate_response("error", $email_invalid);
		} else {
		//validate password
			if(!preg_match('/^(?=.*\d)(?=.*[a-zA-Z])(?!.*\s).*$/',$password)) {
				my_contact_form_generate_response("error", $password_invalid);
			} else {
			//check if username is taken
				$check_users_sql = $wpdb->prepare("SELECT id FROM $table WHERE username=%s",$username);
				$check_users = $wpdb->get_results($check_users_sql);
				if(count($check_users) > 0) {
					my_contact_form_generate_response("error", $username_taken);
				} else {
					$password_hashed = wp_hash_password($password);
					$wpdb->query($wpdb->prepare("INSERT INTO $table (username,email,password) VALUES (%s,%s,%s)", array($username,$email,$password_hashed)));

					//get generated ID
					$members_sql = $wpdb->prepare("SELECT * FROM $table WHERE username = %s", $username);
					$results = $wpdb->get_results($members_sql);
					if($wpdb->num_rows > 0) {
						$user_id = $results[0]->id;
					}

					session_start();
					$_SESSION['username'] = $username;
					$_SESSION['user_id'] = $user_id;
					wp_redirect( 'member-dashboard', 301 );
					exit; 
				}
			}
		}
	}				
}

get_header();
$container = get_theme_mod( 'understrap_container_type' ); ?>

<div class="wrapper" id="full-width-page-wrapper">
	<main id="main" class="site-main container" role="main">
		<?php $bgimg = get_template_directory_uri() . "/img/Dashboard_Bg.jpg";
		include(locate_template('loop-templates/home-hubbase.php')); ?>
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row sign-up-row">
				<div class="col-md-6 content-area" id="primary">
					<a href="<?php bloginfo('url') ?>/login" class="defaultbtn btn--color">
						<div class="defaultbtn-wrapper"><span>Already Registered?</span></div>
					</a>
					<h2>Sign Up Here</h2>
					<?php echo $response; ?>
					<form id="signup_form" method="post" action="">
						<!-- <label for="signup_email">Email</label> -->
						<input type="email" name="signup_email" id="signup_email" placeholder="Email" required><br>
						<!-- <label for="signup_username">Username</label> -->
						<input type="text" name="signup_username" id="signup_username" placeholder="Username" minlength="4" maxlength="20" required><br>
						<!-- <label for="signup_password">Password</label> -->
						<input type="password" name="signup_password" id="signup_password" placeholder="Password" title="Password must be between 6-14 characters long with alphabets and numbers." minlength="6" maxlength="14" pattern="^(?=.*\d)(?=.*[a-zA-Z])(?!.*\s).*$" autocomplete="new-password" required><br><br>
						<div class="clear"></div>
						<div class="login_submit--wrap arrowbtn btn--color">
							<span class="fas fa-long-arrow-alt-right icon-left"></span>	
							<div class="arrowbtn-wrapper">
								<input type="submit" name="signup_submit" id="signup_submit" value="Join Now">
							</div>	
						</div>
						<p class="click_terms">By clicking Join Now, you agree to our Terms and Conditions <a href="../terms-and-conditions/" rel="noopener" target="_blank">here</a>.</p>
						<div class="separator">OR</div>
						<?php echo do_shortcode("[genaero_facebook]"); ?>
					</form>

				</div><!-- #primary -->

			</div><!-- .row end -->

		</div><!-- Container end -->

	</main><!-- #main -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
