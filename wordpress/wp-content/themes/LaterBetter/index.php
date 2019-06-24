<?php 

	get_header(); 

?>


<?php
if(have_posts()){
	while(have_posts()){
		the_post();
		?>


		<div class="container">
		<article>
			<div class="post-class"><?php the_post_thumbnail('medium'); ?></div>
			<div class='as'>
				<h2>
					<a href="<?php the_permalink(); ?>">
						<?php // the_title(); ?>
					</a>
				</h2>
				<?php  the_content();	?>
			</div>





		</article>
		</div>

		<?php


	}
}	

get_footer();

 ?>



