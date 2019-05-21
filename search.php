<?php get_header(); ?>
    <div id="primary">
        <div id="main">
            <div class="search-results__box container">
                <div class="row">
                    <h2 class="search-results__title text-center"><?php _e('Search results for: ', 'miraira'); echo get_search_query();?></h2>
                </div>
                
                <?php if(have_posts()):
                    while(have_posts()): the_post();
                        get_template_part('template-parts/content', 'search');
                        if( comments_open() || get_comments_number() ):
                            comments_template();
                        endif;
                    endwhile;
                
                the_posts_pagination(
                    array(
                        'prev_text' => __('Previous','miraira'),
                        'next_text' => __('Next','miraira')
                    )
                );
                ?>

                <?php
                    else:
                ?>
				<p><?php _e('Nothing was found', 'miraira'); ?></p>
				<?php endif;?>
            
            </div>
        </div>
    </div>
<?php get_footer(); ?>