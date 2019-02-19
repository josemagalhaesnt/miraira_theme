<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">
	<title>Meu Site</title>
	<?php wp_head(); ?>
</head>

<body <?php body_class();?>>
	
	<header>
		<section class="top-bar">
			<div class="container">
				<div class="row">
					<div class="social-media-icons col-xl-8 col-sm-7 col-10">
						Ícones Sociais
					</div>
					<div class="search col-xl-4 col-sm-5 col-2 text-right">
						<?php get_search_form();?>
					</div>
				</div>
			</div>
		</section>

			<section class="menu-area">
				<div class="container">
					<div class="row">
						<nav class="navbar navbar-expand-md navbar-light" role="navigation">
							<div class="container">
								<!-- Brand and toggle get grouped for better mobile display -->
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<a class="logo navbar-brand" href="<?php echo home_url(); ?>">
									<?php bloginfo('name'); ?>
								</a>
								<?php
								wp_nav_menu( array(
									'theme_location' => 'mira_main_menu',
									'depth' => 2,
									'container' => 'div',
									'container_class' => 'collapse navbar-collapse',
									'container_id' => 'bs-example-navbar-collapse-1',
									'menu_class' => 'nav navbar-nav',
									'fallback_cb' => 'WP_Bootstrap_Navwalker::fallback',
									'walker' => new WP_Bootstrap_Navwalker())
								);
								?>
							</div>
						</nav>
					</div>
				</div>
			</section>
			<section class="breadcrumbs">
				<div class="elementor mira-nav">
					<?php
						if ( function_exists('yoast_breadcrumb') ) {
							yoast_breadcrumb('
							<p id="breadcrumbs">','</p>
							');
						}
					?>
				</div>
			</section>
	</header>