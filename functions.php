<?php 
// Customizador Wordpress
require get_template_directory() . '/inc/customizer.php';

// Register Custom Navigation Walker
require_once get_template_directory() . '/inc/wp-bootstrap-navwalker.php';

// Carregando os scripts e folhas de estilos
function load_scripts(){
	wp_enqueue_script('bootstrap-js', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js', array('jquery'), '4.2.1', true);
	wp_enqueue_style('bootstrap-css', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', array() , '4.2.1' , 'all');
	wp_enqueue_style('template', get_template_directory_uri() . '/css/miraira.css', array());
	wp_enqueue_style('icons','https://use.fontawesome.com/releases/v5.7.1/css/all.css', array(), '5.7.1','all');
	wp_enqueue_style('google-fonts', 'https://fonts.googleapis.com/css?family=Roboto',array());
}

add_action('wp_enqueue_scripts','load_scripts');

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
	add_theme_support('post-formats', array('video','image', 'gallery'));
	set_post_thumbnail_size( 360, 240 );
	add_image_size( 'miraira-mini', 360, 240, TRUE);

	// Habilitando suporte à tradução
	$textdomain = 'miraira';
	load_theme_textdomain($textdomain, get_stylesheet_directory() . '/languages/');
	load_theme_textdomain($textdomain, get_template_directory() . '/languages/');
	

}

add_action('after_setup_theme','miraira_config', 0);

add_filter( 'image_size_names_choose', 'my_custom_sizes' );
function my_custom_sizes( $sizes ) {
return array_merge( $sizes, array(
'miraira-mini' => __( 'Miniatura' ),

) );
}

