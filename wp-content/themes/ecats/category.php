<?php get_header(); ?>
	<div class="page clearfix">	
	<div class="page-content">
		<h1><?php the_archive_title(); ?></h1>
			<div class="scroll-table clearfix">
				<ul class="id_ct_post">
						<?php if (have_posts()) : ?>
					<?php while (have_posts()) : the_post(); ?>
					<li>
						<a class="link-item" href="<?php the_permalink(); ?>">
								<div class="img-left">
									<?php if ( has_post_thumbnail() ) {
										the_post_thumbnail();
										} else { ?>
										<img src="<?php bloginfo('template_directory'); ?>/screenshot.jpg" alt="<?php the_title(); ?>" />
										<?php } ?>
								</div>
								<div class="txt-box">
									<h3><?php the_title(); ?></h3>
									<p><?= wp_trim_words(get_the_content(),20); ?></p>
								</div>
						</a>
					</li>
				<?php endwhile; endif; ?>
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
				</ul>
			
				
			</div>			
	</div>			

	<aside class="page-aside">
		<?php get_sidebar(); ?>
	</aside>
</div>
<?php get_footer(); ?>