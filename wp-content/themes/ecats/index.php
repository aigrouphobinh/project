<?php get_header(); ?>
<div class="page clearfix">
	<p class="page-title">Top Sàn Forex uy tín và tốt nhất 2020</p>
	<div class="page-content">
		<div class="scroll-table clearfix">
			<table>
				<tbody>
					<tr>
						<th class="first">
							Các nhà môi giới
						</th>
						<th class="table-rating">
							Đánh giá
						</th>
						<th>Tiền gửi tối thiểu</th>
						<th>Tài khoản demo</th>
						<th>Mở tài khoản</th>
						<th>Xem</th>
					</tr>
					<?php
					$args = array(
					'post_type' => 'forex',
					'posts_per_page'   => 6,
					'post_status'   => 'publish',
					'suppress_filters' => true,
					'tax_query' => array(
					    array(
					        'taxonomy' => 'forex_category', //double check your taxonomy name in you dd 
					        'field'    => 'id',
					        'terms'    => 33,
					    ),
					   ),
					);
					$the_query = new WP_Query( $args );

					// The Loop
					if ( $the_query->have_posts() ) {
						while ( $the_query->have_posts() ) {
							$the_query->the_post();
					     ?>
					     <tr>
								<td class="first">
									<a href="<?php the_permalink(); ?>">	
										<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
									</a>
								</td>
								<td>
									<div class="broker-rating">
										<?php echo  do_shortcode('[score id = '.get_the_id().']') ?>
									</div>
								</td>
								<td>
									<?php the_field('money_minimum') ?>$
								</td>
								<td>
									<?php if(get_field('tk_demo')):echo "Có, miễn phí";
										else: echo "Không" ;endif;?>
									</td>
									<td>
										<a class="btn blues" target="_blank" href="<?php the_field('end_page') ?>">Đăng ký Free</a>
									</td>
									<td class="last">
										<a class="btn" href="<?php the_permalink(); ?>">Đánh giá</a>
									</td>
								</tr>
					     <?php
						} // end while
					} // endif

					// Reset Post Data
					wp_reset_postdata();
					?>
					</tbody>
				</table>
			</div>
		<p class="page-title mt-1" style="color: #f18b07">TOP sàn Binary option uy tín 2020</p>
		<div class="scroll-table clearfix">
			<table>
				<tbody>
					<tr>
						<th class="first">
							Các nhà môi giới
						</th>
						<th class="table-rating">
							Đánh giá
						</th>
						<th>Tiền gửi tối thiểu</th>
						<th>Tài khoản demo</th>
						<th>Mở tài khoản</th>
						<th>Xem</th>
					</tr>
					<?php
					$args = array(
					'post_type' => 'forex',
					'posts_per_page'   => 6,
					'post_status'   => 'publish',
					'suppress_filters' => true,
					'tax_query' => array(
					    array(
					        'taxonomy' => 'forex_category', //double check your taxonomy name in you dd 
					        'field'    => 'id',
					        'terms'    => 49,
					    ),
					   ),
					);
					$the_query = new WP_Query( $args );

					// The Loop
					if ( $the_query->have_posts() ) {
						while ( $the_query->have_posts() ) {
							$the_query->the_post();
					     ?>
					     <tr>
								<td class="first">
									<a href="<?php the_permalink(); ?>">	
										<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
									</a>
								</td>
								<td>
									<div class="broker-rating">
										<?php echo  do_shortcode('[score id = '.get_the_id().']') ?>
									</div>
								</td>
								<td>
									<?php the_field('money_minimum') ?>$
								</td>
								<td>
									<?php if(get_field('tk_demo')):echo "Có, miễn phí";
										else: echo "Không" ;endif;?>
									</td>
									<td>
										<a class="btn blues" target="_blank" href="<?php the_field('end_page') ?>">Đăng ký Free</a>
									</td>
									<td class="last">
										<a class="btn" href="<?php the_permalink(); ?>">Đánh giá</a>
									</td>
								</tr>
					     <?php
						} // end while
					} // endif

					// Reset Post Data
					wp_reset_postdata();
					?>
					</tbody>
				</table>
			</div>
				<?php $getposts = new WP_query(); $getposts->query('post_type=gt_intro&showposts=1'); ?>
					<?php global $wp_query; $wp_query->in_the_loop = true; ?>
					<?php
					if(have_posts()):
						while ($getposts->have_posts()) : $getposts->the_post();
							?>
							<div class="project-about" style="margin-top: 15px">
							<div class="pad">
								<h1 class="titles"><?php the_title(); ?></h1>
								<?php the_content(); ?>
							</div>
							<div class="block-shadow"></div>
						</div>
						<style type="text/css">
							.project-about .pad {
				    padding: 30px 30px 30px 326px;
				    min-height: 480px;
				    background: #f4f6ed url(<?php echo get_the_post_thumbnail_url(get_the_ID(),'full') ?>) 0 bottom no-repeat;}
						</style>
							<?php endwhile; wp_reset_postdata(); ?>
						<?php else:
							echo "Dữ liệu hiện tại chưa cập nhật"; 
						endif;
						?>
		</div>
		<div class="page-aside">
			<?php get_sidebar(); ?>
		</div>

	</div>
	


	<?php get_footer(); ?>