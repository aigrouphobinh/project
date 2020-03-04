<?php get_header(); ?>
<!-- <?php if (have_posts()) : ?> -->
<?php while (have_posts()) : the_post(); ?>
<?php setpostview(get_the_id()); ?>
<div class="page clearfix">	
	<div class="page-content">
		<h1><?php the_title(); ?></h1>
		<article class="page-block">
			<div class="pad">
				<?php the_content(); ?>
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
	</aside>
</div>
<?php endwhile;?>
<?php endif; ?>
<?php get_footer(); ?>