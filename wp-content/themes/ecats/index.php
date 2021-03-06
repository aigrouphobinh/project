<?php get_header(); ?>
<div class="page clearfix">
	<p class="page-title"><?php pll_e('TOP FOREX BROKERS 2020') ?></p>
	<div class="page-content">
		<ul style="padding: 0" class="show-mb hidden-pc">
			<?php $nb= get_field('number_show_home','option'); ?>
				<?php $lg = pll_current_language()?>
				<?php if (have_rows('top_forex','option')): ?>
				<?php while ( have_rows('top_forex','option')) : the_row(); //
				if(have_rows('forexs_'.$lg.'','option')):
					?>
					<?php
					 while ( have_rows('forexs_'.$lg.'','option')) : the_row(); // loop through the repeater fields ?>
				<?php // set up post object
				$post_object = get_sub_field('view_forexs_'.$lg.'');
				if( $post_object ) :
				$post = $post_object;
				setup_postdata($post);?>
				<li class="itme-li-mb">
									<div class="forex-left">
										<a href="<?php the_permalink(); ?>">	
											<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
											<div class="broker-rating" style="text-align: center;">
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
											</a>
									</div>
									<div class="forex-right">
											<small><?php pll_e('Min. Deposit');?></small><br>
											<strong><?php echo number_format(get_field('money_minimum'),0,",","."); ?>$</strong><br>
											<small><?php pll_e('Free Demo');?></small><br><strong><?php if(get_field('tk_demo')):echo pll_e('Yes, FREE!');
										else: echo pll_e('Yes') ;endif;?></strong>
										<br>
									</div>
									<div class="forex-bt">
											<a class="btn blues" target="_blank" href="<?php the_field('end_page') ?>"><?php pll_e('Sign Up FREE!');?></a>
										<a class="btn" href="<?php the_permalink(); ?>"><?php pll_e('Review');?></a>
									</div>
							</li>
			<?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
				<?php endif; ?> 
				<?php endwhile; ?>
				<?php else: ?>
					
					<?php
					$args = array(
					'post_type' => 'forex',
					'posts_per_page'   => $nb,
					'post_status'   => 'publish',
					'suppress_filters' => true,
					'tax_query' => array(
					    array(
					        'taxonomy' => 'forex_category', //double check your taxonomy name in you dd 
					        'field'    => 'id',
					        'terms'    => 103,
					    ),
					   ),
					);
					$the_query = new WP_Query( $args );

					// The Loop
					if ( $the_query->have_posts() ) {
						while ( $the_query->have_posts() ) {
							$the_query->the_post();
					     ?>
					     <li class="itme-li-mb">
									<div class="forex-left">
										<a href="<?php the_permalink(); ?>">	
											<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
											<div class="broker-rating" style="text-align: center;">
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
											</a>
									</div>
									<div class="forex-right">
											<small><?php pll_e('Min. Deposit');?></small><br>
											<strong><?php echo number_format(get_field('money_minimum'),0,",","."); ?>$</strong><br>
											<small><?php pll_e('Free Demo');?></small><br><strong><?php if(get_field('tk_demo')):echo pll_e('Yes, FREE!');
										else: echo pll_e('Yes') ;endif;?></strong>
										<br>
									</div>
									<div class="forex-bt">
											<a class="btn blues" target="_blank" href="<?php the_field('end_page') ?>"><?php pll_e('Sign Up FREE!');?></a>
										<a class="btn" href="<?php the_permalink(); ?>"><?php pll_e('Review');?></a>
									</div>
							</li>
					     <?php
						} // end while
					} // endif

					// Reset Post Data
					wp_reset_postdata();
					?>
				<?php endif; ?> 
				<?php endwhile; ?>
				<?php endif ?>
			
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
				<?php $nb= get_field('number_show_home','option'); ?>
				<?php $lg = pll_current_language()?>
				<?php if (have_rows('top_forex','option')): ?>
				<?php while ( have_rows('top_forex','option')) : the_row(); //
				if(have_rows('forexs_'.$lg.'','option')):
					?>
					<?php
					 while ( have_rows('forexs_'.$lg.'','option')) : the_row(); // loop through the repeater fields ?>
				<?php // set up post object
				$post_object = get_sub_field('view_forexs_'.$lg.'');
				if( $post_object ) :
				$post = $post_object;
				setup_postdata($post);?>
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
						<?php echo number_format(get_field('money_minimum'),0,",","."); ?>$
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
				
				<?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
				<?php else: ?>
				<?php endif; ?> 
				<?php endwhile; ?>
				<?php else: ?>
					
					<?php
					$args = array(
					'post_type' => 'forex',
					'posts_per_page'   => $nb,
					'post_status'   => 'publish',
					'suppress_filters' => true,
					'tax_query' => array(
					    array(
					        'taxonomy' => 'forex_category', //double check your taxonomy name in you dd 
					        'field'    => 'id',
					        'terms'    => 103,
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
									<?php echo number_format(get_field('money_minimum'),0,",","."); ?>$
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
					     <?php
						} // end while
					} // endif

					// Reset Post Data
					wp_reset_postdata();
					?>
				<?php endif; ?> 
				<?php endwhile; ?>
				<?php endif ?>
					
					</tbody>
				</table>
			</div>
		<p class="page-title mt-1"><?php pll_e('TOP FOREX BINARY 2020') ?></p>
		<ul style="padding: 0" class="show-mb hidden-pc">
				<?php $lg = pll_current_language()?>
				<?php if (have_rows('top_forex_binary','option')): ?>
				<?php while ( have_rows('top_forex_binary','option')) : the_row(); //
				if(have_rows('forexs_'.$lg.'_binary','option')):
					?>
					<?php
					 while ( have_rows('forexs_'.$lg.'_binary','option')) : the_row(); // loop through the repeater fields ?>
				<?php // set up post object
				$post_object = get_sub_field('view_forexs_'.$lg.'_binary');
				if( $post_object ) :
				$post = $post_object;
				setup_postdata($post);?>
						<li class="itme-li-mb">
									<div class="forex-left">
										<a href="<?php the_permalink(); ?>">	
											<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
											<div class="broker-rating" style="text-align: center;">
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
											</a>
									</div>
									<div class="forex-right">
											<small><?php pll_e('Min. Deposit');?></small><br>
											<strong><?php echo number_format(get_field('money_minimum'),0,",","."); ?>$</strong><br>
											<small><?php pll_e('Free Demo');?></small><br><strong><?php if(get_field('tk_demo')):echo pll_e('Yes, FREE!');
										else: echo pll_e('Yes') ;endif;?></strong>
										<br>
									</div>
									<div class="forex-bt">
											<a class="btn blues" target="_blank" href="<?php the_field('end_page') ?>"><?php pll_e('Sign Up FREE!');?></a>
										<a class="btn" href="<?php the_permalink(); ?>"><?php pll_e('Review');?></a>
									</div>
							</li>
			<?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
				<?php endif; ?> 
				<?php endwhile; ?>
				<?php else: ?>
					
					<?php
					$args = array(
					'post_type' => 'forex',
					'posts_per_page'   => $nb,
					'post_status'   => 'publish',
					'suppress_filters' => true,
					'tax_query' => array(
					    array(
					        'taxonomy' => 'forex_category', //double check your taxonomy name in you dd 
					        'field'    => 'id',
					        'terms'    => 104,
					    ),
					   ),
					);
					$the_query = new WP_Query( $args );

					// The Loop
					if ( $the_query->have_posts() ) {
						while ( $the_query->have_posts() ) {
							$the_query->the_post();
					     ?>
					     <li class="itme-li-mb">
									<div class="forex-left">
										<a href="<?php the_permalink(); ?>">	
											<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
											<div class="broker-rating" style="text-align: center;">
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
											</a>
									</div>
									<div class="forex-right">
											<small><?php pll_e('Min. Deposit');?></small><br>
											<strong><?php echo number_format(get_field('money_minimum'),0,",","."); ?>$</strong><br>
											<small><?php pll_e('Free Demo');?></small><br><strong><?php if(get_field('tk_demo')):echo pll_e('Yes, FREE!');
										else: echo pll_e('Yes') ;endif;?></strong>
										<br>
									</div>
									<div class="forex-bt">
											<a class="btn blues" target="_blank" href="<?php the_field('end_page') ?>"><?php pll_e('Sign Up FREE!');?></a>
										<a class="btn" href="<?php the_permalink(); ?>"><?php pll_e('Review');?></a>
									</div>
							</li>
					     <?php
						} // end while
					} // endif

					// Reset Post Data
					wp_reset_postdata();
					?>
				<?php endif; ?> 
				<?php endwhile; ?>
				<?php endif ?>
			
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
					<?php $lg = pll_current_language()?>
				<?php if (have_rows('top_forex_binary','option')): ?>
				<?php while ( have_rows('top_forex_binary','option')) : the_row(); //
				if(have_rows('forexs_'.$lg.'_binary','option')):
					?>
					<?php
					 while ( have_rows('forexs_'.$lg.'_binary','option')) : the_row(); // loop through the repeater fields ?>
				<?php // set up post object
				$post_object = get_sub_field('view_forexs_'.$lg.'_binary');
				if( $post_object ) :
				$post = $post_object;
				setup_postdata($post);?>
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
						<?php echo number_format(get_field('money_minimum'),0,",","."); ?>$
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
				
				<?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
				<?php else: ?>
				<?php endif; ?> 
				<?php endwhile; ?>
				<?php else: ?>
					<?php
					$args = array(
					'post_type' => 'forex',
					'posts_per_page'   => $nb,
					'post_status'   => 'publish',
					'suppress_filters' => true,
					'tax_query' => array(
					    array(
					        'taxonomy' => 'forex_category', //double check your taxonomy name in you dd 
					        'field'    => 'id',
					        'terms'    => 104,
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
									<?php echo number_format(get_field('money_minimum'),0,",","."); ?>$
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
					     <?php
						} // end while
					} // endif

					// Reset Post Data
					wp_reset_postdata();
					?>
				<?php endif; ?> 
				<?php endwhile; ?>
				<?php endif ?>
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
								<img src="<?php echo get_the_post_thumbnail_url(get_the_ID(),'full') ?>"/>
								<h1 class="titles"><?php the_title(); ?></h1>
								<?php the_content(); ?>
							</div>
							<div class="block-shadow"></div>
						</div>
						
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