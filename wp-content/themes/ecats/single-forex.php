<?php get_header(); ?>
<?php if (have_posts()) : ?>
	<?php while (have_posts()) : the_post(); ?>
		<?php setpostview(get_the_id()); ?>
		<div class="page clearfix">	

			
			<div class="page-content">
				<article class="page-block">
					<div class="broker-info">
						<div class="pad">
							<h1 class="page-title clearfix">	<a href="<?php the_permalink(); ?>">
								<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
							</a> <?php the_title(); ?></h1>
							<div class="clearfix">
								<table class="broker-stats">
									<tbody>
										<tr>
											<td class="first">Tiền gửi tối thiểu<strong><?php the_field('money_minimum') ?>$</strong></td>
											<td>Tài khoản demo<strong><?php if(get_field('tk_demo')):echo "Có, miễn phí";
											else: echo "Không" ;endif;?></strong>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="broker-advances clearfix">
							<div class="gallery hidden-mobile">
								<img src="<?php the_field('image_demo') ?>" alt="">
							</div>

							<div class="advance-list">
								<ul>
									<li>Đánh giá
										<span class="broker-rating">
											<span class="r r1 selected"></span>
											<span class="r r2 selected"></span>
											<span class="r r3 selected"></span>
											<span class="r r4 selected"></span>
											<span class="r r5 selected half"></span>
										</span>												
									</li>
									<?php
									if( have_rows('intro_content') ):
										while ( have_rows('intro_content') ) : the_row();?>
											<li><?php  the_sub_field('thong_tin'); ?></li>
											<?php
										endwhile;else :	endif;
										?>
									</ul>
									<a href="<?php the_field('end_page') ?>" class="btn btn-big" rel="nofollow">ĐĂNG KÝ</a>
								</div>
							</div>
						</div>
					</div>
					<div class="pad">
						<?php the_content(); ?>
					</div>
				</article>	
				<div id="navbar" class="broker-fixed" style="display: none;">
					<div class="page-container">

						<div class="fixed-content clearfix">
							<a href="https://ecattrade.com/demo/iqoption-vietnam/" rel="nofollow"><img width="125" height="40" src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" /></noscript></a>
							<a href="<?php the_field('end_page') ?>" class="btn btn-big" rel="nofollow">ĐĂNG KÝ</a>
						</div>
					</div>
				</div>					
			</div>			

			<aside class="page-aside">

				<div class="broker_reviews hidden-mobile">
					<img src="https://ecattrade.com/wp-content/themes/cat/images/i/broker.jpg" width="300" height="314" alt="Danh sách nhà môi giới quyền chọn nhị phân Việt Nam" data-lazy-src="https://ecattrade.com/wp-content/themes/cat/images/i/broker.jpg" class="lazyloaded" data-was-processed="true"><noscript><img src="https://ecattrade.com/wp-content/themes/cat/images/i/broker.jpg" width="300" height="314" alt="Danh sách nhà môi giới quyền chọn nhị phân Việt Nam"></noscript>
					<span class="description">Top Sàn<br> Giao Dịch<br> Forex<br>Việt Nam</span>
					<a href="https://ecattrade.com/vi/san-giao-dich-quyen-chon-nhi-phan-vietnam" class="broker_reviews_button">
						<span class="normal">Click here</span>
						<span class="hover"></span>
					</a>
				</div>
			</div>
		</aside>
	</div>
			<?php endwhile;?>
		<?php endif; ?>
		<?php get_footer(); ?>
		<script>
			var $fix = $(".broker-fixed");
		if ($fix.length) {
			var $info = $(".broker-info");
			$(window).scroll(function () {
				$(window).scrollTop() > $info.offset().top + $info.height() ? $fix.show() : $fix.hide()
			})
		}
		</script>