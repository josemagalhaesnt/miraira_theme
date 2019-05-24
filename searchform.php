<form class="search-form form-group has-search bg-white text-dark shadow-sm d-inline w-100" action="<?php echo esc_url( home_url( '/' ) ); ?>">
  <span class="form-control-feedback fa fa-search"></span>
  <input type="text" class="form-control" 
      placeholder="<?php echo esc_attr_x( __('Search here...','miraira'), 'placeholder', 'twentysixteen' ); ?>" 
      value="<?php echo get_search_query(); ?>" name="s" aria-pressed="true" aria-label="Search"> 
</form>