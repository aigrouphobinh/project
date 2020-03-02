<?php get_header(); ?>
<?php if (have_posts()) : ?>
<?php while (have_posts()) : the_post(); ?>
	<div id="content">
		<div class="single-tour" <?php if(get_field('big_img')){ echo 'style="background-image: url('.get_field("big_img").')"'; } ?>>
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-7">
						<div class="slider-tour">
							<?php $gallery = get_field('tour_gallery');
							if(count($gallery)>0){ ?>
							<ul class="imageGallery">
								<?php foreach ($gallery as $key => $value) { ?>
									<li data-thumb="<?php echo hk_get_image($value['url'], 150, 70); ?>" data-src="<?php echo $value['url']; ?>">
								    	<img src="<?php echo $value['url']; ?>" alt="<?php the_title(); ?>" />
								  	</li>
								<?php } ?>
						 	</ul>
						 	<?php } else { ?>
						 		<?php echo get_the_post_thumbnail( $post_id, 'full', array( 'class' =>'thumnail') ); ?>
						 	<?php } ?>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-5">
						<div class="tour-info-single">
							<h1><span><?php the_title(); ?></span></h1>
							<p class="ster">
								<span><i class="fa fa-star"></i></span>
								<span><i class="fa fa-star"></i></span>
								<span><i class="fa fa-star"></i></span>
								<span><i class="fa fa-star"></i></span>
								<span><i class="fa fa-star"></i></span>
							</p>
							<div class="like-post">
								<div class="fb-send" data-href=""></div>
								<div class="fb-like" data-href="" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"></div>
								<script src="https://apis.google.com/js/platform.js" async defer></script>
						  		<g:plusone size="medium"></g:plusone>
							</div>
							<p class="price"><?php echo number_format(get_field('tour_price'),0,",","."); ?> VNĐ</p>
							<div class="datdiem">
								<strong>Giới thiệu</strong>
								<p><?php echo teaser(30); ?></p>
							</div>
							<div class="meta-pot">
								<p><strong><i class="fa fa-calendar"></i> Thời gian tour:</strong> <?php the_field('tour_time'); ?></p>
								<p><strong><i class="fa fa-map-marker"></i> Địa điểm thăm quan:</strong> <?php the_field('tour_visit'); ?></p>
							</div>
							<div class="book-tour">
								<a data-toggle="modal" data-target="#exampleModalCenter">
									<p>Đặt ngay</p>
									<span>Đặt giữ chỗ, không cần thanh toán trước</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
			    <div class="modal-content">
				    <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Đặt tour ngay!</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          	<span aria-hidden="true">&times;</span>
				        </button>
				    </div>
				    <div class="modal-body">
				        <div class="info-book-tour">
				        	<?php echo get_the_post_thumbnail( $post_id, 'full', array( 'class' =>'thumnail') ); ?>
				        	<h4><?php the_title(); ?></h4>
				        	<div class="price"><?php echo number_format(get_field('tour_price'),0,",","."); ?> VNĐ</div>
				        	<div class="clear"></div>
				        </div>
				        <div class="text-info-book">
				        	<h5>NHẬP THÔNG TIN</h5>
							<p>Chúng tôi sẽ liên hệ lại ngay sau khi bạn đặt hàng!</p>
				        </div>
				        <input type="hidden" class="link_tour" value="<?php the_permalink(); ?>">
				        <div class="info-contact-book">
				        	<?php echo do_shortcode('[contact-form-7 id="299" title="Đặt tour"]'); ?>
				        </div>
				    </div>
			    </div>
			</div>
		</div>
		<div class="single-content-tour">
			<div class="container">
				<div class="row">
					<div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-9">
						<div class="single-tabs">
							<ul class="nav nav-pills" id="pills-tab" role="tablist">
							  	<li class="nav-item">
							    	<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Chi tiết tour</a>
							  	</li>
							  	<li class="nav-item">
							    	<a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Lịch trình</a>
							  	</li>
							  	<li class="nav-item">
							    	<a class="nav-link" id="pills-car-tab" data-toggle="pill" href="#car-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Liên hệ</a>
							  	</li>
							</ul>
							<div class="tab-content" id="pills-tabContent">
								<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
									<article class="post-content">
										<?php the_content(); ?>
									</article>
								</div>
								<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
									<article class="post-content">
										<?php the_field('prossecc'); ?>
									</article>
								</div>
								<div class="tab-pane fade" id="car-profile" role="tabpanel" aria-labelledby="car-profile-tab">
									<article class="post-content">
										<div class="info-contact">
											<p><span><i class="fa fa-home"></i> Địa chỉ:</span> <?php the_field('address', 'option'); ?></p>
											<p><span><i class="fa fa-envelope-open"></i> Email:</span> <?php the_field('email', 'option'); ?></p>
											<p><span><i class="fa fa-phone"></i> Điện thoại:</span> <?php the_field('phone', 'option'); ?> -  <?php the_field('hotline', 'option'); ?></p>
											<p><span><i class="fa fa-globe"></i> Website:</span> <?php bloginfo('url'); ?></p>
										</div>
									</article>
								</div>
								<div class="cmt">
									<div class="fb-comments" data-width="100%" data-href="" data-numposts="3"></div>
								</div>
							</div>
							<?php if(wp_is_mobile()){ ?>
							<div class="rel-tour row" style="margin-top: 40px;">
								<div class="container">
									<h3>Tour liên quan</h3>
									<div class="row">
										<?php $terms = get_the_terms( get_the_id(), 'danh-muc' ); ?>
										<?php if($terms){
											$cat_slug = $terms['0']->slug;
										} ?>
										<?php 
											$postquery = new WP_Query(array('posts_per_page' => 8, 'post_type' => 'tour','danh-muc'=>$cat_slug, 'post__not_in' => array($post->ID)));
											if ($postquery->have_posts()) {
											while ($postquery->have_posts()) : $postquery->the_post();
											$do_not_duplicate = $post->ID;
										?>
										<div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
											<div class="detail-tour-list">
												<div class="img-tour">
													<a href="<?php the_permalink(); ?>">
														<img src="<?php echo hk_get_thumb(get_the_id(), 300, 200); ?>" alt="<?php the_title(); ?>">
													</a>
													<div class="start">
														<i class="fa fa-star" aria-hidden="true"></i>
														<i class="fa fa-star" aria-hidden="true"></i>
														<i class="fa fa-star" aria-hidden="true"></i>
														<i class="fa fa-star" aria-hidden="true"></i>
														<i class="fa fa-star" aria-hidden="true"></i>
													</div>
													<?php if(get_field('tour_line') == 1) { ?>
													<div class="hot">
														<span>HOT</span>
													</div>
													<?php } ?>					
												</div>
												<div class="info-tour">
													<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
													<p class="price"><?php echo number_format(get_field('tour_price'),0,",","."); ?> VNĐ</p>
												</div>
												<div class="meta">
													<span><i class="fa fa-calendar"></i> <?php the_field('tour_time'); ?></span>
													<?php $diadiemtour = get_the_terms(get_the_id(), 'dia-diem-tour'); ?>
													<span>
														<i class="fa fa-map-marker"></i> 
														<?php if($diadiemtour){ ?>
															<?php echo $diadiemtour['0']->name; ?>
														<?php } ?>
													</span>
													<div class="clear"></div>
												</div>
											</div>
										</div>
										<?php endwhile; } else { ?>
											<div class="col-md-12"><p>Không có tour liên quan</p></div>
										<?php } ?>	
									</div>
								</div>
							</div>
							<?php } ?>
						</div>
					</div>
					<div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-3">
						<div class="box-sale">
							<div class="price-sale">
								<?php if(get_field('sale')){ ?>
								<span class="sale">Giảm <?php the_field('sale'); ?>%</span>
								<?php } ?>
								<div class="price">
									<i class="fa fa-credit-card" aria-hidden="true"></i>
									<span style="font-size: 16px;"><?php echo number_format(get_field('tour_price'),0,",","."); ?> đ</span>
								</div>
							</div>
							<div class="decs">
								Mỗi người trên 1 tour
							</div>
						</div>
						<div class="main-content">
							<div class="sidebar">
								<?php get_sidebar('tour'); ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<?php if(!wp_is_mobile()){ ?>
		<div class="rel-tour">
			<div class="container">
				<h3>Tour liên quan</h3>
				<div class="row">
					<?php $terms = get_the_terms( get_the_id(), 'danh-muc' ); ?>
					<?php if($terms){
						$cat_slug = $terms['0']->slug;
					} ?>
					<?php 
						$postquery = new WP_Query(array('posts_per_page' => 8, 'post_type' => 'tour','danh-muc'=>$cat_slug, 'post__not_in' => array($post->ID)));
						if ($postquery->have_posts()) {
						while ($postquery->have_posts()) : $postquery->the_post();
						$do_not_duplicate = $post->ID;
					?>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
						<div class="detail-tour-list">
							<div class="img-tour">
								<a href="<?php the_permalink(); ?>">
									<img src="<?php echo hk_get_thumb(get_the_id(), 300, 200); ?>" alt="<?php the_title(); ?>">
								</a>
								<div class="start">
									<i class="fa fa-star" aria-hidden="true"></i>
									<i class="fa fa-star" aria-hidden="true"></i>
									<i class="fa fa-star" aria-hidden="true"></i>
									<i class="fa fa-star" aria-hidden="true"></i>
									<i class="fa fa-star" aria-hidden="true"></i>
								</div>
								<?php if(get_field('tour_line') == 1) { ?>
								<div class="hot">
									<span>HOT</span>
								</div>
								<?php } ?>					
							</div>
							<div class="info-tour">
								<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
								<p class="price"><?php echo number_format(get_field('tour_price'),0,",","."); ?> VNĐ</p>
							</div>
							<div class="meta">
								<span><i class="fa fa-calendar"></i> <?php the_field('tour_time'); ?></span>
								<?php $diadiemtour = get_the_terms(get_the_id(), 'dia-diem-tour'); ?>
								<span>
									<i class="fa fa-map-marker"></i> 
									<?php if($diadiemtour){ ?>
										<?php echo $diadiemtour['0']->name; ?>
									<?php } ?>
								</span>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<?php endwhile; } else { ?>
						<div class="col-md-12"><p>Không có tour liên quan</p></div>
					<?php } ?>	
				</div>
			</div>
		</div>
		<?php } ?>
	</div>
<?php endwhile; ?>
<?php endif; ?>
<?php get_footer(); ?>		