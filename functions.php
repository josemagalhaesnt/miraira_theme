<?php 

//Incluindo os arquivos da TGM
require_once get_template_directory() . '/inc/class-tgm-plugin-activation.php';
require_once get_template_directory() . '/inc/required-plugins.php';
require_once get_template_directory() . '/functions/better-comments.php';

// Customizador Wordpress
require get_template_directory() . '/inc/customizer.php';

// Register Custom Navigation Walker
require_once get_template_directory() . '/inc/wp-bootstrap-navwalker.php';

// Carregando os scripts e folhas de estilos
function load_scripts(){
	wp_enqueue_script('bootstrap-js', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js', array('jquery'), '4.3.1', true);
	wp_enqueue_style('bootstrap-css', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', array() , '4.3.1' , 'all');
	wp_enqueue_style('template', get_template_directory_uri() . '/css/style.css', array());
	wp_enqueue_script('fitvids', get_template_directory_uri() . '/js/fitvids.js', array('jquery'), null, true);
	
}

add_action('wp_enqueue_scripts','load_scripts');

function miraira_editor_styles() {
	wp_enqueue_style('editor-styles', get_template_directory_uri() . '/css/style-editor.css');
}

add_action('enqueue_block_editor_assets', 'miraira_editor_styles');

// Configurações do Tema
function miraira_config() {

	// Registrando os Menus

	register_nav_menus(
		array(
			'mira_main_menu' => __('Main Menu', 'miraira'),
			'mira_top_bar' => __('Topbar Menu', 'miraira'),
			'mira_footer_menu' => __('Footer Menu', 'miraira')
		)
	);
	$args = array(
		'height' => 225,
		'width' => 1920
	);
	add_theme_support('title-tag');
	add_theme_support('custom-logo', array('width'=>110, 'height'=> 65));
	add_theme_support('custom-header', $args);
	add_theme_support('post-thumbnails');
	add_theme_support('yoast-seo-breadcrumbs');
	add_theme_support('post-formats', array('audio','video','image', 'gallery'));
	set_post_thumbnail_size( 360, 240 );
	add_image_size( 'miraira-mini', 360, 240, TRUE);

	// Habilitando suporte à tradução
	$textdomain = 'miraira';
	load_theme_textdomain($textdomain, get_stylesheet_directory() . '/languages/');
	load_theme_textdomain($textdomain, get_template_directory() . '/languages/');

	//Suporte ao Gutenberg
	add_theme_support( 'gutenberg', array() );
	add_theme_support('align-wide');
	add_theme_support('editor-color-palette', array(
		array(
			'name' => __('Miraira Orange', 'miraira'),
			'slug' => 'miraira-orange',
			'color' => '#ca2604',
		),
		
		array(
			'name' => __('St. Brás Wine', 'miraira'),
			'slug' => 'wine',
			'color' => '#990000'
		), 
		array(
			'name' => __('Vivid Orange', 'miraira'),
			'slug' => 'vivid-orange',
			'color' => '#d84a05'
		), 
		array(
			'name' => __('Light Orange', 'miraira'),
			'slug' => 'light-orange',
			'color' => '#ec7505'
		), 
		array(
			'name' => __('Yellow', 'miraira'),
			'slug' => 'yellow',
			'color' => '#e89005'
		), 
		array(
			'name' => __('Champagne', 'miraira'),
			'slug' => 'champagne',
			'color' => '#F5E2C8'
		),
		array(
			'name' => __('Cachaça', 'miraira'),
			'slug' => 'cachaca',
			'color' => '#BBB8B2'
		),
		array(
			'name' => __('White', 'miraira'),
			'slug' => 'white',
			'color' => '#FCF7F8',
		),
		array(
			'name' => __('Black', 'miraira'),
			'slug' => 'black',
			'color' => '#121217',
		)
	));
	
}

add_action('after_setup_theme','miraira_config', 0);

add_filter( 'image_size_names_choose', 'my_custom_sizes' );
function my_custom_sizes( $sizes ) {
return array_merge( $sizes, array(
'miraira-mini' => __( 'Miniatura' ),

) );
}

