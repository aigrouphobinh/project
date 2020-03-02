<?php get_header(); ?>
<?php if (have_posts()) : ?>
<?php while (have_posts()) : the_post(); ?>
<?php setpostview(get_the_id()); ?>
	<div id="content">
		<div class="main-content child-page">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-9">
						<div class="content">
							<div class="single-post-news">
								<div class="meta-post-single">
									<?php echo get_avatar(get_current_user_id(), 60 ); ?>
									<p class="author"><?php the_author(); ?></p>
									<span><?php echo get_the_date('d/m/Y'); ?> - <?php echo getpostviews(get_the_id()); ?> Lượt xem</span>
									<div class="clear"></div>
									<?php if(!wp_is_mobile()){ ?>
									<div class="social-post">
										<div class="fb-like" data-href="<?php the_permalink(); ?>" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
										<script src="https://apis.google.com/js/platform.js" async defer></script>
									  	<g:plusone size="medium"></g:plusone>
									</div>
									<?php } ?>
								</div>
								<div class="content-single-news">
									<h1><?php the_title(); ?></h1>
									<article class="post-content">
										<?php the_content(); ?>
									</article>
									
								</div>
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
<?php endwhile;?>
<?php endif; ?>
<?php get_footer(); ?>