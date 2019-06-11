<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width">
	<?php wp_head(); ?>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
</head>

<body <?php body_class();?>>
	
	<header class="header">
		<div class="menu-area">
			
				<nav class="navbar" role="navigation">
					<div class="container">
						
						<div class="navbar__logo">
							<?php the_custom_logo(); ?>
						</div>
						<?php wp_nav_menu(
							array(
								'theme_location'=> 'mira_main_menu'
							)
						) 
						?>
					</div>
				</nav>
			
		</div>

		<div class="container">
			<div class="row">
				<div class="top-header">
					<div class="top-header__breadcrumbs">
						<?php
							if ( function_exists('yoast_breadcrumb')) {
								yoast_breadcrumb('
								<p id="breadcrumbs">','</p>
								');
							}
						?>
					</div>

					<div class="top-header__search">
						<?php get_search_form();?>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	</header>