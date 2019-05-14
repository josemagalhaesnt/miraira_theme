	<footer class="footer">
		<div class="container">
			<div class="row d-flex align-items-center">
				<nav class="nav navbar-nav footer-menu col-md-9 col-12 text-center">
					<?php wp_nav_menu(
						array(
							'theme_location'=> 'mira_footer_menu'
						)
					) 
					?>
				</nav>
				
				<div class="copyright col-md-3 col-12 text-center">
					<p class="copyright__developer">&copy Desenvolvido por: <a class="copyright__link" href="https://josemagalhaesnt.github.io">José Magalhães</a></p>
				</div>
				
			</div>
		</div>
	</footer>
	<?php wp_footer(); ?>
		
		<script>
			jQuery(document).ready(function($){
				// Target your .container, .wrapper, .post, etc.
				$(".is-type-video").fitVids();
			});
	</script>
</body>
</html>