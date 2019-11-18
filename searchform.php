<form class="search-form" action="<?php echo esc_url( home_url( '/' ) ); ?>">
  <input type="text" class="search-form__input" 
      placeholder="<?php echo esc_attr_x( __('Search here...','miraira'), 'placeholder', 'twentysixteen' ); ?>" 
      value="<?php echo get_search_query(); ?>" name="s" aria-pressed="true" aria-label="Search">
  <button class="search-form__button">
    <i class="search-form__icon fas fa-search"></i>
  </button> 
</form>