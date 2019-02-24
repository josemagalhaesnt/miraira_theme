<article <?php post_class();?>>
	
	<?php get_post_format(); ?>

	<div class="meta-info">
		<p>
			<h2><a href="<?php the_permalink();?>"><?php the_title(); ?></a></h2>
			<span><?php _e('by', 'miraira'); ?> <?php the_author_posts_link(); ?></span>
		</p>
		
        <?php if(has_category()): ?>
			<p><?php _e('Categories: ', 'miraira');?><span><?php the_category(' '); ?></span></p>
        <?php endif; ?>

		<p><?php the_tags('Tags: ', ', '); ?></p>
		<p><?php the_excerpt(); ?></p>
	</div>
	
</article>