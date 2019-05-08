<?php
if ( !defined( 'ABSPATH' ) ) exit;

if ( !function_exists( 'hestia_child_parent_css' ) ):
    function hestia_child_parent_css() {
        wp_enqueue_style( 'hestia_child_parent', trailingslashit( get_template_directory_uri() ) . 'style.css', array( 'bootstrap' ) );
	if( is_rtl() ) {
		wp_enqueue_style( 'hestia_child_parent_rtl', trailingslashit( get_template_directory_uri() ) . 'style-rtl.css', array( 'bootstrap' ) );
	}

    }
endif;
add_action( 'wp_enqueue_scripts', 'hestia_child_parent_css', 10 );

/**
 * Import options from Hestia
 *
 * @since 1.0.0
 */
function hestia_child_get_lite_options() {
	$hestia_mods = get_option( 'theme_mods_hestia' );
	if ( ! empty( $hestia_mods ) ) {
		foreach ( $hestia_mods as $hestia_mod_k => $hestia_mod_v ) {
			set_theme_mod( $hestia_mod_k, $hestia_mod_v );
		}
	}
}
add_action( 'after_switch_theme', 'hestia_child_get_lite_options' );

function force_http () {

  if ( is_ssl() ) {
    wp_redirect('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'], 301 );
    exit();
  }
}
add_action ( 'template_redirect', 'force_http', 1 );

function miraira_nav() {
    global $post;
    echo '<ul id="trilha">';
    if (!is_home()) {
        echo '<li><a href="';
        echo get_option('home');
        echo '">';
        echo 'Página inicial';
        echo '</a></li><li class="separador"> / </li>';
        if (is_category() || is_single()) {
            echo '<li>';
            the_category(' </li><li class="separador"> / </li><li> ');
            if (is_single()) {
                echo '</li><li class="separador"> / </li><li>';
                the_title();
                echo '</li>';
            }
        } elseif (is_page()) {
            if($post->post_parent){
                $anc = get_post_ancestors( $post->ID );
                $title = get_the_title();
                foreach ( $anc as $ancestor ) {
                    $output = '<li><a href="'.get_permalink($ancestor).'" title="'.get_the_title($ancestor).'">'.get_the_title($ancestor).'</a></li> <li class="separador">/</li>';
                }
                echo $output;
                echo '<strong title="'.$title.'"> '.$title.'</strong>';
            } else {
                echo '<li><strong> '.get_the_title().'</strong></li>';
            }
        }
    }
    elseif (is_tag()) { single_tag_title();}
    elseif (is_day()) { echo "<li>Arquivo de "; the_time('j \d\e F \d\e Y'); echo'</li>'; }
    elseif (is_month()) { echo "<li>Arquivo de "; the_time('F \d\e Y'); echo'</li>'; }
    elseif (is_year()) { echo "<li>Arquivo de "; the_time('Y'); echo'</li>'; }
    elseif (is_author()) { echo "<li>Arquivo do autor"; echo'</li>'; }
    elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { echo "<li>Arquivo do blog"; echo'</li>'; }
    elseif (is_search()) { echo "<li>Resultados da pesquisa"; echo'</li>'; }
    echo '</ul>';
}

?>
