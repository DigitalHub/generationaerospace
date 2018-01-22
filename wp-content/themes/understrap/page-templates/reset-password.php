<?php
/**
 * Template Name: Reset Password Page
 *
 * Template for displaying a reset password page.
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
$expired_link = "Your reset password link has expired. Please try to reset your password again.";
$missing_content = "Please fill in your password.";

//check if correct reset password link
if($_GET['ID']) {
	$expired = 0;
	$has_password = 0;

	$table = $wpdb->prefix . 'genaero_password_change_requests';
	$before_hash = $_GET['ID'];

	$check_hash_sql = "SELECT * FROM $table WHERE create_date >= now() - INTERVAL 1 DAY";
	$check_hash_results = $wpdb->get_results($check_hash_sql);

	if($wpdb->num_rows > 0) {
		foreach($check_hash_results as $result) {
			if(wp_check_password($before_hash, $result->id)) {
				$has_password = 1;
				$member_email = $result->email;
				break;
			}
		}
	} else {
		my_contact_form_generate_response("error", $expired_link);
		$expired = 1;
	}
	if($has_password === 0) {
		my_contact_form_generate_response("error", $expired_link);
	}
} else {
	wp_redirect( 'forgot-password', 301 );
	exit; 
}

//validate empty content
if ($_POST['reset_submit']) {
	$members_table = $wpdb->prefix.'genaero_members';
	$password = $wpdb->escape($_POST['profile_password']);

	if(empty($password)) {
		my_contact_form_generate_response("error", $missing_content);
	} else {
		$password_hashed = wp_hash_password($password);
		$wpdb->query($wpdb->prepare("UPDATE $members_table SET password = %s WHERE email = %s AND is_fb_user = 0", $password_hashed, $member_email));

		$username_sql = $wpdb->prepare("SELECT * FROM $members_table WHERE email = %s AND is_fb_user = 0", $member_email);
		$results = $wpdb->get_results($username_sql);
		if($wpdb->num_rows > 0) {
			session_start();
			$_SESSION['username'] = $results[0]->username;
			$_SESSION['user_id'] = $results[0]->id;
			wp_redirect( 'member-dashboard', 301 );
			exit; 
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
					<h2>Reset Password</h2>
					<?php echo $response; ?>
					<?php if(($expired === 0) && ($has_password === 1)) : ?>
						<form id="reset_form" method="post" action="">
							<div class="hide-show"><span>Show</span></div>
							<input type="password" name="profile_password" id="profile_password" placeholder="Password" title="Password must be between 6-14 characters long with alphabets and numbers." minlength="6" maxlength="14" pattern="^(?=.*\d)(?=.*[a-zA-Z])(?!.*\s).*$" autocomplete="new-password" required><br><br>
							<p class="click_terms">Must be 6-14 characters long with alphabets and numbers.</p><br>
							<div class="clear"></div>
							<div class="reset_submit--wrap arrowbtn btn--color">
								<span class="fas fa-long-arrow-alt-right icon-left"></span>	
								<div class="arrowbtn-wrapper">
									<input type="submit" name="reset_submit" class="" id="reset_submit" value="Submit">
								</div>	
							</div>
						</form>
					<?php else : ?>
						<a href="<?php echo get_permalink( get_page_by_path( 'forgot-password' ) ) ?>" class="arrowbtn btn--color">
							<span class="fas fa-long-arrow-alt-right icon-left"></span><div class="arrowbtn-wrapper"><span>Forgot Password</span></div>
						</a>
					<?php endif; ?>

				</div><!-- #primary -->

			</div><!-- .row end -->

		</div><!-- Container end -->

	</main><!-- #main -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
