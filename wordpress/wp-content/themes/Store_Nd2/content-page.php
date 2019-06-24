<?php
/**
 * The template used for displaying page.
 *
 * @package TheFour
 */

?>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<div class="entry-content clearfix">
		<?php the_content(); ?>
		
	</div>

</article>
