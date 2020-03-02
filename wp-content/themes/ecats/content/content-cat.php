<div class="news-detail">
	<a href="<?php the_permalink(); ?>">
		<img src="<?php echo hk_get_thumb(get_the_id(), 270, 160); ?>"  alt="<?php the_title(); ?>">
	</a>
	<div class="info-post">
		<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
		<div class="meta">
			<span>Ngày đăng: <?php echo get_the_date('d - m - Y'); ?></span>
		</div>
		<p><?php echo teaser(80); ?></p>
	</div>
	<div class="clear"></div>
</div>