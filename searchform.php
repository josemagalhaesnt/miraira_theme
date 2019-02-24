<form class="mx-2 my-auto d-inline w-100 search-form bg-white text-dark" action="<?php echo esc_url( home_url( '/' ) ); ?>">
    <div class="input-group">
      <input type="text" class="form-control border border-right-0" placeholder="<?php echo esc_attr_x( __('Search here...','miraira'), 'placeholder', 'twentysixteen' ); ?>" value="<?php echo get_search_query(); ?>" name="s" aria-label="Search">
       <span class="input-group-append">
       <button class="btn bg-white text-dark border border-left-0" type="submit">
         <i class="fas fa-search"></i>
        </button>
       </span>
    </div>
</form>