<?php get_header();?>
	<img class="img-fluid" src="<?php header_image(); ?>" height="<?php echo get_custom_header()->height; ?>" width="<?php echo get_custom_header()->width; ?>" alt="" />
	<div class="content-area">
		<main>
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
							
							<?php get_template_part('template-parts/content', get_post_format()); ?>

							<?php 
								endwhile;
							?>

							<div class="row">
								<div class="pages text-left col-6">
									<?php previous_posts_link(__('<< Newer posts', 'miraira')); ?>
								</div>
								<div class="pages text-right col-6">
									<?php next_posts_link(__('Older posts >>','miraira')); ?>
								</div>
							</div>

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