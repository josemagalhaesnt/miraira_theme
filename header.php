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
			
				<nav class="navbar navbar-expand-md navbar-light" role="navigation">
					<div class="container">
						<!-- Brand and toggle get grouped for better mobile display -->
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="logo navbar-brand">
							<?php the_custom_logo(); ?>
						</div>
							<?php
							wp_nav_menu( array(
								'theme_location'    => 'mira_main_menu',
								'depth'             => 2,
								'container'         => 'div',
								'container_class'   => 'collapse navbar-collapse',
								'container_id'      => 'main-menu',
								'menu_class'        => 'nav navbar-nav main-menu',
								'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
								'walker'            => new WP_Bootstrap_Navwalker()
							) );
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