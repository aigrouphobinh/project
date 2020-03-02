<?php get_header(); ?>
<?php if (have_posts()) : ?>
<?php while (have_posts()) : the_post(); ?>
	<div id="content">
		<div class="main-content child-page">
			<div class="container">
				<div class="title-single-hotel">
					<h1><?php the_title(); ?></h1>
					<div class="star">
						<?php hangsao(get_the_id()); ?>
					</div>
					<div class="address">
						<span><i class="fa fa-home"></i> <?php the_field('hotel_address'); ?></span>
					</div>
					<div class="price">
						<span>Giá phòng từ: <br><strong><?php the_field('hotel_price'); ?></strong></span>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-8">
						<div class="content single-khach-san">
							<div class="slider-tour">
								<?php $gallery = get_field('hotel_gellary');
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
							<div class="utility">
								<h3>Tiện nghi</h3>
								
								<?php 
									$arr = array( 
										1 =>' Wifi miễn phí',
										2 =>' Máy nước nóng',
										3 =>' Điều Hòa',
										4 =>' Tủ lạnh',
										5 =>' Tivi',
										13 =>' Truyền hình cáp',
										6 =>' Ăn sáng miễn phí',
										7 =>' Dịch vụ giặt khô',
										8 =>' Máy sấy tóc',
										9 =>' Quầy lễ tân',
										10 =>' Phòng tập gym',
										11 =>' Hồ bơi',
										12 =>' Nhìn ra biển',
										14 =>' Ban công',
										15 =>' Xe đưa đón',
									); 
								?>
								<ul>
									<?php foreach ($arr as $key => $value) { ?>
									<?php if(in_array($key, get_field('hotel_more'))){ ?>
										 <li><i class="fa fa-check"></i> <?php echo $value; ?> </li>
									<?php } else { ?>
										<li><i class="fa fa-times"></i></i> <?php echo $value; ?> </li>
									<?php } }?>
								</ul>
								<div class="clear"></div>
							</div>
							<div class="content-text">
								<h3>Chi tiết</h3>
								<article class="post-content">
									<?php the_content(); ?>
								</article>
								<div class="cmt">
									<div class="fb-comments" data-width="100%" data-href="" data-numposts="3"></div>
								</div>
							</div>
							<div class="rel-hotel">
								<h3>Khách sạn liên quan</h3>
								<div class="row">
									<?php $terms = get_the_terms( get_the_id(), 'dia-diem' ); ?>
									<?php if($terms){
										$cat_slug = $terms['0']->slug;
									} ?>
									<?php 
										$postquery = new WP_Query(array('posts_per_page' => 6, 'post_type' => 'khach-san','dia-diem'=>$cat_slug, 'post__not_in' => array($post->ID)));
										if ($postquery->have_posts()) {
										while ($postquery->have_posts()) : $postquery->the_post();
										$do_not_duplicate = $post->ID;
									?>
									<div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
										<div class="detail-tour-list detail-hotel">
											<div class="img-tour">
												<a href="<?php the_permalink(); ?>">
													<img src="<?php echo hk_get_thumb(get_the_id(), 300, 200); ?>" alt="<?php the_title(); ?>">
												</a>
												<?php hangsao(get_the_id()); ?>				
											</div>
											<div class="info-tour">
												<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
												<p class="price"><?php the_field('hotel_price'); ?> <span>/ Đêm</span></p>
											</div>
											<div class="meta">
												<?php $diadiemtour = get_the_terms(get_the_id(), 'dia-diem'); ?>
												<span>
													<i class="fa fa-map-marker"></i>
													<?php if($diadiemtour){ ?>
														<?php echo $diadiemtour['0']->name; ?>
													<?php } ?>
												</span>
												<span><i class="fa fa-angle-double-right"></i> <a href="<?php the_permalink(); ?>">Chi tiết</a></span>
												<div class="clear"></div>
											</div>
										</div>
									</div>
									<?php endwhile; } else { ?>
										<div class="col-md-12"><p>Không có khách sạn liên quan</p></div>
									<?php } ?>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
						<div class="sidebar">
							<div class="booking-hotel">
								<h3><i class="fa fa-calendar"></i> BOOK ONLINE</h3>
								<input type="hidden" class="link-hotel" value="<?php the_permalink(); ?>">
								<div class="content-book">
									<?php echo do_shortcode('[contact-form-7 id="300" title="Đặt khách sạn"]'); ?>
								</div>
							</div>
							<?php get_sidebar(); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php endwhile; ?>
<?php endif; ?>
<?php get_footer(); ?>