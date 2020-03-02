<?php get_header(); ?>
	<div id="content">
		<div class="main-content child-page">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-9">
						<div class="content">
							<div class="box-tour">
								<h1 class="title-tour">
									<span><?php single_cat_title(); ?></span>
								</h1>
								<div class="tour-search">
									<form action="<?php bloginfo( 'url' ); ?>/" method="GET" role="form">
						  				<input type="hidden" name="post_type" value="tour">
						  				<div class="row">
						  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
						  						<input type="text" class="form-control" id="" name="s" placeholder="Nhập tên tour">
						  					</div>
						  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-8">
						  						<div class="row">
						  							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
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
															'name'               => 'dia-diem-tour',
															'id'                 => 'dia-diem-tour',
															'class'              => 'form-control',
															'depth'              => 0,
															'tab_index'          => 0,
															'taxonomy'           => 'dia-diem-tour',
															'hide_if_empty'      => false,
															'value_field'	     => 'slug',
														); ?>
														<?php wp_dropdown_categories( $args ); ?> 
						  							</div>
						  							<div class="col-xs-12 col-sm-12 col-md-3 col-lg-4">
						  								<?php $args = array(
															'show_option_all'    => '',
															'show_option_none' 	 => __( 'Khoảng giá' ),
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
															'name'               => 'khoang-gia',
															'id'                 => 'khoang-gia',
															'class'              => 'form-control',
															'depth'              => 0,
															'tab_index'          => 0,
															'taxonomy'           => 'khoang-gia',
															'hide_if_empty'      => false,
															'value_field'	     => 'slug',
														); ?>
														<?php wp_dropdown_categories( $args ); ?>
						  							</div>
						  							<div class="col-xs-12 col-sm-12 col-md-3 col-lg-4">
						  								<button type="submit" class="button-search">Tìm tour ngay</button>
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
										<?php endwhile; else : ?>
										<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
											<p>Không có tour nào trong danh mục</p>
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
							<?php get_sidebar('tour'); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php get_footer(); ?>