<?php $support = get_field('support', 'option'); ?>
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

<?php if( have_rows('top_post','option') ): $i = 0;?>
	<ul>

		<?php while ( have_rows('top_post','option') ) : the_row();?>
		<?php $post_objects = get_sub_field('bai_viet','option');
			if( $post_objects && get_the_id() != $i): ?>
				<li>
					<a href="<?php the_permalink() ?>"> <?php the_title() ?></a>
				</li>
			<?php endif;?>
			<?php $i = get_the_id();?>
		<?php endwhile;?>
	</ul>
<?php else : ?>

<?php endif;?>
	</div>
</div>
