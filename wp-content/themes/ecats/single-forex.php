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
											<td class="first"><?php pll_e('Min. Deposit');?><strong><?php echo number_format(get_field('money_minimum'),0,",","."); ?>$</strong></td>
											<td><?= pll_e('Demo Account') ?> <strong><?php if(get_field('tk_demo')):echo pll_e('Yes, FREE!');
											else: echo pll_e('Yes') ;endif;?></strong>
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
									<li><?php pll_e('Rating');?>
										<span class="broker-rating">
											<div style="display: none;" class="kk-star-ratings kksr-disabled">
								<div class="kksr-stars ">
									<div class="kksr-stars-inactive">
										<?php for($i = 1; $i < 6; $i++){?>
											<div class="kksr-star">
												<div class="kksr-icon" style="width: 13.5px; height: 13.5px;"></div>
											</div>
										<?php } ?>
									</div>
									<?php $star = get_field('star');?>
									<div class="kksr-stars-active" style="width: <?= $star * 20 ?>%;">
										
										<?php for($i = 1; $i < 6; $i++){?>
											<div class="kksr-star">
												<div class="kksr-icon" style="width: 13.5px; height: 13.5px;"></div>
											</div>
										<?php } ?>
									</div>

								</div>
							</div>
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
									<a href="<?php the_field('end_page') ?>" class="btn btn-big" rel="nofollow"><?= pll_e('Visit site') ?></a>
								</div>
							</div>
						</div>
					</div>
					<div class="pad">
						<?php the_content(); ?>
						<?php
						if ( comments_open() || get_comments_number() ) :
							comments_template();
					endif;
					?> 
				</div>
			</article>	
			<div id="navbar" class="broker-fixed" style="display: none;">
				<div class="page-container">

					<div class="fixed-content clearfix">
						<a href="<?php the_field('end_page') ?>"><img width="125" height="40" src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" /></a>
						<a href="<?php the_field('end_page') ?>" class="btn btn-big" rel="nofollow">ĐĂNG KÝ</a>
					</div>
				</div>
			</div>					
		</div>			

		<aside class="page-aside">
			<?php get_sidebar(); ?>
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