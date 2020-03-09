<?php get_header(); ?>
<div class="page clearfix">	
	<div class="page-content">
		<h1>Trang không tồn tại</h1>
		<ul style="padding: 0" class="show-mb hidden-pc">
			<?php $getposts = new WP_query(); $getposts->query('post_status=publish&post_type=forex'); ?>
					<?php global $wp_query; $wp_query->in_the_loop = true; ?>
					
					<?php
					
						while ($getposts->have_posts()) : $getposts->the_post();
							?>
							<li class="itme-li-mb">
									<div class="forex-left">
										<a href="<?php the_permalink(); ?>">	
											<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
											<div class="broker-rating" style="text-align: center;">
											<?php echo  do_shortcode('[score id = '.get_the_id().']') ?>
											</div>
											</a>
									</div>
									<div class="forex-right">
											<small><?php pll_e('Min. Deposit');?> / <?php pll_e('Free Demo');?></small><br>
											<strong><?php echo number_format(get_field('money_minimum'),0,",","."); ?>$ / <?php if(get_field('tk_demo')):echo pll_e('Yes, FREE!');
										else: echo pll_e('Yes') ;endif;?></strong>
										<br>
									</div>
									<div class="forex-bt">
											<a class="btn blues" target="_blank" href="<?php the_field('end_page') ?>"><?php pll_e('Sign Up FREE!');?></a>
										<a class="btn" href="<?php the_permalink(); ?>"><?php pll_e('Review');?></a>
									</div>
							</li>
							<?php endwhile; wp_reset_postdata(); ?>
				</ul>
			<div class="scroll-table clearfix hidden-mobile">
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
					<?php $getposts = new WP_query(); $getposts->query('post_status=publish&post_type=forex'); ?>
					<?php global $wp_query; $wp_query->in_the_loop = true; ?>
					<?php
					
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
							<?php endwhile; wp_reset_postdata(); ?>
						<?php 
						?>
					</tbody>
				</table>
			</div>			
	</div>			

	<aside class="page-aside">
		<?php get_sidebar(); ?>
	</aside>
</div>
<?php get_footer(); ?>