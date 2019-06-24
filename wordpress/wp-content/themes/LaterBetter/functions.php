<?php 

	wp_enqueue_style('style' , get_stylesheet_uri());

	$arr_menu = array(
		'top_menu'	=>	__('top-menu'),
		'footer_menu'	=>	__('footer-menu')
	);

	register_nav_menus($arr_menu);

	add_theme_support( 'post-thumbnails' ); 

	add_image_size('sizeN' , 450 , 450 , false);


	

 ?>