<?php



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


/**
 * Custom template tags for this theme.
 */


/**
 * Custom functions that act independently of the theme templates.
 */

 



/**
 * Customizer additions.
 */
