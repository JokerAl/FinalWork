<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package final
 */

?>

	</div><!-- #content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="container-fluid">
			<div class="site-info">
				<div class="logobot col-md-4 col-sm-4 col-xs-12">
					<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><img src="<?php echo get_theme_mod('logo-img')?>" alt="banner"></a></p>
					<?php bloginfo( 'description' ); ?>

					<div class="social-icon">
						<ul>
							<li><a class="fa fa-facebook" href="<?php echo get_theme_mod('social_icon_facebook');?>"></a></li>
							<li><a class="fa fa-google-plus" href="<?php echo get_theme_mod('social_icon_google');?>"></a></li>
							<li><a class="fa fa-twitter" href="<?php echo get_theme_mod('social_icon_twitter');?>"></a></li>
							<li><a class="fa fa-linkedin-square" href="<?php echo get_theme_mod('social_icon_linked');?>"></a></li>

						</ul>
					</div>
				</div>

				<nav id="site-navigation" class="main-navigation bottom-nav clearfix col-md-4 col-sm-4 col-xs-12" role="navigation">
					<?php wp_nav_menu( array( 'theme_location' => 'footer', 'menu_id' => 'menu 2' ) ); ?>
				</nav>

				<div class="formbot  col-md-4">
					<?php echo do_shortcode('[contact-form-7 id="4" title="Quick contact us"]' );?>
				</div>

			</div><!-- .site-info -->
		</div>
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
