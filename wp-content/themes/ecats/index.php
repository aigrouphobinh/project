<?php get_header(); ?>
	<!-- <div id="content">
		<?php get_template_part( 'slider' ); ?>
		<div class="popular-tour">
			<div class="container">
				<div class="main-title">
					<h2><span>Tour nổi bật</span></h2>
					<p>Hãy trải nghiệm giây phút thư giản cùng với hệ thống tour đa dạng của chúng tôi!</p>
				</div>
				<div class="top-tour owl-carousel owl-theme">
					<?php $getposts = new WP_query(); $getposts->query('post_status=publish&showposts=10&post_type=tour&meta_key=tour_line&meta_value=1'); ?>
					<?php global $wp_query; $wp_query->in_the_loop = true; ?>
					<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
						<div class="item">
					    	<div class="detail-tour">
					    		<a href="<?php the_permalink(); ?>">
					    			<img src="<?php echo hk_get_thumb(get_the_id(), 370, 300); ?>" alt="<?php the_title(); ?>">
					    			<div class="info-tour">
					    				<div>
					    					<h4><?php the_title(); ?></h4>
					    					<p class="date">
					    						<i class="fa fa-clock-o"></i>
					    						<span><?php the_field('tour_time'); ?></span>
					    					</p>
					    				</div>
					    			</div>
					    			<div class="price">
					    				<span><?php echo number_format(get_field('tour_price'),0,",","."); ?> VNĐ</span>
					    			</div>
					    		</a>
					    	</div>
					    </div>
					<?php endwhile; wp_reset_postdata(); ?>
				</div>
			</div>
		</div>
		<div class="main-content">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-9">
						<div class="content">
							<div class="box-tour">
								<h2 class="title-tour"><span><strong>Tour</strong> du lịch</span></h2>
								<div class="child-cat">
									<ul>
										<?php $args = array( 
										    'hide_empty' => 0,
										    'taxonomy' => 'danh-muc',
										    'orderby' => 'id',
										    'parent' => 0
										    ); 
										    $cates = get_categories( $args ); 
										    foreach ( $cates as $cate ) {  ?>
												<li>
													<a href="<?php echo get_term_link($cate->slug, 'danh-muc'); ?>"><i class="fa fa-angle-right"></i> <?php echo $cate->name ?></a>
												</li>
										<?php } ?>
										<li class="all"><a href="<?php bloginfo( 'url' ); ?>/tour">Tất cả <i class="fa fa-angle-double-right"></i> </a></li>
									</ul>
								</div>
								<div class="clear"></div>
								<div class="tour-content">
									<div class="row">
										<?php $getposts = new WP_query(); $getposts->query('post_status=publish&showposts=6&post_type=tour'); ?>
										<?php global $wp_query; $wp_query->in_the_loop = true; ?>
										<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
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
										<?php endwhile; wp_reset_postdata(); ?>
									</div>
								</div>
							</div>
							<div class="box-tour">
								<h2 class="title-tour"><span><strong>Khách</strong> sạn</span></h2>
								<div class="child-cat">
									<ul>
										<?php $args = array( 
										    'hide_empty' => 0,
										    'taxonomy' => 'hang-sao',
										    'orderby' => 'id',
										    'parent' => 0
										    ); 
										    $cates = get_categories( $args ); 
										    foreach ( $cates as $cate ) {  ?>
												<li>
													<a href="<?php echo get_term_link($cate->slug, 'hang-sao'); ?>"><i class="fa fa-angle-right"></i> <?php echo $cate->name ?></a>
												</li>
										<?php } ?>
										<li class="all"><a href="<?php bloginfo( 'url' ); ?>/khach-san">Tất cả <i class="fa fa-angle-double-right"></i> </a></li>
									</ul>
								</div>
								<div class="clear"></div>
								<div class="tour-content">
									<div class="row">
										<?php $getposts = new WP_query(); $getposts->query('post_status=publish&showposts=6&post_type=khach-san'); ?>
										<?php global $wp_query; $wp_query->in_the_loop = true; ?>
										<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
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
										<?php endwhile; wp_reset_postdata(); ?>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-3">
						<div class="sidebar">
							<?php get_sidebar(); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="popular-tour popular-car">
			<div class="container">
				<div class="main-title">
					<h2><span>Cho Thuê xe</span></h2>
					<p>Dịch vụ cho thuê xe chất lượng, giá rẻ </p>
				</div>
				<div class="content-rent-car">
					<div class="row">
						<?php $getposts = new WP_query(); $getposts->query('post_status=publish&showposts=8&post_type=thue-xe'); ?>
						<?php global $wp_query; $wp_query->in_the_loop = true; ?>
						<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
								<div class="detail-list-car">
									<a href="<?php the_permalink(); ?>">
										<img src="<?php echo hk_get_thumb(get_the_id(), 300, 200); ?>" alt="<?php the_title(); ?>">
									</a>
									<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
									<?php $hangxe = get_the_terms(get_the_id(), 'hang-xe'); ?>
									<?php if($hangxe){ ?>
									<p class="type"><span>Thương hiệu: </span><?php echo $hangxe['0']->name; ?></p>
									<?php } ?>
									<p class="price"><span>Giá thuê: </span><?php the_field('car_price'); ?></p>
									<div class="more">
										<a href="<?php the_permalink(); ?>">Xem chi tiết</a>
									</div>
								</div>
							</div>
						<?php endwhile; wp_reset_postdata(); ?>
					</div>
				</div>
			</div>
		</div>
		<div class="localtion">
			<div class="container">
				<h2 class="title"><span>Điểm đến nổi bật</span></h2>
				<div class="decs">
					<p>TOP điểm đến hấp dẫn bạn nên khám phá</p>
				</div>
				<div class="content-location">
					<div class="top-localtion owl-carousel owl-theme">
						<?php $args = array( 
						    'hide_empty' => 0,
						    'taxonomy' => 'dia-diem-du-lich',
						    'orderby' => 'id',
						    'meta_key' => 'cat_noi',
						    'meta_value' => 1,

						    ); 
						    $cates = get_categories( $args ); 
						    foreach ( $cates as $cate ) {  ?>
						    <?php $img_id = get_term_meta($cate->term_id, 'cat_avt', true); ?>
								<div class="item">
							    	<div class="detail-localtion">
							    		<a href="<?php echo get_term_link($cate->slug, 'dia-diem-du-lich'); ?>">
							    			<img src="<?php echo hk_get_image(wp_get_attachment_url($img_id),300,200); ?>" alt="<?php echo $cate->name; ?>">
							    		</a>
							    		<h4><a href="<?php echo get_term_link($cate->slug, 'dia-diem-du-lich'); ?>"><?php echo $cate->name; ?></a></h4>
							    	</div>
							    </div>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
		<div class="popular-tour news">
			<div class="container">
				<div class="main-title">
					<h2><span>Cẩm nang du lịch</span></h2>
				</div>
				<div class="content-news">
					<div class="row">
						<?php $getposts = new WP_query(); $getposts->query('post_status=publish&showposts=4&cat=1'); ?>
						<?php global $wp_query; $wp_query->in_the_loop = true; ?>
						<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
								<div class="detail-news">
									<a href="<?php the_permalink(); ?>">
										<img src="<?php echo hk_get_thumb(get_the_id(), 300, 200); ?>" alt="<?php the_title(); ?>">
									</a>
									<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
									<p><?php echo teaser(15); ?></p>
									<div class="meta-date">
										<span><?php echo get_the_date('d - m - Y'); ?></span>
									</div>
								</div>
							</div>
						<?php endwhile; wp_reset_postdata(); ?>
					</div>
				</div>
			</div>
		</div>
	</div> -->
<?php get_footer(); ?>