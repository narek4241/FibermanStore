	<?php 


get_header();



if(have_posts() ){
	?>
		<h2>Result for : <?php the_search_query(); ?></h2>
	<?php

	while(have_posts() ){
		the_post();
		?>
			<article class="search-res">
			<h2>
		<a href="<?php the_permalink(); ?>">
			<?php the_title(); ?>
		</a>
	</h2>
	
	<?php the_time('l, F j, Y'); ?> |
	<a href=""><?php the_author(); ?></a> |

				
	<a href=""><?php the_category(','); ?></a> |
	<?php //the_post_thumbnail(); ?> 
	<?php the_excerpt(); ?>
		  	
	</article>
	<?php
	}


}
else{
	echo "<p class='ncf'>No Content Found</p>";
}


get_footer();

 ?>


				
