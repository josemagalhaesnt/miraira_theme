<?php get_header();?>
	<div class="content-area">
		<main>
			<section class="middle-area">
				<div class="container">
					<div class="row">
						<div class="main col-md-12">	
							<div class="container">
								<h1><?php _e('Latest News', 'miraira');?></h1>
								<div class="row">
									<?php 

									$featured = new WP_Query('post_type=post&posts_per_page=1&cat=5');

									if($featured->have_posts()):
										while($featured->have_posts()): $featured->the_post();
									?>
									<div class="col-12">
										<?php get_template_part('template-parts/content','featured'); ?>
									</div>	

									<?php
										endwhile;
										wp_reset_postdata(); 
									endif;
									//Segundo loop
									$args = array (
										'post_type' => 'post',
										'posts_per_page' => 2,
										'category__not_in' => array(1),
										'category__in' => array(5, 6, 7),
										'offset' => 1
									);
									$secondary = new WP_Query($args);

									if($secondary->have_posts()):
										while($featured->have_posts()): $featured->the_post();
									?>
									<div class="col-sm-6">
										<?php get_template_part('template-parts/content','secondary'); ?>
									</div>	

									<?php
										endwhile;
										wp_reset_postdata(); 
									endif;
									?>
								</div>
							</div>
						</div>
					</div>
				</div>	
			</section>
		</main>
	</div>
<?php get_footer();?>
