<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width">
	<?php wp_head(); ?>
</head>

<body <?php body_class();?>>
	
	<header>
		<section class="top-bar">
			<div class="container">
				<div class="row">
					<div class="search col-md-8 col-12 mx-auto">
						<?php get_search_form();?>
					</div>
				</div>
			</div>
		</section>

			<section class="menu-area">
					<div class="row d-flex align-items-center">
						<section class="logo col-md-2 col-12">
							<?php the_custom_logo(); ?>
						</section>

						<nav class="navbar navbar-expand-md navbar-light col-md-10 col-12 text-center" role="navigation">
							<div class="container">
								<!-- Brand and toggle get grouped for better mobile display -->
								<button class="navbar-toggler mx-auto" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span> 
									<span style="font-size:15px;">MENU</span>
								</button>
								
								<?php
								wp_nav_menu( array(
									'theme_location' => 'mira_main_menu',
									'depth' => 2,
									'container' => 'div',
									'container_class' => 'collapse navbar-collapse',
									'container_id' => 'bs-example-navbar-collapse-1',
									'menu_class' => 'main-menu nav navbar-nav',
									'fallback_cb' => 'WP_Bootstrap_Navwalker::fallback',
									'walker' => new WP_Bootstrap_Navwalker())
								);
								?>
								
							</div>

							<!--<?php get_search_form();?>-->
						</nav>
					</div>
			</section>
			<section class="breadcrumbs">
				<div class="elementor mira-nav">
					<?php
						if ( function_exists('yoast_breadcrumb')) {
							yoast_breadcrumb('
							<p id="breadcrumbs">','</p>
							');
						}
					?>
				</div>
			</section>
	</header>