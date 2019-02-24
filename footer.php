	<footer>
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
					<p>&copy Desenvolvido por: <a href="http://zneto.github.io">José Neto</a></p>
				</div>
				
			</div>
		</div>
	</footer>
	<?php wp_footer(); ?>
</body>
</html>