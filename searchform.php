<form class="bg-white text-dark shadow-sm mx-2 my-auto d-inline w-100 search-form" action="<?php echo esc_url( home_url( '/' ) ); ?>">
    <div class="input-group">
      <input type="text" class="form-control border border-right-0" placeholder="<?php echo esc_attr_x( __('Search here...','miraira'), 'placeholder', 'twentysixteen' ); ?>" value="<?php echo get_search_query(); ?>" name="s" aria-pressed="true" aria-label="Search">
       <span class="input-group-append">
        <button class="btn bg-white border border-left-0" type="submit">
          <i class="fas fa-search"></i>
        </button>
       </span>
    </div>
</form>