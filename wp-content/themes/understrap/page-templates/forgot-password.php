<?php
/**
 * Template Name: Forgot Password Page
 *
 * Template for displaying a forgot password page.
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
	if($type === 'success') {
		$response = "<div class='success'>{$message}</div>";
	} else {
		$response = "<div class='error'>{$message}</div>";
	}
}

//response messages
$missing_content = "Please fill in your email.";
$wrong_details = "No such email address exists in our database. Please try again.";
$succes = "An email with the reset password link has been sent to your email address.";

//user posted variables
$email = $wpdb->escape($_POST['forgot_email']);

//validate empty content
if ($_POST['forgot_submit']) {
	$members_table = $wpdb->prefix.'genaero_members';

	if(empty($email)) {
		my_contact_form_generate_response("error", $missing_content);
	} else {
		//check email
		$email_sql = $wpdb->prepare("SELECT * FROM $members_table WHERE email = %s", $email);
		$results = $wpdb->get_results($email_sql);
		if($wpdb->num_rows > 0) {
			//email
			$message = emailForgotPassword($email);
			my_contact_form_generate_response("success", $message);
		} else {
			my_contact_form_generate_response("error", $wrong_details);
		}

	}				
}

get_header();
$container = get_theme_mod( 'understrap_container_type' );

?>

<div class="wrapper" id="full-width-page-wrapper">

	<main id="main" class="site-main container" role="main">
		<?php $bgimg = get_template_directory_uri() . "/img/Dashboard_Bg.jpg";
		include(locate_template('loop-templates/hub-base.php')); ?>
		<div class="<?php echo esc_attr( $container ); ?>" id="content">
			<div class="row forgot-row">
				<div class="col-xl-6 col-lg-6 col-md-8 col-sm-10 col-xs-12 content-area" id="primary">
					<div class="text-center">
						<a href="<?php bloginfo('url') ?>/sign-up" class="defaultbtn btn--color">
							<div class="defaultbtn-wrapper"><span>New to GenAero?</span></div>
						</a>
					</div>
					<h2>Forgot Password</h2>
					<?php echo $response; ?>
					<p>Type in your email address below and we’ll send you an email with instructions on how to create a new password.</p>
					<form id="forgot_form" method="post" action="">
						<input type="email" name="forgot_email" id="forgot_email" placeholder="Email" required><br>
						<div class="clear"></div>
						<div class="forgot_submit--wrap arrowbtn btn--color">
							<span class="fas fa-long-arrow-alt-right icon-left"></span>	
							<div class="arrowbtn-wrapper">
								<input type="submit" name="forgot_submit" class="" id="forgot_submit" value="Submit">
							</div>	
						</div>
					</form>

				</div><!-- #primary -->

			</div><!-- .row end -->

		</div><!-- Container end -->

	</main><!-- #main -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
