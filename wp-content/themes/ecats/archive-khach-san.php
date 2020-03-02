<?php get_header(); ?>
	<div id="content">
		<div class="main-content child-page">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-9">
						<div class="content">
							<div class="box-tour">
								<h1 class="title-tour">
									<span><strong>Khách</strong> sạn</span>
								</h1>
								<div class="tour-search">
						  			<form action="<?php bloginfo( 'url' ); ?>/" method="GET" role="form">
						  				<input type="hidden" name="post_type" value="khach-san">
						  				<div class="row">
						  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
						  						<input type="text" class="form-control" name="s" id="" placeholder="Nhập tên khách sạn">
						  					</div>
						  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-8">
						  						<div class="row">
						  							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
						  								<?php $args = array(
															'show_option_all'    => '',
															'show_option_none' 	 => __( 'Địa điểm' ),
															'option_none_value'  => '',
															'orderby'            => 'ID',
															'order'              => 'ASC',
															'show_count'         => 0,
															'hide_empty'         => 0,
															'child_of'           => 0,
															'include'            => '',
															'echo'               => 1,
															'selected'           => 0,
															'hierarchical'       => 1,
															'name'               => 'dia-diem',
															'id'                 => 'dia-diem',
															'class'              => 'form-control',
															'depth'              => 0,
															'tab_index'          => 0,
															'taxonomy'           => 'dia-diem',
															'hide_if_empty'      => false,
															'value_field'	     => 'slug',
														); ?>
														<?php wp_dropdown_categories( $args ); ?>
						  							</div>
						  							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
						  								<?php $args = array(
															'show_option_all'    => '',
															'show_option_none' 	 => __( 'Hạng sao' ),
															'option_none_value'  => '',
															'orderby'            => 'ID',
															'order'              => 'ASC',
															'show_count'         => 0,
															'hide_empty'         => 0,
															'child_of'           => 0,
															'include'            => '',
															'echo'               => 1,
															'selected'           => 0,
															'hierarchical'       => 1,
															'name'               => 'hang-sao',
															'id'                 => 'hang-sao',
															'class'              => 'form-control',
															'depth'              => 0,
															'tab_index'          => 0,
															'taxonomy'           => 'hang-sao',
															'hide_if_empty'      => false,
															'value_field'	     => 'slug',
														); ?>
														<?php wp_dropdown_categories( $args ); ?>
						  							</div>
						  							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
						  								<button type="submit" class="button-search">Tìm Khách sạn</button>
						  							</div>
						  						</div>
						  					</div>
						  				</div>
						  			</form>
								</div>
								<div class="tour-content">
									<div class="row">
										<?php if (have_posts()) : ?>
										<?php while (have_posts()) : the_post(); ?>
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
										<?php endwhile; else : ?>
										<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
											<p>Rất tiếc! Không tìm thấy khách sạn nào!</p>
										</div>
										<?php endif; ?>
									</div>
									<?php if(paginate_links()!='') {?>
									<div class="quatrang">
										<?php
										global $wp_query;
										$big = 999999999;
										echo paginate_links( array(
											'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
											'format' => '?paged=%#%',
											'prev_text'    => __('«'),
											'next_text'    => __('»'),
											'current' => max( 1, get_query_var('paged') ),
											'total' => $wp_query->max_num_pages
											) );
									    ?>
									</div>
									<?php } ?>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-3">
						<div class="sidebar">
							<?php get_sidebar('hotel'); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php get_footer(); ?>