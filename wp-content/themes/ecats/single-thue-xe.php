<?php get_header(); ?>
<?php if (have_posts()) : ?>
<?php while (have_posts()) : the_post(); ?>
	<div id="content">
		<div class="main-content child-page">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-9">
						<div class="content single-khach-san single-thue-xe">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-7">
									<div class="slider-tour">
										<?php $gallery = get_field('car_gellary');
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
									<div class="info-car">
										<h1><?php the_title(); ?></h1>
										<div class="price">
											<span>Giá thuê: <strong><?php the_field('car_price'); ?></strong></span>
										</div>
										<div class="info-car-decs">
											<p><?php echo teaser(25); ?></p>
										</div>
										<ul>
											<li>Màu xe: <strong><?php the_field('car_color'); ?></strong></li>
											<li>Hộp số: <strong><?php the_field('car_num'); ?></strong></li>
										</ul>
										<a href="#" class="rent-car" data-toggle="modal" data-target="#exampleModalCenter">Thuê xe ngay</a>
										<p class="call-support">Liên hệ số điện thoại <strong>01658 949 680</strong> để được tư vấn thêm!</p>
									</div>
								</div>
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
							<div class="content-rent-car rel-car">
								<h3>Xe liên quan</h3>
								<div class="row">
									<?php $terms = get_the_terms( get_the_id(), 'danh-muc-xe' ); ?>
									<?php if($terms){
										$cat_slug = $terms['0']->slug;
									} ?>
									<?php 
										$postquery = new WP_Query(array('posts_per_page' => 6, 'post_type' => 'thue-xe','danh-muc-xe'=>$cat_slug, 'post__not_in' => array($post->ID)));
										if ($postquery->have_posts()) {
										while ($postquery->have_posts()) : $postquery->the_post();
										$do_not_duplicate = $post->ID;
									?>
										<div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
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
									<?php endwhile; } else { ?>
										<div class="col-md-12"><p>Không có xe liên quan</p></div>
									<?php } ?>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-3">
						<div class="sidebar">
							<?php get_sidebar('xe'); ?>					
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
			    <div class="modal-content">
				    <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Đặt xe ngay!</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          	<span aria-hidden="true">&times;</span>
				        </button>
				    </div>
				    <div class="modal-body">
				        <div class="info-book-tour">
				        	<?php echo get_the_post_thumbnail( $post_id, 'full', array( 'class' =>'thumnail') ); ?>
				        	<h4><?php the_title(); ?></h4>
				        	<div class="price"><?php the_field('car_price'); ?></div>
				        	<div class="clear"></div>
				        </div>
				        <div class="text-info-book">
				        	<h5>NHẬP THÔNG TIN</h5>
							<p>Chúng tôi sẽ liên hệ lại ngay sau khi bạn đặt xe!</p>
				        </div>
				        <input type="hidden" class="link_tour" value="<?php the_permalink(); ?>">
				        <div class="info-contact-book">
				        	<?php echo do_shortcode( '[contact-form-7 id="301" title="Đặt xe"]' ); ?>
				        </div>
				    </div>
			    </div>
			</div>
		</div>
	</div>
<?php endwhile; ?>
<?php endif; ?>
<?php get_footer(); ?>