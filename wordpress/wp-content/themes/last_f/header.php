<html>
<head class="head">
	<title class="title-class"><?php bloginfo('name'); ?></title>

	<div class="head1">
		<div class="header-logo-search">
		<a href="index.php"><img src="http://localhost/wordpress/wp-content/themes/last_f/img/site-logo.png"></a>
		<a class='logo-2nd' href="index.php/shop"><img src="http://localhost/wordpress/wp-content/themes/last_f/img/site-logo-2nd.png"></a>

		
		</div>

		<?php get_search_form(); ?>

		
		<!--
		<div class="site-name"><h1><?php bloginfo('name'); ?></h1>
				<div class="searchform">
			<?php get_search_form(); ?>
		</div>
		-->

		</div>
		
		<?php //<meta charset="<?php bloginfo('charset'); ?>
		<div class="head_d">
		 <!-- <h1 class="site-header"><a href="index.php"><?php bloginfo('name'); ?></a></h1> -->
		<?php wp_head(); ?>

		


	</div>


	<nav class='main-menu'>
		<?php  $t_menu = array(
			'theme_location'	=>	'topmenu'
		); ?>
		<?php wp_nav_menu($t_menu); ?>
	</nav>
	<div class="head_d">
	
	
	</head>
</div>
<body>





