<html>
<head class="head">
	<title class="title-class"><?php bloginfo('name'); ?></title>

	<div class="head1">
		<div class="site-name"><h1><?php bloginfo('name'); ?></h1></div>
		
		<?php //<meta charset="<?php bloginfo('charset'); ?>
		<div class="head_d">
		 <!-- <h1 class="site-header"><a href="index.php"><?php bloginfo('name'); ?></a></h1> -->
		<?php wp_head(); ?>

		<div class="searchform">
			<?php get_search_form(); ?>
		</div>


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





