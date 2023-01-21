<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'HqNT+UwBT:M1g8(+m-lpVJ:aH9VwA^ZEptsR}i3V&]YyB~&WVrU{( U#]h8F<Hn ' );
define( 'SECURE_AUTH_KEY',  'Elp`auPED!uffVgMsDeY_^w+@`@VADtQ44qPKtjH_ Jl{=(nDF1jJ;5`M*3#6tZh' );
define( 'LOGGED_IN_KEY',    'a4X2c(MC+?k@c;&vD3 {uR.c_~64StP@>pP#: cYe+Q,6Act4Clr|Q,6*>doJ*|G' );
define( 'NONCE_KEY',        'azAq>gN^d=3G1aRw:v#USL2o;&}-8UPgc%>bklp^/qK$4bx$a5TqI`(6RO!)!9qx' );
define( 'AUTH_SALT',        '76> 6G=1BM<v#+&O9hQDAg[hr@SB}-9qGpbwqg?bUuc2=qJclv9pdD8uYK}Amo=;' );
define( 'SECURE_AUTH_SALT', '5:b)]SomWo=QSZ`4vqNYN^hDm6*I*y 50%CTw^bU/ozG6WOp/c:,5o3#=nSxJq<Z' );
define( 'LOGGED_IN_SALT',   '>VaFgw*Y}f~GTG)h>SX6` |n1q[PjbFl&zocc3Pj>,w}dm/1h,IpyG?S9xa]` ew' );
define( 'NONCE_SALT',       'sT<GvbsHPOa?Jv~<(VU|aeglF[v}(H.o>qEz34un|4<F;l=4-wbz UN*X~e^a!q>' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
