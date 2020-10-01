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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'admin' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'tke#Ck7Hs+r4ewRuv5i09gY3k=s.c%Ag_]7xxZ7j~Yz<>p(Wy_fKLRe+Zl8-~4e]');
define('SECURE_AUTH_KEY',  '+,&@hnm Ww~f$Ogv6w]eK|a@5EtC}Z{+|9z<W8DV:Mg0ENeTSXO6(3-@@Hp96hj9');
define('LOGGED_IN_KEY',    '7IsMQK81pH/wncq-yEY%GgCuwX|=7<U?6sPR[3R#@Rq5-`+&p/21wYs~Eq|TQ[V`');
define('NONCE_KEY',        'mr7gZFB;9N&Xq^mJtrkz[H|>{[H86^ cj`9uhKwG*/M=p|hS~`yWz}U4%T_)3Dz0');
define('AUTH_SALT',        'QUIW]7zU]HIuvMs@~7D]c]SsfM{X:)-{jUK>Ne3{+uut}o?9Q.ru YBfr76^qBVs');
define('SECURE_AUTH_SALT', 'X*N?^,S.|@ MJ+NS=hSP+Iw/bPS.W4f}.fv5~Z1`fIuUwKF|V;929|dc-|51A9&r');
define('LOGGED_IN_SALT',   'O/[-@#69}P?pF-<*p73|>|i4bD:vPW8IU5ghQ|wV&%Y4)}g-ESev%7tB ?Jz$2A]');
define('NONCE_SALT',       'dE9+h}y+E/?-,=$OV)rw!vDC/I_b)vjKZ-wX,gq$CY|VlrBWq&~-W0QDJ-Q;qxhS');

/**#@-*/

/**
 * WordPress Database Table prefix.
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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
