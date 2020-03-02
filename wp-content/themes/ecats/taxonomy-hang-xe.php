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
						  				<input type="hidden" name="post_type" value="thue-xe">
						  				<div class="row">
						  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
						  						<input type="text" class="form-control" name="s" id="" placeholder="Nhập tên xe">
						  					</div>
						  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-8">
						  						<div class="row">
						  							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
						  								<?php $args = array(
															'show_option_all'    => '',
															'show_option_none' 	 => __( 'Danh mục' ),
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
															'name'               => 'danh-muc-xe',
															'id'                 => 'danh-muc-xe',
															'class'              => 'form-control',
															'depth'              => 0,
															'tab_index'          => 0,
															'taxonomy'           => 'danh-muc-xe',
															'hide_if_empty'      => false,
															'value_field'	     => 'slug',
														); ?>
														<?php wp_dropdown_categories( $args ); ?>
						  							</div>
						  							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
						  								<?php $args = array(
															'show_option_all'    => '',
															'show_option_none' 	 => __( 'Hãng xe' ),
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
															'name'               => 'hang-xe',
															'id'                 => 'hang-xe',
															'class'              => 'form-control',
															'depth'              => 0,
															'tab_index'          => 0,
															'taxonomy'           => 'hang-xe',
															'hide_if_empty'      => false,
															'value_field'	     => 'slug',
														); ?>
														<?php wp_dropdown_categories( $args ); ?>
						  							</div>
						  							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
						  								<button type="submit" class="button-search">Tìm xe ngay</button>
						  							</div>
						  						</div>
						  					</div>
						  				</div>
						  			</form>
								</div>
								<div class="tour-content content-rent-car">
									<div class="row">
										<?php if (have_posts()) : ?>
										<?php while (have_posts()) : the_post(); ?>
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
										<?php endwhile; else : ?>
										<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
											<p>Rất tiếc không có xe nào!</p>
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
							<?php get_sidebar('xe'); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php get_footer(); ?>