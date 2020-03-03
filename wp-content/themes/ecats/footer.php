			<footer>
				<div class="content-footer">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
								<div class="block-ft">
									<h3>Thông tin liên hệ</h3>
									<div class="block-content-ft">
										<p><?php the_field('text_footer', 'option'); ?></p>
										<div class="info-contact">
											<p><span><i class="fa fa-home"></i> Địa chỉ:</span> <?php the_field('address', 'option'); ?></p>
											<p><span><i class="fa fa-envelope-open"></i> Email:</span> <?php the_field('email', 'option'); ?></p>
											<p><span><i class="fa fa-phone"></i> Điện thoại:</span> <?php the_field('phone', 'option'); ?> -  <?php the_field('hotline', 'option'); ?></p>
											<p><span><i class="fa fa-globe"></i> Website:</span> <?php bloginfo('url'); ?></p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-2">
								<div class="block-ft">
									<h3>Dịch vụ</h3>
									<div class="block-content-ft">
										<?php wp_nav_menu( array( 'theme_location' => 'service_nav', 'container' => 'false', 'menu_id' => 'main-nav', 'menu_class' => 'menu-footer') ); ?>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-2">
								<div class="block-ft">
									<h3>Thông tin</h3>
									<div class="block-content-ft">
										<?php wp_nav_menu( array( 'theme_location' => 'info_nav', 'container' => 'false', 'menu_id' => 'main-nav', 'menu_class' => 'menu-footer') ); ?>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
								<div class="block-ft">
									<h3>Bản đồ</h3>
									<div class="block-content-ft">
										<?php the_field('google_map', 'option'); ?>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="copyright">
					<p><?php the_field('copyr', 'option'); ?></p>
				</div>
				<a class="back-to-top"><i class="fa fa-angle-up"></i></a>
			</footer>
		</div>	
	</div>
		<?php wp_footer(); ?>
		<script src="<?php bloginfo( 'template_directory' ); ?>/libs/jquery-1.9.1.min.js"></script>
		<script src="<?php bloginfo( 'template_directory' ); ?>/libs/bootstrap4/js/bootstrap.bundle.min.js"></script>
		<script src="<?php bloginfo( 'template_directory' ); ?>/libs/owlcarousel/owl.carousel.min.js"></script>
		<script src="<?php bloginfo( 'template_directory' ); ?>/libs/lightGallery/js/lightgallery.min.js"></script>
		<script src="<?php bloginfo( 'template_directory' ); ?>/libs/sliderGallery/js/lightslider.min.js"></script>
		<script src="<?php bloginfo( 'template_directory' ); ?>/js/main.js"></script>
	</body>
</html>