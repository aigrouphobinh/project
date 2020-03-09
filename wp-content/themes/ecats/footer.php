				</div>	
			</div>
			<footer class="page-footer">
				<div class="footer-bg">
					<div class="page-container">
						<div class="footer-container hidden-mobile">
						<nav class="bottom-nav">
							<?php dynamic_sidebar('footer'); ?>
							<?php dynamic_sidebar('footer1'); ?>
							<?php dynamic_sidebar('footer2'); ?>
							<?php dynamic_sidebar('footer3'); ?>
						</nav>
					</div>
					<div class="footer-container hidden-pc">
						<nav class="clearfix">
							<?php dynamic_sidebar('footer2'); ?>
							<br>
							<?php dynamic_sidebar('footer3'); ?>
						</nav>
						<div class="footer-services clearfix">
							<div class="socials">
							</div>
							<div class="counters">
							</div>
						</div>
					</div>
					</div>
				</div>
				<a class="back-to-top"><i class="fa fa-angle-up"></i></a>
			</footer>

			<?php wp_footer(); ?>
			<script src="<?php bloginfo( 'template_directory' ); ?>/libs/jquery-1.9.1.min.js"></script>
			<script src="<?php bloginfo( 'template_directory' ); ?>/libs/bootstrap4/js/bootstrap.bundle.min.js"></script>
			<script src="<?php bloginfo( 'template_directory' ); ?>/libs/owlcarousel/owl.carousel.min.js"></script>
			<script src="<?php bloginfo( 'template_directory' ); ?>/libs/lightGallery/js/lightgallery.min.js"></script>
			<script src="<?php bloginfo( 'template_directory' ); ?>/libs/sliderGallery/js/lightslider.min.js"></script>
			<script src="<?php bloginfo( 'template_directory' ); ?>/js/main.js"></script>
		</body>
		</html>