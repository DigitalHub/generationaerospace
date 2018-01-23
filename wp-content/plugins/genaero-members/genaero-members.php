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
	phone varchar(20) DEFAULT NULL,
    address varchar(200) DEFAULT NULL,
    country varchar(200) DEFAULT NULL,
    birthdate varchar(200) DEFAULT NULL,
    facebook varchar(200) DEFAULT NULL,
    instagram varchar(200) DEFAULT NULL,
    bio varchar(500) DEFAULT NULL,
    photo varchar(500) DEFAULT NULL,
    is_fb_user tinyint(1) DEFAULT 0,
    create_date timestamp DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY id (id),
    UNIQUE KEY username (username)
) $charset_collate;";

require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
dbDelta( $sql );

// if ( version_compare( $version, '2.0' ) < 0 ) {
// 	$sql = "CREATE TABLE $table_name (
// 	id mediumint(9) NOT NULL AUTO_INCREMENT,
// 	time timestamp DEFAULT '0000-00-00 00:00:00' NOT NULL,
// 	views smallint(5) NOT NULL,
// 	clicks smallint(5) NOT NULL,
// 	blog_id smallint(5) NOT NULL,
// 	UNIQUE KEY id (id)
// ) $charset_collate;";
// dbDelta( $sql );

// update_option( 'my_plugin_version', '2.0' );

// }

}

//create database for videos list
register_activation_hook( __FILE__, 'create_videos_db' );
function create_videos_db() {
    global $wpdb;

    $version = get_option( 'my_plugin_version', '1.0' );
    $charset_collate = $wpdb->get_charset_collate();
    $members_table = $wpdb->prefix . 'genaero_members';
    $videos_table = $wpdb->prefix . 'genaero_videos';

    $sql = "CREATE TABLE $videos_table (
    id int(11) NOT NULL AUTO_INCREMENT,
    link_id int(11) NOT NULL,
    member_id int(11) NOT NULL,
    title varchar(200) NOT NULL,
    description varchar(500) DEFAULT NULL,
    youtube varchar(100) NOT NULL,
    favourite int(11) DEFAULT 0 NOT NULL,
    create_date timestamp DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (member_id) REFERENCES $members_table(id)
) $charset_collate;";

require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
dbDelta( $sql );

}

//create database for favourite videos list
register_activation_hook( __FILE__, 'create_favourite_videos_db' );
function create_favourite_videos_db() {
    global $wpdb;

    $version = get_option( 'my_plugin_version', '1.0' );
    $charset_collate = $wpdb->get_charset_collate();
    $members_table = $wpdb->prefix . 'genaero_members';
    $videos_table = $wpdb->prefix . 'genaero_videos';
    $fav_videos_table = $wpdb->prefix . 'genaero_favourite_videos';

    $sql = "CREATE TABLE $fav_videos_table (
    id int(11) NOT NULL AUTO_INCREMENT,
    member_id int(11) NOT NULL,
    video_id int(11) NOT NULL,
    create_date timestamp DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (member_id) REFERENCES $members_table(id),
    FOREIGN KEY (video_id) REFERENCES $videos_table(id)
) $charset_collate;";

require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
dbDelta( $sql );

}

//create database for favourite experiments list
register_activation_hook( __FILE__, 'create_favourite_experiments_db' );
function create_favourite_experiments_db() {
    global $wpdb;

    $version = get_option( 'my_plugin_version', '1.0' );
    $charset_collate = $wpdb->get_charset_collate();
    $members_table = $wpdb->prefix . 'genaero_members';
    $fav_experiments_table = $wpdb->prefix . 'genaero_favourite_experiments';

    $sql = "CREATE TABLE $fav_experiments_table (
    id int(11) NOT NULL AUTO_INCREMENT,
    member_id int(11) NOT NULL,
    experiment_id int(11) NOT NULL,
    create_date timestamp DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (member_id) REFERENCES $members_table(id),
) $charset_collate;";

require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
dbDelta( $sql );

}

//create database for password change requests
register_activation_hook( __FILE__, 'create_password_change_requests_db' );
function create_password_change_requests_db() {
    global $wpdb;

    $version = get_option( 'my_plugin_version', '1.0' );
    $charset_collate = $wpdb->get_charset_collate();
    $table = $wpdb->prefix . 'genaero_password_change_requests';

    if ( $wpdb->get_var( "SHOW TABLES LIKE '{$table}'" ) != $table ) {
        $sql = "CREATE TABLE $table (
        id varchar(50) NOT NULL,
        email varchar(254) NOT NULL,
        create_date timestamp CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        PRIMARY KEY (id)
    ) $charset_collate;";
}

require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
dbDelta( $sql );

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
    // private $app_id = '2039117876371944';
    private $app_id = '1675559965844578';

    /**
     * Facebook APP Secret
     *
     * @var string
     */
    // private $app_secret = 'dfa4f9cfe8d93ead1783c4ec0d01a9e0';
    private $app_secret = '5e2c07d04fb95a216cb1b96111fca791';

    /**
     * Callback URL used by the API
     *
     * @var string
     */
    // private $callback_url = 'http://localhost/generationaerospace/wp-admin/admin-ajax.php?action=genaero_facebook';
    private $callback_url = 'http://text100dev.com/generationaerospace/wp-admin/admin-ajax.php?action=genaero_facebook';

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
    	$html .= '<a href="'.$this->getLoginUrl().'" class=" " id="genaero-facebook-button">'.$button_label.'</a>';

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
                $user_id = $results[0]->id;

                $_SESSION['username'] = $username;
                $_SESSION['user_id'] = $user_id;
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
        
        //get generated ID
        $members_sql = $this->wpdb->prepare("SELECT * FROM $table WHERE username = %s", $username);
        $results = $this->wpdb->get_results($members_sql);
        if($this->wpdb->num_rows > 0) {
            $user_id = $results[0]->id;
        }

        $_SESSION['username'] = $username;
        $_SESSION['user_id'] = $user_id;
        wp_redirect( 'member-dashboard', 301 );
        exit; 
    }
}

/*
 * Starts our plugins, easy!
 */
new GenAeroFacebook();


/*
 * Generate YouTube embed from YouTube URL
 */
function youtubeEmbedFromUrl($youtube_url, $width, $height){
    $vid_id = extractUTubeVidId($youtube_url);
    return generateYoutubeEmbedCode($vid_id, $width, $height);
}

function extractUTubeVidId($url){
    /*
    * type1: http://www.youtube.com/watch?v=H1ImndT0fC8
    * type2: http://www.youtube.com/watch?v=4nrxbHyJp9k&feature=related
    * type3: http://youtu.be/H1ImndT0fC8
    */
    $vid_id = "";
    $flag = false;
    if(isset($url) && !empty($url)){
        /*case1 and 2*/
        $parts = explode("?", $url);
        if(isset($parts) && !empty($parts) && is_array($parts) && count($parts)>1){
            $params = explode("&", $parts[1]);
            if(isset($params) && !empty($params) && is_array($params)){
                foreach($params as $param){
                    $kv = explode("=", $param);
                    if(isset($kv) && !empty($kv) && is_array($kv) && count($kv)>1){
                        if($kv[0]=='v'){
                            $vid_id = $kv[1];
                            $flag = true;
                            break;
                        }
                    }
                }
            }
        }
        
        /*case 3*/
        if(!$flag){
            $needle = "youtu.be/";
            $pos = null;
            $pos = strpos($url, $needle);
            if ($pos !== false) {
                $start = $pos + strlen($needle);
                $vid_id = substr($url, $start, 11);
                $flag = true;
            }
        }
    }
    return $vid_id;
}

function generateYoutubeEmbedCode($vid_id, $width, $height){
    $w = $width;
    $h = $height;
    $html = '<iframe width="'.$w.'" height="'.$h.'" src="http://www.youtube.com/embed/'.$vid_id.'?rel=0" frameborder="0" allowfullscreen></iframe>';
    return $html;
}

function getDates($startdate, $enddate) {
    $startyear = substr($startdate, 0, 4);
    $startmonth = substr($startdate, 4, 2);
    $dateObj   = DateTime::createFromFormat('!m', $startmonth);
    $startmonth = $dateObj->format('M');
    $startday = substr($startdate, 6, 2);

    $endyear = substr($enddate, 0, 4);
    $endmonth = substr($enddate, 4, 2);
    $dateObj   = DateTime::createFromFormat('!m', $endmonth);
    $endmonth = $dateObj->format('M');
    $endday = substr($enddate, 6, 2);

    if(($startmonth === $endmonth) && ($startyear === $endyear)) {
        $date = $startday.'-'.$endday.' '.$startmonth.' '.$startyear;
    } elseif(($startmonth !== $endmonth) && ($startyear === $endyear)) {
        $date = $startday.' '.$startmonth.' - '.$endday.' '.$endmonth.' '.$startyear;
    } elseif($startyear !== $endyear) {
        $date = $startday.' '.$startmonth.' '.$startyear.' - '.$endday.' '.$endmonth.' '.$endyear;
    }

    return $date;
}

//sets email from plaintext to htmltext
function wpse27856_set_content_type(){
    return "text/html";
}
add_filter( 'wp_mail_content_type','wpse27856_set_content_type' );

//send email for Forgot Password
function emailForgotPassword($toEmail) {
    global $wpdb;
    $code = random_code(15);
    $hash = wp_hash_password($code);
    $link = get_bloginfo('url').'/reset-password?ID='.$code;

    $table = $wpdb->prefix . 'genaero_password_change_requests';
    $check_email = $wpdb->prepare("SELECT id FROM $table WHERE email=%s",$toEmail);
    $check_results = $wpdb->get_results($check_email);

    if($wpdb->num_rows > 0) {
        $wpdb->query($wpdb->prepare("UPDATE $table SET id=%s",$hash));
    } else {
        $wpdb->query($wpdb->prepare("INSERT INTO $table (id,email) VALUES (%s,%s)", array($hash,$toEmail)));
    }

    $to      = $toEmail;
    $subject = 'Generation Aerospace: Reset Password';
    $message = 'This email was sent to you because you requested to reset the password for the Generation Aerospace\'s website.<br><br> To reset your password, please click on this link: '.$link.'<br><br>If you did not requset a password reset, please disregard this email.';
    $headers = 'From: webmaster@generationaerospace.com' . "\r\n" .
    'Reply-To: webmaster@generationaerospace.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

    $sent = wp_mail($to, $subject, $message, $headers);

    if($sent) {
        return 'Reset e-mail sent successfully. Please check your e-mail for the link.';
    } else {
        return 'Reset e-mail could not be sent. Please try again.';
    }
}

//generate random alphanumeric string
//random_code(8)
function random_code($limit)
{
    return substr(base_convert(sha1(uniqid(mt_rand())), 16, 36), 0, $limit);
}

?>