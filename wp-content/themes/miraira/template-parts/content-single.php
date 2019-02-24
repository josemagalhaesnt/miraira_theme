<article id="post-<?php the_ID();?>" <?php post_class();?>>

    <header class="single-post">
        <h1><?php the_title();?></h1>
        <div class="meta-info">
            <p><?php _e('Published in ','miraira'); echo get_the_date();?> <?php _e('by', 'miraira'); ?> <?php the_author_posts_link(); ?></p>
		    <p><?php _e('Categories: ', 'miraira');?><span><?php the_category(' '); ?></span></p>
            <p><?php the_tags('Tags: ', ', ');?></p>
        </div>
    </header>

    <div class="content">
        <?php the_content();?>
    </div>

</article>