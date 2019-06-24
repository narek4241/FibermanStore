<?php

if ( ! function_exists( 'thefour_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function thefour_setup() {
		// Theme features.
		add_theme_support( 'automatic-feed-links' );
		add_theme_support( 'title-tag' );
		add_theme_support( 'custom-logo' );
		add_theme_support( 'post-thumbnails' );
		add_image_size( 'thefour-grid-thumbnail', 353, 203, true );

		set_post_thumbnail_size( 741, 293, true );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		/*
		 * Enable support for Post Formats.
		 *
		 * See: https://codex.wordpress.org/Post_Formats
		 */
		add_theme_support( 'post-formats', array(
			'aside',
			'video',
			'quote',
			'audio',
		) );

		register_nav_menus( array(
			'menu-1' => esc_html__( 'Header', 'thefour-lite' ),
		) );

		// Make the theme translation ready.
		load_theme_textdomain( 'thefour-lite', get_template_directory() . '/languages' );
	}
endif;
add_action( 'after_setup_theme', 'thefour_setup' );


function thefour_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'thefour_content_width', 760 );
}
add_action( 'after_setup_theme', 'thefour_content_width', 0 );







/**
 * Enqueue scripts and styles.
 */
function thefour_scripts() {
	//wp_enqueue_style( 'thefour-fonts', thefour_google_fonts_url() );
	//wp_enqueue_style( 'font-awesome', get_template_directory_uri() . '/css/font-awesome.css', '', '4.6.3' );
	wp_enqueue_style( 'thefour-lite', get_stylesheet_uri(), '', '1.0.1' );

	//wp_enqueue_script( 'thefour-lite', get_template_directory_uri() . '/js/script.js', array( 'jquery' ), wp_get_theme( 'thefour-lite' )->version, true );

}
add_action( 'wp_enqueue_scripts', 'thefour_scripts' );




add_filter( 'widget_tag_cloud_args', 'thefour_widget_tag_cloud_args' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Theme dashboard.
 */
require get_template_directory() . '/inc/dashboard/dashboard.php';
$dashboard = new TheFour_Dashboard;

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer/sanitizer.php';
require get_template_directory() . '/inc/customizer/customizer.php';
$sanitizer  = new TheFour_Customize_Sanitizer;
$customizer = new TheFour_Customizer( $sanitizer );
$customizer->init();
