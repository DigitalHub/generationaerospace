<?php
/*
Plugin Name: GenAero Members
Description: Create a Members Only Area for Generation Aerospace. Only for Generation Aerospace website use.
Version: 1.0
License: GPL
Author: Stefanie Chong

==========================================================================*/

defined( 'ABSPATH' ) or die( 'No script kiddies please!' );

//create database for members
register_activation_hook( __FILE__, 'create_members_db' );
function create_members_db() {
	global $wpdb;

	$version = get_option( 'my_plugin_version', '1.0' );
	$charset_collate = $wpdb->get_charset_collate();
	$table_name = $wpdb->prefix . 'genaero_members';

	$sql = "CREATE TABLE $table_name (
	id int(11) NOT NULL AUTO_INCREMENT,
	username varchar(20) NOT NULL,
	email varchar(254) DEFAULT NULL,
	password varchar(50) DEFAULT NULL,
	fullname varchar(200) DEFAULT NULL,
	school varchar(200) DEFAULT NULL,
	address varchar(200) DEFAULT NULL,
	phone varchar(20) DEFAULT NULL,
	country varchar(200) DEFAULT NULL,
	facebook varchar(200) DEFAULT NULL,
	instagram varchar(200) DEFAULT NULL,
	bio varchar(500) DEFAULT NULL,
    photo varchar(500) DEFAULT NULL,
    is_fb_user tinyint(1) DEFAULT 0,
    create_date datetime DEFAULT CURRENT_TIMESTAMP,
    update_date datetime DEFAULT 0 ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE KEY id (id),
    UNIQUE KEY username (username)
) $charset_collate;";

require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
dbDelta( $sql );

// if ( version_compare( $version, '2.0' ) < 0 ) {
// 	$sql = "CREATE TABLE $table_name (
// 	id mediumint(9) NOT NULL AUTO_INCREMENT,
// 	time datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
// 	views smallint(5) NOT NULL,
// 	clicks smallint(5) NOT NULL,
// 	blog_id smallint(5) NOT NULL,
// 	UNIQUE KEY id (id)
// ) $charset_collate;";
// dbDelta( $sql );

// update_option( 'my_plugin_version', '2.0' );

// }

}

/*
 * Import the Facebook SDK and load all the classes
 */
include (plugin_dir_path( __FILE__ ) . 'facebook-sdk/autoload.php');

/*
 * Classes required to call the Facebook API
 * They will be used by our class
 */
use Facebook\Facebook;
use Facebook\Exceptions\FacebookSDKException;
use Facebook\Exceptions\FacebookResponseException;

/**
 * Class GenAeroFacebook
 */
class GenAeroFacebook{
	private $wpdb;

    /**
     * Facebook APP ID
     *
     * @var string
     */
    private $app_id = '2039117876371944';

    /**
     * Facebook APP Secret
     *
     * @var string
     */
    private $app_secret = 'dfa4f9cfe8d93ead1783c4ec0d01a9e0';

    /**
     * Callback URL used by the API
     *
     * @var string
     */
    private $callback_url = 'http://localhost/generationaerospace/wp-admin/admin-ajax.php?action=genaero_facebook';

    /**
     * Access token from Facebook
     *
     * @var string
     */
    private $access_token;

    /**
     * Where we redirect our user after the process
     *
     * @var string
     */
    private $redirect_url;

    /**
     * User details from the API
     */
    private $facebook_details;

    /**
     * GenAeroFacebook constructor.
     */
    public function __construct()
    {
    	global $wpdb;
    	$this->wpdb = $wpdb;

        // We register our shortcode
    	add_shortcode( 'genaero_facebook', array($this, 'renderShortcode') );

        // Callback URL
    	add_action( 'wp_ajax_genaero_facebook', array($this, 'apiCallback'));
    	add_action( 'wp_ajax_nopriv_genaero_facebook', array($this, 'apiCallback'));

    }

    /**
     * Render the shortcode [genaero_facebook/]
     *
     * It displays our Login / Register button
     */
    public function renderShortcode() {

        // Start the session
    	if(!session_id()) {
    		session_start();
    	}

        // No need for the button is the user is already logged
        // if(is_user_logged_in())
        //     return;

        // We save the URL for the redirection:
    	if(!isset($_SESSION['genaero_facebook_url']))
    		$_SESSION['genaero_facebook_url'] = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];

    	$button_label = __('Login with Facebook', 'genaeroweb');

        // HTML markup
    	$html = '<div id="genaero-facebook-wrapper">';

        // Messages
    	if(isset($_SESSION['genaero_facebook_message'])) {
    		$message = $_SESSION['genaero_facebook_message'];
    		$html .= '<div id="genaero-facebook-message" class="alert alert-danger">'.$message.'</div>';
            // We remove them from the session
    		unset($_SESSION['genaero_facebook_message']);
    	}

        // Button
    	$html .= '<a href="'.$this->getLoginUrl().'" class="btn" id="genaero-facebook-button">'.$button_label.'</a>';

    	$html .= '</div>';

        // Write it down
    	return $html;

    }

    /**
     * Init the API Connection
     *
     * @return Facebook
     */
    private function initApi() {

    	$facebook = new Facebook([
    		'app_id' => $this->app_id,
    		'app_secret' => $this->app_secret,
    		'default_graph_version' => 'v2.2',
    		'persistent_data_handler' => 'session'
    	]);

    	return $facebook;

    }

    /**
     * Login URL to Facebook API
     *
     * @return string
     */
    private function getLoginUrl() {

    	if(!session_id()) {
    		session_start();
    	}

    	$fb = $this->initApi();

    	$helper = $fb->getRedirectLoginHelper();

        // Optional permissions
    	$permissions = ['email'];

    	$url = $helper->getLoginUrl($this->callback_url, $permissions);

    	return esc_url($url);

    }

    /**
     * API call back running whenever we hit /wp-admin/admin-ajax.php?action=genaero_facebook
     * This code handles the Login / Regsitration part
     */
    public function apiCallback() {

    	if(!session_id()) {
    		session_start();
    	}

        // Set the Redirect URL:
    	$this->redirect_url = (isset($_SESSION['genaero_facebook_url'])) ? $_SESSION['genaero_facebook_url'] : home_url();

        // We start the connection
    	$fb = $this->initApi();

        // We save the token in our instance
    	$this->access_token = $this->getToken($fb);

        // We get the user details
    	$this->facebook_details = $this->getUserDetails($fb);

    	$fb_user = $this->facebook_details;

        // We first try to login the user
    	$this->loginUser();

        // Otherwise, we create a new account
    	$this->createUser();
    }

    /**
     * Get a TOKEN from the Facebook API
     * Or redirect back if there is an error
     *
     * @param $fb Facebook
     * @return string - The Token
     */
    private function getToken($fb) {

        // Assign the Session variable for Facebook
    	$_SESSION['FBRLH_state'] = $_GET['state'];

        // Load the Facebook SDK helper
    	$helper = $fb->getRedirectLoginHelper();

        // Try to get an access token
    	try {
    		$accessToken = $helper->getAccessToken();
    	}
        // When Graph returns an error
    	catch(FacebookResponseException $e) {
    		$error = __('Graph returned an error: ','genaeroweb'). $e->getMessage();
    		$message = array(
    			'type' => 'error',
    			'content' => $error
    		);
    	}
        // When validation fails or other local issues
    	catch(FacebookSDKException $e) {
    		$error = __('Facebook SDK returned an error: ','genaeroweb'). $e->getMessage();
    		$message = array(
    			'type' => 'error',
    			'content' => $error
    		);
    	}

        // If we don't got a token, it means we had an error
    	if (!isset($accessToken)) {
            // Report our errors
    		$_SESSION['genaero_facebook_message'] = $message;
            // Redirect
    		header("Location: ".$this->redirect_url, true);
    		die();
    	}

    	return $accessToken->getValue();

    }

    /**
     * Get user details through the Facebook API
     *
     * @link https://developers.facebook.com/docs/facebook-login/permissions#reference-public_profile
     * @param $fb Facebook
     * @return \Facebook\GraphNodes\GraphUser
     */
    private function getUserDetails($fb)
    {

    	try {
    		$response = $fb->get('/me?fields=id,name,first_name,last_name,email,link,picture.width(300).height(300)', $this->access_token);
    	} catch(FacebookResponseException $e) {
    		$message = __('Graph returned an error: ','genaeroweb'). $e->getMessage();
    		$message = array(
    			'type' => 'error',
    			'content' => $error
    		);
    	} catch(FacebookSDKException $e) {
    		$message = __('Facebook SDK returned an error: ','genaeroweb'). $e->getMessage();
    		$message = array(
    			'type' => 'error',
    			'content' => $error
    		);
    	}

        // If we caught an error
    	if (isset($message)) {
            // Report our errors
    		$_SESSION['genaero_facebook_message'] = $message;
            // Redirect
    		header("Location: ".$this->redirect_url, true);
    		die();
    	}

    	return $response->getGraphUser();

    }

    /**
     * Login an user to WordPress
     *
     * @link https://codex.wordpress.org/Function_Reference/get_users
     * @return bool|void
     */
    private function loginUser() {
    	$table = $this->wpdb->prefix.'genaero_members';

    	$fb_user = $this->facebook_details;

    	$username = sanitize_user(str_replace(' ', '_', strtolower($this->facebook_details['name'])));
    	$password = $this->facebook_details['id'];

    	$username_sql = $this->wpdb->prepare("SELECT * FROM $table WHERE username = %s", $username);
    	$results = $this->wpdb->get_results($username_sql);
    	if(count($results) > 0) {
    		$hashed_password = $results[0]->password;
    		if(wp_check_password($password, $hashed_password)) {
                $_SESSION['username'] = $username;
                wp_redirect( 'member-dashboard', 301 );
                exit; 
            }
        }

    }

    /**
     * Create a new WordPress account using Facebook Details
     */
    private function createUser() {
    	$table = $this->wpdb->prefix.'genaero_members';

    	$fb_user = $this->facebook_details;

        // Create an username
    	$username = sanitize_user(str_replace(' ', '_', strtolower($this->facebook_details['name'])));
    	$email = $this->facebook_details['email'];
    	$password = wp_hash_password($this->facebook_details['id']);
        $fullname = $this->facebook_details['name'];
        $photo = $this->facebook_details['picture']['url'];
        $fblink = $this->facebook_details['link'];

    	$this->wpdb->query($this->wpdb->prepare("INSERT INTO $table (username,email,password,fullname,photo,facebook,is_fb_user) VALUES (%s,%s,%s,%s,%s,%s,%s)", array($username,$email,$password,$fullname,$photo,$fblink,'1')));

    	$_SESSION['username'] = $username;
    	wp_redirect( 'member-dashboard', 301 );
    	exit; 
    }
}

/*
 * Starts our plugins, easy!
 */
new GenAeroFacebook();


?>