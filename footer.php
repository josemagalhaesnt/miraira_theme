	<footer class="footer">
		
		<div class="container">
			<div class="row d-flex align-items-center">
				<nav class="nav navbar-nav footer-menu col-md-8 col-12 text-center">
					<?php wp_nav_menu(
						array(
							'theme_location'=> 'mira_footer_menu'
						)
					) 
					?>
				</nav>
				
				<div class="copyright col-md-4 col-12 text-center">
					<p class="copyright__developer">&copy Desenvolvido por: <a class="copyright__link" href="https://josemagalhaesnt.github.io">José Magalhães</a></p>
					
				</div>

				<a href="#" class="back-to-top">Voltar ao topo &uarr;</a>
			</div>
		</div>
	</footer>
	<?php wp_footer(); ?>

	<script>
		jQuery(document).ready(function() {
            // Exibe ou oculta o botão
            jQuery(window).scroll(function() {
                if (jQuery(this).scrollTop() > 200) {
                    jQuery('.back-to-top').fadeIn(200);
                } else {
                    jQuery('.back-to-top').fadeOut(200);
                }
            });
            
            // Faz animação para subir
            jQuery('.back-to-top').click(function(event) {
                event.preventDefault();
                jQuery('html, body').animate({scrollTop: 0}, 300);
            })
        });
	</script>	
	<script>
		jQuery(document).ready(function($){
				// Target your .container, .wrapper, .post, etc.
				$(".is-type-video").fitVids();
			});
	</script>
</body>
</html>