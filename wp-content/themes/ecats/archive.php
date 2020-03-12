<?php get_header(); ?>
	<div class="page clearfix">	
	<div class="page-content">
		<h1><?php the_archive_title(); ?></h1>
			<div class="scroll-table clearfix">
			<table>
				<tbody>
					<tr>
					<th class="first">
							<?php pll_e('Broker');?>
						</th>
						<th class="table-rating">
							<?php pll_e('Rating');?>
						</th>
						<th><?php pll_e('Min. Deposit');?></th>
						<th><?php pll_e('Free Demo');?></th>
						<th><?php pll_e('Open Account');?></th>
						<th><?php pll_e('Review');?></th>
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
									</div>
								</td>
								<td>
									<?php the_field('money_minimum') ?>$
								</td>
								<td>
								<?php if(get_field('tk_demo')):echo pll_e('Yes, FREE!');
									else: echo pll_e('Yes') ;endif;?>
								</td>
								<td>
									<a class="btn blues" target="_blank" href="<?php the_field('end_page') ?>"><?php pll_e('Sign Up FREE!');?></a>
								</td>
								<td class="last">
									<a class="btn" href="<?php the_permalink(); ?>"><?php pll_e('Review');?></a>
								</td>
								</tr>
							<?php endwhile; wp_reset_postdata(); endif ?>
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