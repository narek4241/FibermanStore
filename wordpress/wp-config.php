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
define('DB_NAME', 'my_store');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

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
define('AUTH_KEY',         'W=;snjBF9j[P6[CGHMFV~<D6WzLflO*9u&$F66oe|I2YapdJP3}ff0=p/:M<qP+!');
define('SECURE_AUTH_KEY',  '8Dd=NL-j<&|:=w>;C|J6+GV@q.Xc-TH7r<C_lbaX(F[?|y/%-d>^9_H4jz88U]?)');
define('LOGGED_IN_KEY',    '$A7ubU c3$65bYEeV^qqz>qFSpYT.>K~K8?PQW|pXZ,;$j!m#k9@c3d_04G}-JCZ');
define('NONCE_KEY',        '7UO5I<^t`R^7TCI2S eOF@C0o-+qhu0Tv~96b$:=zGQ@-6R$m;xL2U]Hji8W@k;1');
define('AUTH_SALT',        'q,n4*/e. UTHv*,UG6v&fs2Ih&!Eu+ws-&@K)~/@az.(RcRJT6./CEk0@*,C6jsw');
define('SECURE_AUTH_SALT', '7ZI]dch+,0tfsG3%HjF+0bK+K5zi> ,s6? )osYA-?3ZwL$JHvVJgILUXMEhp8+O');
define('LOGGED_IN_SALT',   'CrgbC6:0}=1{cO(+JM]Y&DVsDTvYr_EJTG# 1Y*uL2Gym5GUz_7nJ~:Zx{lDBmIh');
define('NONCE_SALT',       '7rt(HY PcKH?OM*[BA3!Y`20IMWym(Noiqbb,>N*[,9ZdoJx=8ky-iA2Yr3p1]S?');

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

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
