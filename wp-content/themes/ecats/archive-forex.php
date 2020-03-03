<?php get_header(); ?>
	<div id="content">
		<div class="popular-tour">
			<div class="container">
				<div class="main-title">
					<h1><span>Tour du lịch</span></h1>
					<p>Sau đây là một số tour du lịch nổi bật</p>
				</div>
				<?php if(!isset($_GET['s'])){ ?>
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
				<?php } ?>
			</div>
		</div>
		<div class="main-content">
			<div class="container">
				<div class="row">
					<?php if (have_posts()) : ?>
					<?php while (have_posts()) : the_post(); ?>
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
					<?php endwhile; else : ?>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"><p>Rất tiếc! Chưa tìm thấy tour nào!</p></div>
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
<?php get_footer(); ?>