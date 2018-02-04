<?php
/**
 * Template Name: Members Logout Page
 *
 * Template for displaying a log out page.
 *
 * @package understrap
 */

session_start();

if(isset($_SESSION["username"])){
	unset($_SESSION["username"]);
}
if(isset($_SESSION["user_id"])){
	unset($_SESSION["user_id"]);
}

session_destroy();
wp_redirect( 'login', 301 );
exit; 

?>