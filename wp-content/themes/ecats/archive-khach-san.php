<?php get_header(); ?>
<div class="page clearfix">	
	<div class="page-content">
		<h1><?php the_title(); ?></h1>
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
						<?php if (have_posts()) : ?>
					<?php while (have_posts()) : the_post(); ?>
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
					<?php endwhile; else : ?>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"><p>Rất tiếc! Chưa tìm thấy tour nào!</p></div>
					<?php endif; ?>
					</tbody>
				</table>
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

	<aside class="page-aside">
		<?php get_sidebar(); ?>
	</aside>
</div>
<?php get_footer(); ?>