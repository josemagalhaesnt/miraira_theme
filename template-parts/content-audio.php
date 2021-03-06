<article <?php post_class();?>>

    <?php get_post_format(); ?>
    <span class="category--audio">
        <i class="fas fa-music"></i>
    </span>
	<h2><a href="<?php the_permalink();?>"><?php the_title(); ?></h2></a>
	<a href="<?php the_permalink();?>"><?php the_post_thumbnail(array(275,275));?></a>
	<div class="meta-info miraira-audio">

		<?php the_content(); ?>

		<p>
			<?php _e('Published in ','miraira'); echo get_the_date();?> <?php _e('by', 'miraira'); ?> <?php the_author_posts_link(); ?></p>
			<?php _e('Categories: ', 'miraira');?><span><?php the_category(' '); ?></span>
		</p>
		<p><?php the_tags('Tags: ', ', '); ?></p>
	</div>
	
</article>