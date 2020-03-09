
<div class="widget">
	<div class="content-cat">
		<?php if ( is_active_sidebar('banner') ) : ?>
			<div id="primary-sidebar" class="primary-sidebar widget-area" role="complementary">
				<?php dynamic_sidebar('banner'); ?>
			</div><!-- #primary-sidebar -->
		<?php endif; ?>
		<?php if ( is_active_sidebar('banner_1') ) : ?>
			<div id="primary-sidebar" style="margin: 15px 0" class="primary-sidebar widget-area" role="complementary">
				<?php dynamic_sidebar('banner_1'); ?>
			</div><!-- #primary-sidebar -->
		<?php endif; ?>

		<?php $lg = pll_current_language()?>
		<?php while ( have_rows('top_post','option')) : the_row(); //
		if(have_rows('ports_'.$lg.'','option')):
			?>

		<ul class="sidebar-post">
		<li><h3 style="margin: 8px 0;"><?= pll_e('Port View') ?></h3></li>
			<?php
			 while ( have_rows('ports_'.$lg.'','option')) : the_row(); // loop through the repeater fields ?>
		<?php // set up post object
		$post_object = get_sub_field('view_post_'.$lg.'');
		if( $post_object ) :
		$post = $post_object;
		setup_postdata($post);?>
		<li>
			<a class="link-item" href="<?php the_permalink(); ?>">
				<div class="img-left">
					<?php if ( has_post_thumbnail() ) {
						the_post_thumbnail();
					} else { ?>
						<img src="<?php bloginfo('template_directory'); ?>/images/no-image.png" alt="<?php the_title(); ?>" />
					<?php } ?>
				</div>
				<div class="txt-box" style="color: #333">
					<h3><?php the_title(); ?></h3>
					<small><?php echo get_the_date('d/m/Y'); ?></small>
				</div>
			</a>
		</li>
		
		<?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
		<?php endif; ?> 
		<?php endwhile; ?>
		</ul>
		<?php endif; ?> 
		<?php endwhile; ?>
</div>
</div>
