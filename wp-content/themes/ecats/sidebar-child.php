<?php $support = get_field('support', 'option'); ?>
<div class="support">
	<h3>Hỗ trợ khách hàng</h3>
	<div class="content-w">
		<p><i class="fa fa-user"></i><?php echo $support['support_name']; ?></p>
		<p><i class="fa fa-phone"></i><?php echo $support['support_phone']; ?></p>
		<p><i class="fa fa-envelope"></i><?php echo $support['support_email']; ?></p>
		<p><i class="fa fa-skype"></i><?php echo $support['support_skype']; ?></p>
	</div>
</div>
<div class="widget">
	<h3><span><i class="fa fa-bars" aria-hidden="true"></i> Danh mục tour</span></h3>
	<div class="content-cat">
		<ul>
			<?php $args = array( 
			    'hide_empty' => 0,
			    'taxonomy' => 'danh-muc',
			    'orderby' => 'id',
			    ); 
			    $cates = get_categories( $args ); 
			    foreach ( $cates as $cate ) {  ?>
					<li>
						<a href="<?php echo get_term_link($cate->slug, 'danh-muc'); ?>"><i class="fa fa-angle-right"></i> <?php echo $cate->name ?></a>
					</li>
			<?php } ?>
		</ul>
	</div>
</div>
<div class="widget">
	<h3><span><i class="fa fa-list" aria-hidden="true"></i>Tin tức</span></h3>
	<div class="content-w">
		<ul>
			<?php $getposts = new WP_query(); $getposts->query('post_status=publish&showposts=5'); ?>
			<?php global $wp_query; $wp_query->in_the_loop = true; ?>
			<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
				<li>
					<a href="<?php the_permalink(); ?>">
						<img src="<?php echo hk_get_thumb(get_the_id(), 80, 80); ?>" alt="<?php the_title(); ?>">
					</a>
					<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
					<div class="clear"></div>
				</li>
			<?php endwhile; wp_reset_postdata(); ?>
		</ul>
	</div>
</div>
<div class="widget">
	<h3><span><i class="fa fa-facebook" aria-hidden="true"></i> Facebook</span></h3>
	<div class="fb-page" data-href="<?php the_field('fb', 'option'); ?>" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"></div>
</div>