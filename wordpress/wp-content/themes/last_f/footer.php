




		<footer class='footer'>
			<hr>
		<?php wp_footer(); ?>
		<?php 
		$f_menu = array(
			'theme_location'	=>	'footer-menu'
		); 
		$f_main_menu = array(
			'theme_location'	=>	'top-menu'
		); 
		
		?>

		<nav>
			<nav class="vertical-menu">
				<?php wp_nav_menu($f_menu); ?>
			</nav>

			<nav class="main-menu-f">
				<?php wp_nav_menu($f_main_menu); ?>
			</nav>
		</nav>
		
		</footer>
	</body>

	<?php wp_footer(); ?>
</html>
