<?php
/*
Template Name: home
*/
get_header(); ?>
    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">

            <section id="about" class="about-us text-center">
                <div class="container">
                    <div class="row">
                        <div class="title-land col-md-6 col-sm-6 col-xs-6"><h2>About us</h2></div>
                        <div class="description col-md-6 col-sm-6 col-xs-6">
                            <p><?php echo get_theme_mod('about_us'); ?></p>
                            <form action="">
                                <input type="submit" value="Read more" class="submit">
                            </form>
                        </div>
                    </div>
                </div>
            </section><!-- section services -->
            <!-- top-header -->
            <section id="services" class="services container-fluid">
                <div class="container">
                    <div class="title-land"><h2>Services</h2></div>
                    <div class="row">
                        <div class="description ">
                            <div class="serv col-md-6 col-sm-6 col-xs-6">
                                <div class="col-md-2"><img src="/wp-content/themes/final/img/rockets.png" alt="sup">
                                </div>
                                <div class="col-md-10">
                                    <h3>Boosting your business</h3>
                                    <p><?php echo get_theme_mod('services_business'); ?></p>
                                </div>
                            </div>
                            <div class="serv col-md-6 col-sm-6 col-xs-6">
                                <div class="col-md-2"><img src="/wp-content/themes/final/img/human.png" alt="sup"></div>
                                <div class="col-md-10">
                                    <h3>Online support</h3>
                                    <p><?php echo get_theme_mod('services_suport'); ?></p>
                                </div>
                            </div>
                            <div class="serv col-md-6 col-sm-6 col-xs-6">
                                <div class="col-md-2"><img src="/wp-content/themes/final/img/button.png" alt="sup"></div>
                                <div class=" col-md-10">
                                <h3>analyzing business strategy</h3>
                                <p><?php echo get_theme_mod('services_strategy'); ?></p>
                            </div>
                        </div>
                        <div class="serv col-md-6 col-sm-6 col-xs-6">
                            <div class="col-md-2"><img src="/wp-content/themes/final/img/clock.png" alt="sup"></div>
                            <div class=" col-md-10">
                            <h3>Time managment</h3>
                            <p><?php echo get_theme_mod('services_managment'); ?></p>
                        </div>
                    </div>
                </div>
    </div>
    <form action="">
        <input type="submit" value="Read more" class="submit">
    </form>
    </div><!-- container -->
    </section><!-- top-header -->

    </main><!-- #main -->
    </div><!-- #primary -->

<?php get_footer(); ?>