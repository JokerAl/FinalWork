<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Classic_theme
 */

get_header(); ?>

    <div id="primary" class="content-area">
    <main id="main" class="site-main" role="main">
<?php
if (have_posts()) :

    if (is_home() && !is_front_page()) : ?>
        <header>
            <h1 class="page-title screen-reader-text"><?php single_post_title(); ?></h1>
        </header>

        <?php
    endif; ?>


    <div class="blog container-fluid">
        <ul class="blog">
            <?php // Display blog posts on any page @ http://m0n.co/l
            $temp = $wp_query; $wp_query= null;
            $wp_query = new WP_Query(); $wp_query->query('showposts=3' . '&paged='.$paged);
            while ($wp_query->have_posts()) : $wp_query->the_post(); ?>
                    <li>
                       <div class="ava"><?php echo get_avatar( $comment, 32 ); ?></div>
                        <h3><a href="<?php echo get_permalink($post->ID); ?>"><?php the_title(); ?> </a></h3>
                        <span class="autor">POSTED BY: <?php the_author_posts_link(); ?> <?php echo get_the_date( 'M- j- Y' ); ?></span>
                        <div class="img-wrapper">
                            <?php the_post_thumbnail(); ?>
                        </div>
                        <div class="post-description">

                            <div class="blog-excerpt">
                                <?php the_excerpt(); ?>
                            </div>
                        </div>
                        <div class="social-icons col-md-4 col-sm-4">
                           <span>Share :</span>
                            <ul>
                                <li><a class="fa fa-facebook" href="<?php echo get_theme_mod('social_icon_facebook');?>"></a></li>
                                <li><a class="fa fa-twitter" href="<?php echo get_theme_mod('social_icon_twitter');?>"></a></li>
                                <li><a class="fa fa-google-plus" href="<?php echo get_theme_mod('social_icon_google');?>"></a></li>
                            </ul>
                        </div>
                        <div class="more">
                        <a href="<?php the_permalink(); ?>" class="read-more"><?php echo __('Read more'); ?></a>
                        </div>
                    </li>
                <?php endwhile;
                wp_reset_postdata();
            if (function_exists('wp_corenavi')) wp_corenavi();
            endif; ?>
            <?php  ?>
        </ul>
    </div>

    </main><!-- #main -->
    </div><!-- #primary -->

    <?php
    get_sidebar();
    get_footer();
