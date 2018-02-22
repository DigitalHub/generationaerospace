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
    // private $app_id = '381256678999175';
    private $app_id = '1675559965844578';

    /**
     * Facebook APP Secret
     *
     * @var string
     */
    // private $app_secret = 'a3343888ed15f157da70d60979c0c5b8';
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
     * Post type and Post ID
     */
    private $post_type;
    private $post_id;

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
    public function renderShortcode($atts) {
      extract(shortcode_atts(array(
        'post_type' => 'post_type',
        'post_id' => 'post_id',
        'video_id' => 'video_id'
      ), $atts));

        // Start the session
      if(!session_id()) {
        session_start();
      }

      $_SESSION['post_type'] = $post_type;
      $_SESSION['post_id'] = $post_id;
      $_SESSION['video_id'] = $video_id;

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
      $html .= '<a href="'.$this->getLoginUrl().'" id="genaero-facebook-button">'.$button_label.'</a>';

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
     * This code handles the Login / Registration part
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
      $fav_videos_table = $this->wpdb->prefix . 'genaero_favourite_videos';
      $fav_experiments_table = $this->wpdb->prefix . 'genaero_favourite_experiments';

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

          if(isset($_SESSION['post_type'])) {
            $this->post_type = $_SESSION['post_type'];
            $this->post_id = $_SESSION['post_id'];
            $this->video_id = $_SESSION['video_id'];
            unset($_SESSION['post_type']);
            unset($_SESSION['post_id']);
            unset($_SESSION['video_id']);
          }
          switch ($this->post_type) {
            case 'video':
            $check_if_fav_sql = $this->wpdb->prepare("SELECT id FROM $fav_videos_table WHERE member_id = %s AND video_id = %s", $user_id, $this->video_id);
            $results = $this->wpdb->get_results($check_if_fav_sql);
            if($this->wpdb->num_rows > 0) {
              $delete_sql = $this->wpdb->prepare("DELETE FROM $fav_videos_table WHERE member_id='%s' AND video_id='%s'", $user_id, $this->video_id);
              $this->wpdb->query($delete_sql);
            } else {
              $insert_sql = $this->wpdb->prepare("INSERT INTO $fav_videos_table (member_id, video_id) VALUES (%s,%s)", $user_id, $this->video_id);
              $this->wpdb->query($insert_sql);
            }
            wp_redirect(get_permalink($this->post_id), 301);
            break;

            case 'experiment':
            $check_if_fav_sql = $this->wpdb->prepare("SELECT id FROM $fav_experiments_table WHERE member_id = %s AND experiment_id = %s", $user_id, $this->post_id);
            $results = $this->wpdb->get_results($check_if_fav_sql);
            if($this->wpdb->num_rows > 0) {
              $delete_sql = $this->wpdb->prepare("DELETE FROM $fav_experiments_table WHERE member_id='%s' AND experiment_id='%s'", $user_id, $this->post_id);
              $this->wpdb->query($delete_sql);
            } else {
              $insert_sql = $this->wpdb->prepare("INSERT INTO $fav_experiments_table (member_id, experiment_id) VALUES (%s,%s)", $user_id, $this->post_id);
              $this->wpdb->query($insert_sql);
            }
            wp_redirect(get_permalink($this->post_id), 301);
            break;

            default:
            wp_redirect( 'member-dashboard', 301 );
            break;
          }
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
// function youtubeEmbedFromUrl($youtube_url, $width, $height){
//     $vid_id = extractUTubeVidId($youtube_url);
//     return generateYoutubeEmbedCode($vid_id, $width, $height);
// }

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

//create an admin menu in backend
  add_action('admin_menu', 'genaero_members_plugin_setup_menu');

  wp_enqueue_script( 'genaero-members-js', plugins_url( '/js/genaero_members.js', __FILE__ ));

  function genaero_members_plugin_setup_menu(){
    add_menu_page( 'GenAero Members', 'GenAero Members', 'manage_options', 'genaero-members', 'genaero_members_init', 'dashicons-groups', '35' );
    add_submenu_page(null, 'View Member', 'View Member', 'manage_options', 'genaero_member_view', 'genaero_member_view');
  }

  function genaero_members_init(){
    echo '<style>table, th, td { border: 1px solid #000; border-collapse: collapse; padding: 5px 10px; }</style>';
    echo '<h1>GenAero Members</h1>';

    return members_summary(); 
  }

  function members_summary() {
    $path = 'admin.php?page=genaero_member_view';
    $url = admin_url($path);

    global $wpdb;
    $members_table = $wpdb->prefix."genaero_members";
    $videos_table = $wpdb->prefix."genaero_videos";
    $sql = "SELECT id, username, email, create_date as join_date FROM $members_table";
    $results = $wpdb->get_results($sql);

    if($wpdb->num_rows > 0) {
      echo '<h4>Total Members: '.$wpdb->num_rows.'</h4>';
      echo '<table>';
      echo '<thead style="font-weight:bold"><tr><td>No</td><td>Username</td><td>Email</td><td>Submitted Videos</td><td>Joined Date</td><td>Option</td></tr></thead>';
      $count = 1;
      foreach($results as $result) {
        $count_sql = $wpdb->prepare("SELECT COUNT(*) as total_videos FROM $videos_table WHERE member_id = %s", $result->id);
        $count_results = $wpdb->get_results($count_sql);

        $member_id = $result->id;
        $username = $result->username;
        $email = $result->email;
        $total_videos = $count_results[0]->total_videos;
        $join_date = new DateTime($result->join_date);

        echo '<tr>';
        echo '<td>'.$count.'</td>';
        echo '<td>'.$username.'</td>';
        echo '<td>'.$email.'</td>';
        echo '<td style="text-align:center">'.$total_videos.'</td>';
        echo '<td>'.$join_date->format('d M Y').'</td>';
        echo '<td><a href="'.$url.'&id='.$member_id.'">View</a></td>';
        echo '</tr>';

        $count++;
      }
      echo '</table>';
    }

  }

  function genaero_member_view() {
    global $wpdb;
    $members_table = $wpdb->prefix."genaero_members";
    $videos_table = $wpdb->prefix."genaero_videos";
    $fav_videos_table = $wpdb->prefix . 'genaero_favourite_videos';
    $member_id = $_GET['id'];

    $members_sql = $wpdb->prepare("SELECT * FROM $members_table WHERE id = %s", $member_id);
    $members_results = $wpdb->get_results($members_sql);
    if($wpdb->num_rows > 0) {
      foreach($members_results as $result) {
        $empty = 'No Information';
        $username = $result->username ?: $empty;
        $email = $result->email ?: $empty;
        $password = $result->password ?: $empty;
        $fullname = $result->fullname ?: $empty;
        $school = $result->school ?: $empty;
        $phone = $result->phone ?: $empty;
        $address = $result->address ?: $empty;
        $country = $result->country ?: $empty;
        $birthdate = $result->birthdate ?: $empty;
        $facebook = $result->facebook ?: $empty;
        $instagram = $result->instagram ?: $empty;
        $bio = $result->bio ?: $empty;
        $is_fb_user = $result->is_fb_user ?: $empty;
        $photo = $result->photo;

        if($facebook !== 'No Information') {
          $facebook = '<a href="'.$facebook.'" target="_blank">Facebook Link</a>';
        }

        if($instagram !== 'No Information') {
          $instagram = '<a href="'.$instagram.'" target="_blank">Instagram Link</a>';
        }

        if($photo === '' || $photo === NULL) {
          $photo = get_template_directory_uri().'/img/default-photo.png';
        }
      }
    }

    echo '<h1>GenAero Member Information</h1>';
    echo '<h2>Personal Information</h2>';
    echo '<img src="'.$photo.'" width="150"><br>';
    echo '<b>Username: </b><em>'.$username.'</em><br>';
    echo '<b>Full Name: </b><em>'.$fullname.'</em><br>';
    echo '<b>Email: </b><em>'.$email.'</em><br>';
    echo '<b>School: </b><em>'.$school.'</em><br>';
    echo '<b>Phone: </b><em>'.$phone.'</em><br>';
    echo '<b>Address: </b><em>'.$address.'</em><br>';
    echo '<b>Country: </b><em>'.$country.'</em><br>';
    echo '<b>Birthdate: </b><em>'.$birthdate.'</em><br>';
    echo '<b>Facebook: </b><em>'.$facebook.'</em><br>';
    echo '<b>Instagram: </b><em>'.$instagram.'</em><br>';
    echo '<b>Bio: </b><em>'.$bio.'</em><br>';
    echo '<h2>Videos by Member</h2>';

    $videos_sql = $wpdb->prepare("SELECT * FROM $videos_table INNER JOIN $wpdb->posts ON $videos_table.link_id = $wpdb->posts.id WHERE member_id = %s", $member_id);
    $video_results = $wpdb->get_results($videos_sql);

    if($wpdb->num_rows > 0) {
      $video_count = $wpdb->num_rows;
      $count = 1;
      echo '<table border="1" cellpadding="10" style="border-collapse:collapse"><thead style="font-weight:bold"><tr><td style="text-align:center">No</td><td>Title</td><td>Status</td><td>Link</td></thead>';
      foreach($video_results as $result) {
        $link_id = $result->link_id;
        $title = $result->title;
        $approved = $result->post_status;
        if(!$approved === 'pending' || !$approved === 'draft') { 
          $approved = 'Pending Review';
          $link = 'No link'; 
        }  else {
          $approved = 'Published';
          $link = '<a href="'.get_permalink($link_id).'" target="_blank">View</a>';
        }

        echo '<tr>';
        echo '<td>'.$count.'</td>';
        echo '<td>'.$title.'</td>';
        echo '<td>'.$approved.'</td>';
        echo '<td>'.$link.'</td>';
        echo '</tr>';

        $count++;
      }
      echo '</table>';
    } else {
      $video_count = 0;
      echo '<span>No videos found.</span>';
    }

    $fav_videos_sql = $wpdb->prepare("SELECT t2.title,t2.link_id FROM $fav_videos_table t1 INNER JOIN $videos_table t2 ON t1.video_id = t2.id WHERE t1.member_id = %s", $member_id);
    $fav_videos_results = $wpdb->get_results($fav_videos_sql);

    echo '<h2>List of Favourite Videos</h2>';

    if($wpdb->num_rows > 0) {
      $fav_video_count = $wpdb->num_rows;
      $count = 1;
      echo '<table border="1" cellpadding="10" style="border-collapse:collapse"><thead style="font-weight:bold"><tr><td style="text-align:center">No</td><td>Title</td><td>Link</td></thead>';
      foreach($fav_videos_results as $result) {
        $title = $result->title;
        $link = '<a href="'.get_permalink($result->link_id).'" target="_blank">View</a>';

        echo '<tr>';
        echo '<td>'.$count.'</td>';
        echo '<td>'.$title.'</td>';
        echo '<td>'.$link.'</td>';
        echo '</tr>';

        $count++;
      }
      echo '</table>';
    } else {
      echo '<span>No favourite videos found.</span>';
    }

    $fav_experiments_table = $wpdb->prefix . 'genaero_favourite_experiments';
    $fav_experiments_sql = $wpdb->prepare("SELECT t1.experiment_id, t2.post_title FROM $fav_experiments_table t1 INNER JOIN $wpdb->posts t2 ON t1.experiment_id = t2.ID WHERE t1.member_id = %s", $member_id);
    $fav_experiments_results = $wpdb->get_results($fav_experiments_sql);

    echo '<h2>List of Favourite Experiments</h2>';

    if($wpdb->num_rows > 0) {
      $fav_experiment_count = $wpdb->num_rows;
      $count = 1;
      echo '<table border="1" cellpadding="10" style="border-collapse:collapse"><thead style="font-weight:bold"><tr><td style="text-align:center">No</td><td>Title</td><td>Link</td></thead>';
      foreach($fav_experiments_results as $result) {
        $title = $result->post_title;
        $link = '<a href="'.get_permalink($result->experiment_id).'" target="_blank">View</a>';

        echo '<tr>';
        echo '<td>'.$count.'</td>';
        echo '<td>'.$title.'</td>';
        echo '<td>'.$link.'</td>';
        echo '</tr>';

        $count++;
      }
      echo '</table>';
    } else {
      echo '<span>No favourite experiments found.</span>';
    }
  }

  ?>