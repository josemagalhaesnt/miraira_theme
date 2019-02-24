<article <?php post_class();?>>
	<h2><a href="<?php the_permalink();?>"><?php the_title(); ?></h2></a>
	
	<div class="meta-info">
		<p><?php _e('by', 'miraira'); ?> <?php the_author_posts_link(); ?></p>
		
        <?php if(has_category()): ?>
			<p><?php _e('Categories: ', 'miraira');?><span><?php the_category(' '); ?></span></p>
        <?php endif; ?>

		<p><?php the_tags('Tags: ', ', '); ?></p>
	</div>
	<?php the_excerpt(); ?>
</article>