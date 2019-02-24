<article <?php post_class();?>>

	<div class="meta-info">
		<p><?php _e('Published in ','miraira'); echo get_the_date();?> <?php _e('by', 'miraira'); ?> <?php the_author_posts_link(); ?></p>
		<?php if(has_category()): ?>
			<p><?php _e('Categories: ', 'miraira');?><span><?php the_category(' '); ?></span></p>
        <?php endif; ?>
		<p><?php the_tags('Tags: ', ', '); ?></p>
	</div>
	<?php the_content(); ?>
</article>