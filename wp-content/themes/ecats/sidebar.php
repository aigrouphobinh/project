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
	</div>
</div>
