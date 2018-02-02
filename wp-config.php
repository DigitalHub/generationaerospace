<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info form your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'admin_generationaerospace');
// define('DB_NAME', 'generationaerospace');

/** MySQL database username */
define('DB_USER', 'admin_admin');
// define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'jQjmEK70');
// define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'ommP4+Tl{nixkBiL1}B.cA#tFjcMdxSfFVgl/(Uavz>wSFs>XveT8}Go4sdtw+z8');
define('SECURE_AUTH_KEY',  'sMO+`G.,P%<9v|y8=JD0]u:_l`Wt<&NFO.0uzny2Uw&{;]8CW#3B&=g}FCUAt<.,');
define('LOGGED_IN_KEY',    '0jPi:;.hTL=JNV]A<it)07pWXj3WJ{F{`{qI+h`m}:PK..XgV9me]L(U}I5ew.83');
define('NONCE_KEY',        'l)y]>vG$_Zdz;7&4hP|:}GlgF%0C|t>4,iq@j+]`CY_Q!;CV9eIu,>aMEt04aV3#');
define('AUTH_SALT',        '`dzf?p+UA7!{U&Yb;m@<&#|TeFzyY&]q-k@7@FQhZ8}1&.?S/P3{<7(G}?(POL9?');
define('SECURE_AUTH_SALT', 'GvELwi|oM 8+qlAz*&AHy$&juf,alGrp9G@3=5Ufs.4sSBVLbU~{X.BX2ebKg;d7');
define('LOGGED_IN_SALT',   ' >}&zh[ewGtlH6|k%T7|iTt.E4)Kx[**xyflRalfx[(Qtro~LV&fG0Y^&Ahe-y]8');
define('NONCE_SALT',       '9cF)<`0}!{El)Qa/@u7[>dS;a>0MpuLk#S6_LXCr{afr iLVy((:KPT<C62*sgzN');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

define( 'UPLOADS', 'wp-content/uploads' );
/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

/** YouTube API Key */
define(YOUTUBE_API_KEY, 'AIzaSyDmfdGOPcsVKZr1WoXFz2sym3fnN4YRgAc');

/** YouTube API Key */
define(GMAP_API_KEY, 'AIzaSyBlgkeNb2t9Vs5fhd4QjzqudI2doBwUTDs');