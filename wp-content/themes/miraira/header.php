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
					<div class="social-media-icons col-xl-9 col-sm-7 col-6">
						Ícones Sociais
					</div>
					<div class="search col-xl-3 col-sm-5 col-6 text-center">
						Pesquisa <i class="fas fa-search"></i> 
					</div>
				</div>
			</div>
		</section>

			<section class="menu-area">
				<div class="container">
					<div class="row">
						<section class="logo col-md-2 col-12 text-center">
							Logo
						</section>
						<nav class="main-menu col-md-10 text-center">
							<?php 
							wp_nav_menu(
								array(
									'theme_location'=> 'mira_main_menu'
								)
							);
							?>
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