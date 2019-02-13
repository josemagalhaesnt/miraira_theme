<?php get_header();?>
	<div class="content-area">
		<main>
			<section class="slide">
				<div class="container">
					<div class="row">Slide</div>
				</div>
			</section>
			<section class="services">
				<div class="row">Serviços</div>
			</section>
			<section class="middle-area">
				<div class="container">
					<div class="row">
						<div class="news col-md-12">	
							<?php
							//Se houver algum post
								if(have_posts()):
									//Enquanto houver, mostre
									while(have_posts()): the_post();
							?>

							<p>Esta é a página inicial</p>
							<?php 
								endwhile;

							else:	
							?>
							<p>There's nothing yet to be displayed</p>
						<?php endif;?>
						</div>
					</div>
				</div>	
			</section>
			<section class="map">
				<div class="container">
					<div class="row">
						Mapa
					</div>
				</div>
				
			</section>
		</main>
	</div>
<?php get_footer();?>