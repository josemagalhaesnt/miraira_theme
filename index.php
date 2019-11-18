<?php get_header();?>
	<div class="content-area">
		<main>
			<section class="middle-area">
				<div class="container">
					<div class="row">
						<div class="main col-md-12">	
							<?php
							//Se houver algum post
								if(have_posts()):
									//Enquanto houver, mostre
									while(have_posts()): the_post();
							?>
							
							<?php get_template_part('template-parts/content', get_post_format()); ?>

							<?php 
								endwhile;
							?>

							<?php
								else:	
							?>
							<p><?php _e('There is nothing yet to be displayed', 'miraira'); ?></p>
						<?php endif;?>
						</div>
					</div>
				</div>	
			</section>
		</main>
	</div>
<?php get_footer();?>
