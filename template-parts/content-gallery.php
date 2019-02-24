<article <?php post_class();?>>

	<?php get_post_format(); ?>	

	<h2><a href="<?php the_permalink();?>"><?php the_title(); ?></h2></a>
	<div class="meta-info">
		<p><?php _e('Published by', 'miraira'); ?> <?php the_author_posts_link(); ?></p>
		<p><?php _e('Categories: ', 'miraira');?><span><?php the_category(' '); ?></span></p>
		<p><?php the_tags('Tags: ', ', '); ?></p>
	</div>
	<?php the_content(); ?>
</article>