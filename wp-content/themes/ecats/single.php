<?php get_header('post'); ?>
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
	</div>			

	<aside class="page-aside">
		<?php get_sidebar(); ?>
	</aside>
</div>
<?php endwhile;?>
<?php endif; ?>
<?php get_footer(); ?>