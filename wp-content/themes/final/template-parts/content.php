<?php
/**
 * Template part for displaying posts.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package final
 */

?>

<article class="container-fluid" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<header class="entry-header">

		<div class="titel-post">
			<?php
			if (is_single()) {
				the_title('<h1 class="entry-title">', '</h1>');
			} else {
				the_title('<h2 class="entry-title"><a href="' . esc_url(get_permalink()) . '" rel="bookmark">', '</a></h2>');
			}

			if ('post' === get_post_type()) : ?>
				<?php
			endif; ?>
			<span class="autor">POSTED BY: <?php the_author_posts_link(); ?> <?php echo get_the_date( 'M- j- Y' ); ?></span>
			<div class="img-wrapper">
				<?php the_post_thumbnail(); ?>
			</div>

		</div>
	</header><!-- .entry-header -->

	<div class="entry-content">
		<?php
		the_content(sprintf(
		/* translators: %s: Name of current post. */
			wp_kses(__('Continue reading %s <span class="meta-nav">&rarr;</span>', '_s'), array('span' => array('class' => array()))),
			the_title('<span class="screen-reader-text">"', '"</span>', false)
		));

		wp_link_pages(array(
			'before' => '<div class="page-links">' . esc_html__('Pages:', '_s'),
			'after' => '</div>',
		));
		?>


	</div><!-- .entry-content -->
	<div class="social-icons col-md-4 col-sm-4">
		<span>Share :</span>
		<ul>
			<li><a class="fa fa-facebook" href="<?php echo get_theme_mod('social_icon_facebook');?>"></a></li>
			<li><a class="fa fa-twitter" href="<?php echo get_theme_mod('social_icon_twitter');?>"></a></li>
			<li><a class="fa fa-google-plus" href="<?php echo get_theme_mod('social_icon_google');?>"></a></li>
		</ul>
	</div>

</article><!-- #post-## -->