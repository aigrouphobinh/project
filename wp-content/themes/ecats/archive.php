<?php get_header(); ?>
	<div id="content">
		<div class="main-content child-page">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-9">
						<div class="content">
							<div class="category-page">
								<h1 class="title-cat"><span><?php the_archive_title(); ?></span></h1>
								<div class="category-news">
									<?php if (have_posts()) : ?>
									<?php while (have_posts()) : the_post(); ?>
									<div class="list-news">
										<a href="<?php the_permalink(); ?>">
											<img src="<?php echo hk_get_thumb(get_the_id(), 300, 200); ?>" alt="<?php the_title(); ?>">
										</a>
										<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
										<div class="meta">
											<span>Ngày đăng: <?php echo get_the_date( 'd - m - Y' ); ?></span>
											<span>Lượt xem: <?php echo getpostviews(get_the_id()); ?></span>
										</div>
										<p><?php echo teaser(50); ?></p>
										<div class="more"><a href="<?php the_permalink(); ?>">Xem chi tiết</a></div>
										<div class="clear"></div>
									</div>
									<?php endwhile; else : ?>
									<p>Không có bài viết nào trong chuyên mục</p>
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
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-3">
						<div class="sidebar">
							<div class="post-views-sidebar">
								<div class="tab-widget">
									<ul class="nav nav-tab-sidebar" id="pills-tab" role="tablist">
									  	<li class="nav-item">
									    	<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Mới nhất</a>
									  	</li>
									  	<li class="nav-item">
									    	<a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Xem nhiều</a>
									  	</li>
									</ul>
									<div class="tab-content" id="pills-tabContent">
										<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
											<?php $getposts = new WP_query(); $getposts->query('post_status=publish&showposts=5'); ?>
											<?php global $wp_query; $wp_query->in_the_loop = true; ?>
											<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
												<div class="list-news">
													<a href="<?php the_permalink(); ?>">
														<img src="<?php echo hk_get_thumb(get_the_id(), 80, 80); ?>" alt="<?php the_title(); ?>">
													</a>
													<div class="info-post">
														<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
														<span><?php echo get_the_date('d - m - Y'); ?></span>
													</div>	
													<div class="clear"></div>
												</div>
											<?php endwhile; wp_reset_postdata(); ?>
										</div>
										<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
											<?php $getposts = new WP_query(); $getposts->query('post_status=publish&showposts=8&post_type=post&meta_key=views&orderby=meta_value_num'); ?>
											<?php global $wp_query; $wp_query->in_the_loop = true; ?>
											<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
												<div class="list-news">
													<a href="<?php the_permalink(); ?>">
														<img src="<?php echo hk_get_thumb(get_the_id(), 80, 80); ?>" alt="<?php the_title(); ?>">
													</a>
													<div class="info-post">
														<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
														<span><?php echo get_the_date('d - m - Y'); ?></span>
													</div>	
													<div class="clear"></div>
												</div>
											<?php endwhile; wp_reset_postdata(); ?>
										</div>
									</div>
								</div>
							</div>
							<?php get_sidebar('child'); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php get_footer(); ?>