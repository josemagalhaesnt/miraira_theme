<article <?php post_class();?>>

	<?php echo get_post_format(); ?>
	<h2><a href="<?php the_permalink();?>"><?php the_title(); ?></h2></a>
	<a href="<?php the_permalink();?>"><?php the_post_thumbnail('thumbnail');?></a>
	<div class="meta-info">
		<p><?php _e('Published in ','miraira'); echo get_the_date();?> <?php _e('by', 'miraira'); ?> <?php the_author_posts_link(); ?></p>
		<p><?php the_tags('Tags: ', ', '); ?></p>
	</div>
	<?php the_excerpt(); ?>
</article>