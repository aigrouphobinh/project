<?php get_header(); ?>
<div class="page clearfix">
	<p class="page-title">Top Sàn Forex uy tín và tốt nhất 2020</p>
	<div class="page-content">
		<div class="scroll-table clearfix">
			<table>
				<tbody>
					<tr>
						<th class="first">
							Các nhà môi giới Forex
						</th>
						<th class="table-rating">
							Đánh giá
						</th>
						<th>Tiền gửi tối thiểu</th>
						<th>Tài khoản demo</th>
						<th>Mở tài khoản</th>
						<th>Xem</th>
					</tr>
					<?php $getposts = new WP_query(); $getposts->query('post_type=forex&showposts=5&cat=48'); ?>
					<?php global $wp_query; $wp_query->in_the_loop = true; ?>
					<?php
					if(have_posts()):
						while ($getposts->have_posts()) : $getposts->the_post();
							?>
							<tr>
								<td class="first">
									<a href="<?php the_permalink(); ?>">
										<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
									</a>
								</td>
								<td>
									<div class="broker-rating">
										<span class="r r1 selected"></span>
										<span class="r r2 selected"></span>
										<span class="r r3 selected"></span>
										<span class="r r4 selected"></span>
										<span class="r r5 selected half"></span>
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
							<?php endwhile; wp_reset_postdata(); ?>
						<?php else:
							echo "Dữ liệu hiện tại chưa cập nhật"; 
						endif;
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
							Các nhà môi giới Forex
						</th>
						<th class="table-rating">
							Đánh giá
						</th>
						<th>Tiền gửi tối thiểu</th>
						<th>Tài khoản demo</th>
						<th>Mở tài khoản</th>
						<th>Xem</th>
					</tr>
					<?php $getposts = new WP_query(); $getposts->query('post_type=forex&showposts=5&cat=46'); ?>
					<?php global $wp_query; $wp_query->in_the_loop = true; ?>
					<?php
					if(have_posts()):
						while ($getposts->have_posts()) : $getposts->the_post();
							?>
							<tr>
								<td class="first">
									<a href="<?php the_permalink(); ?>">
										<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
									</a>
								</td>
								<td>
									<div class="broker-rating">
										<?php echo kk_star_ratings(); ?>
										<span class="r r1 selected"></span>
										<span class="r r2 selected"></span>
										<span class="r r3 selected"></span>
										<span class="r r4 selected"></span>
										<span class="r r5 selected half"></span>
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
							<?php endwhile; wp_reset_postdata(); ?>
						<?php else:
							echo "Dữ liệu hiện tại chưa cập nhật"; 
						endif;
						?>
					</tbody>
				</table>
			</div>
		</div>
		<div class="page-aside">
			<?php get_sidebar(); ?>
		</div>

	</div>
	<div class="project-about">
		<div class="pad">
			<h1 class="titles"><?php the_field('title_intro', 'option'); ?></h1>
			<?php the_field('content_intro', 'option'); ?>
		</div>
		<div class="block-shadow"></div>
	</div>


	<?php get_footer(); ?>