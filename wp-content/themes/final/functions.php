<?php
/**
 * final functions and definitions.
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package final
 */

if ( ! function_exists( 'final_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function final_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on final, use a find and replace
	 * to change 'final' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'final', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => esc_html__( 'Primary', 'final' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 * See https://developer.wordpress.org/themes/functionality/post-formats/
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
	) );

	// Set up the WordPress core custom background feature.
	add_theme_support( 'custom-background', apply_filters( 'final_custom_background_args', array(
		'default-color' => 'ffffff',
		'default-image' => '',
	) ) );
}
endif;
add_action( 'after_setup_theme', 'final_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function final_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'final_content_width', 640 );
}
add_action( 'after_setup_theme', 'final_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function final_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'final' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'final' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'final_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function final_scripts() {
	wp_enqueue_style( 'final-style', get_stylesheet_uri() );

	wp_enqueue_script( 'final-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'final-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'final_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';

function theme_classic_scripts() {
	wp_enqueue_style( 'bootstrap.min', get_template_directory_uri() . '/css/bootstrap.min.css' );
	wp_enqueue_style( 'flexslider', get_template_directory_uri() . '/css/flexslider.css' );
	wp_enqueue_style( 'main', get_template_directory_uri() . '/css/main.css' );

	wp_enqueue_script( 'jquery-1.12.0.min', '/js/jquery-1.12.0.min.js', array( 'jquery' ), 1.1, true );
	wp_enqueue_script( 'flex-script', get_template_directory_uri() . '/js/jquery.flexslider-min.js', array( 'jquery' ), false, true );
	wp_enqueue_script( 'script', get_template_directory_uri() . '/js/script.js', array( 'jquery' ), 1.1, true );

	wp_enqueue_script( 'theme_classic-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'theme_classic-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'theme_classic_scripts' );

//Font awesome

function font_awesome() {
	if (!is_admin()) {
		wp_register_style('font-awesome', 'http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css');
		wp_enqueue_style('font-awesome');
	}
}
add_action('wp_enqueue_scripts', 'font_awesome');


	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => esc_html__( 'Primary', 'theme_classic' ),
		'footer'=> esc_html__('Footer', 'theme_classic')
	) );
//register blog
add_action( 'init', 'register_blog' );
function register_blog() {
	$labels = array(
		'name'               => __( 'Blog' ),
		'singular_name'      => __( 'блог' ),
		'add_new'            => __( 'Добавить пост' ),
		'add_new_item'       => __( 'Добавить новый пост' ),
		'edit_item'          => __( 'Редактировать пост ' ),
		'new_item'           => __( 'Новый пост' ),
		'all_items'          => __( 'Все посты' ),
		'view_item'          => __( 'Просмотр постов' ),
		'search_items'       => __( 'Искать посты' ),
		'not_found'          => __( 'посты не найдено.' ),
		'not_found_in_trash' => __( 'В корзине нет постов.' ),
		'menu_name'          => __( 'блог' )
	);
	$args   = array(
		'labels'        => $labels,
		'public'        => true, // благодаря этому некоторые параметры можно пропустить
		'menu_icon'     => 'dashicons-images-alt',
		'menu_position' => 5,
		'has_archive'   => true,
		'supports'      => array(
			'title',
			'editor',
			'excerpt',
			'thumbnail',
			'comments',
			'categories',
			'custom-fields'
		),
		'taxonomies'    => array( 'post_tag', 'category' ),

	);
	register_post_type( 'blog', $args );
}
function wp_corenavi() {
	global $wp_query;
	$pages = '';
	$max = $wp_query->max_num_pages;
	if (!$current = get_query_var('paged')) $current = 1;
	$a['base'] = str_replace(999999999, '%#%', get_pagenum_link(999999999));
	$a['total'] = $max;
	$a['current'] = $current;

	$total = 1; //1 - выводить текст "Страница N из N", 0 - не выводить
	$a['mid_size'] = 3; //сколько ссылок показывать слева и справа от текущей
	$a['end_size'] = 1; //сколько ссылок показывать в начале и в конце
	$a['prev_text'] = ' '; //текст ссылки "Предыдущая страница"
	$a['next_text'] = ' '; //текст ссылки "Следующая страница"
	$a['prev_next'] = false;
	if ($max > 1) echo '<div class="navigation">';

	echo $pages . paginate_links($a);
	if ($max > 1) echo '</div>';
}
function example_customizer( $wp_customize ) {

	$wp_customize->add_section(
		'about_section',
		array(
			'title' => 'Про нас',
			'description' => 'Это секция настроек.',
			'priority' => 34,
		)
	);
	$wp_customize->add_setting(
		'about_us',
		array(
			'default' => '',
		)
	);
	$wp_customize->add_control(
		'about_us',
		array(
			'label' => 'About',
			'section' => 'about_section',
			'type' => 'textarea',
		)
	);
	///////////////////////////////////////////////////////////
	$wp_customize->add_section(
		'services_section',
		array(
			'title' => 'Services',
			'description' => 'Это секция настроек.',
			'priority' => 33,
		)
	);
	$wp_customize->add_setting(
		'services_business',
		array(
			'default' => '',
		)
	);
	$wp_customize->add_control(
		'services_business',
		array(
			'label' => 'Business',
			'section' => 'services_section',
			'type' => 'textarea',

		)
	);

	$wp_customize->add_setting(
		'services_suport',
		array(
			'default' => '',
		)
	);
	$wp_customize->add_control(
		'services_suport',
		array(
			'label' => 'Suport',
			'section' => 'services_section',
			'type' => 'textarea',
		)
	);
	$wp_customize->add_setting(
		'services_strategy',
		array(
			'default' => '',
		)
	);
	$wp_customize->add_control(
		'services_strategy',
		array(
			'label' => 'Strategy',
			'section' => 'services_section',
			'type' => 'textarea',
		)
	);
	$wp_customize->add_setting(
		'services_managment',
		array(
			'default' => '',
		)
	);
	$wp_customize->add_control(
		'services_managment',
		array(
			'label' => 'Managment',
			'section' => 'services_section',
			'type' => 'textarea',
		)
	);


/////////////////////////////////////////////////////////////////////
	$wp_customize->add_section(
		'social_icon_section',
		array(
			'title' => 'Социальные сети',
			'description' => 'Это секция настроек.',
			'priority' => 35,
		)
	);

	$wp_customize->add_setting(
		'social_icon_facebook',
		array(
			'default' => '',
		)
	);
	$wp_customize->add_control(
		'social_icon_facebook',
		array(
			'label' => 'Ссылка на facebook',
			'section' => 'social_icon_section',
			'type' => 'url',
		)
	);
	$wp_customize->add_setting(
		'social_icon_twitter',
		array(
			'default' => '',
		)
	);
	$wp_customize->add_control(
		'social_icon_twitter',
		array(
			'label' => 'Ссылка на твиттер',
			'section' => 'social_icon_section',
			'type' => 'url',
		)
	);
	$wp_customize->add_setting(
		'social_icon_linkedin',
		array(
			'default' => '',
		)
	);
	$wp_customize->add_control(
		'social_icon_linkedin',
		array(
			'label' => 'Ссылка на Linkedin',
			'section' => 'social_icon_section',
			'type' => 'url',
			'default' => 'http://'
		)
	);
	$wp_customize->add_section(
		'contact_section',
		array(
			'title' => 'Contact',
			'description' => 'Это секция настроек.',
			'priority' => 4,
		)
	);




	$wp_customize->add_section(
		'example_section_one',
		array(
			'title' => 'Баннер',
			'description' => 'This is a settings section.',
			'priority' => 2,
		)
	);
	$wp_customize->add_setting( 'img-upload' );

	$wp_customize->add_control(
		new WP_Customize_Image_Control(
			$wp_customize,
			'img-upload',
			array(
				'label' => 'Image Upload',
				'section' => 'example_section_one',
				'settings' => 'img-upload'
			)
		)
	);
	$wp_customize->add_section(
		'logo',
		array(
			'title' => 'Логотип',
			'description' => 'This is a settings section.',
			'priority' => 1,
		)
	);
	$wp_customize->add_setting( 'logo-img' );

	$wp_customize->add_control(
		new WP_Customize_Image_Control(
			$wp_customize,
			'logo-img',
			array(
				'label' => 'Logo img',
				'section' => 'logo',
				'settings' => 'logo-img',
				'default' => ''
			)
		)
	);
	$wp_customize->add_section(
		'AbouUS',
		array(
			'title' => 'Про нас',
			'description' => 'Про нас',
			'priority' => 4,
		)
	);
}
add_action( 'customize_register', 'example_customizer' );

