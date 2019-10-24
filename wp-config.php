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
define( 'DB_NAME', 'real_estate' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         ':ET@/d)+p&G}a+q<tToanW6A?0u$V%}-FY0Y#cW=)W$RF4!ENs=InN^QB?m.[y3k' );
define( 'SECURE_AUTH_KEY',  '!.3+g2;uuitiw7L+f ;J!(s=R|.}wk?fO^&}2kVP2Nw{3E$z&AzqOs5B.=[7*::~' );
define( 'LOGGED_IN_KEY',    'op9Lk)1Sg{3nj2=Aj-Y-r wQvrJDMcC~W#rw#L}:F |7#H%1gmiF_^_Bpp|Zy8dN' );
define( 'NONCE_KEY',        '.@*8rSByR.Vh9m9K2>IkwJ=BoOtSJ~rse;aWHh/-y6y;&ngU7K@*9;v^|:PCOK-s' );
define( 'AUTH_SALT',        ' &O!?);HlMD6,V#8V]u7*fBW=O/3v~wH$,J5],AsPqQjfD?|2qfD>/QjbsCB%+:o' );
define( 'SECURE_AUTH_SALT', '9OewNQy7|E1HS@sNDf-~~(zBS2wRH*IoU=S4?(<Ss[wlpX 5<j{{*s#] )jUn!3}' );
define( 'LOGGED_IN_SALT',   '0{Xpk4umUA`S</J54t`~D9,e(c v$[7$X;N3@{v||hR/$?z~NtE+aeqbf6+p!*B.' );
define( 'NONCE_SALT',       'Q?S3`QDI8]NFOOzhPe)!;LqhH5Hr,DY=Z[IVi|0^-u2nVcuvpyQ9m]|m0FJRK0mj' );

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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
