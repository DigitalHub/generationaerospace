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
?>