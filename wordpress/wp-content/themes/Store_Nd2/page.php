<?php
/**
 * The template for displaying all pages.
 *
 * @package TheFour
 */

get_header(); ?>

<section id="content" class="content">

	<?php if ( have_posts() ) :  the_post(); ?>

		<?php get_template_part( 'template-parts/content', 'page' ); ?>

		<?php
		
		?>

	<?php endif; ?>

</section>



<?php get_footer(); ?>
