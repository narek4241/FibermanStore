<?php 

	get_header(); 

?>


<?php
if(have_posts()){
	while(have_posts()){
		the_post();
		?>


		<div class="container">
		
		<?php 
			if(is_page('contact')){
				?>
						<article>
			<div class="post-class"><?php the_post_thumbnail('medium'); ?></div>
			<div class='as'>
				<h2>
					<a href="<?php the_permalink(); ?>">
						<?php // the_title(); ?>
					</a>
				</h2>
				<div class="contact-content">
				<?php  the_content();	?>
				</div>
			</div>





		</article>




				<?php
			}
			else{
				?>
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


				
				<?php
			}

		 ?>

		
		</div>

		<?php


	}
}	

get_footer();

 ?>



