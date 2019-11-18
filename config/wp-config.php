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

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'thm_miraira');

/** MySQL database username */
define('DB_USER', 'zneto');

/** MySQL database password */
define('DB_PASSWORD', 'gimme1moreZ');

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
define('AUTH_KEY',         '~rcH:i{SB`PLWm*%Z,ZzHUO|r-)#STJ;x0(WoYQz8U+p-+TV ylN f2=%AD*vfVe');
define('SECURE_AUTH_KEY',  'lR3 tI;}%~$pY?Gy,mO)>mj3T^gmk>H5Ny92rwT|a&_0Z})R9B(d3RPg+.z0iiCy');
define('LOGGED_IN_KEY',    '7MWrCFF5^2ET~%U0@m$QZDl @0.|ynKK@D9_9;%t2p]y$#<gfogreb|jk5r>!osc');
define('NONCE_KEY',        'v+BpE*2f#Z[)y EEhBzfj8OCJJ4-`7`wo~;h8;xBSptH*X_Y]7dYg=/c{sI` )Y9');
define('AUTH_SALT',        'nOd24UV{d7$IoROe4v Gq`xH(q3!APXRPj EQgP:KyN:~}(kZ;;!Uf@qjL!F1*fL');
define('SECURE_AUTH_SALT', 'ymp@N`(N0T3(MfgG8wwHlPq0Z5U}9DWK<aN>-[yUF~U*#AzsN,S)G*>W+mL3C8|V');
define('LOGGED_IN_SALT',   'ZDL#}FpTYX=t$s$qKe1$|eLxE=@rd`.71O}ymPktIAs!RgVO}@Ic9#[2R-r^ocD&');
define('NONCE_SALT',       'v+$w89(sCTj~~_Ap~0Vr_H?~L&v07&_+SmuHlqD0[aI{BqFz[Q4@X&GGmgu`x2Nw');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_miratheme_';

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

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
