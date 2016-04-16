<?php
/**
 * The template for displaying all single posts.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package final
 */

get_header(); ?>

	<div id="primary" class="content-area">
		<?php get_template_part( 'template-parts/category','page' );?>
		<main id="main" class="site-main" role="main">
			<div class="container-fluid">
				<?php

				while ( have_posts() ) : the_post();

					get_template_part('template-parts/content', get_post_format());

					

				endwhile; // End of the loop.
				?>
			</div>
		</main><!-- #main -->
	</div>

<?php

get_footer();
