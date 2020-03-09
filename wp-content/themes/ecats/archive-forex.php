<?php get_header(); ?>
<div class="page clearfix">	
	<div class="page-content">
		<h1><?php the_archive_title(); ?></h1>
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
										<?php echo  do_shortcode('[score id = '.get_the_id().']') ?>
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