
<form role="search" method="get" class="form-inline mr-auto search-form" action="<?php echo esc_url( home_url( '/' ) ); ?>">
      <div class="md-form my-0">
        <input class="form-control" type="text" class="search-field" placeholder="<?php echo esc_attr_x( 'Search &hellip;', 'placeholder', 'twentysixteen' ); ?>" value="<?php echo get_search_query(); ?>" name="s" aria-label="Search"/>
        <button type="submit" class="btn btn-rounded btn-sm my-0 ml-sm-2 search-submit"><span class="screen-reader-text"><?php echo _x( '<i class="fas fa-search text-white"
        aria-hidden="true"></i>', 'submit button', 'twentysixteen' ); ?></span></button>

      </div>
</form>