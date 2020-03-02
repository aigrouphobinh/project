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
	<h3><span><i class="fa fa-bars" aria-hidden="true"></i> Địa điểm tour</span></h3>
	<div class="content-cat">
		<ul>
			<?php $args = array( 
			    'hide_empty' => 0,
			    'taxonomy' => 'dia-diem-tour',
			    'orderby' => 'id',
			    'number' => 10
			    ); 
			    $cates = get_categories( $args ); 
			    foreach ( $cates as $cate ) {  ?>
					<li>
						<a href="<?php echo get_term_link($cate->slug, 'dia-diem-tour'); ?>"><i class="fa fa-angle-right"></i> <?php echo $cate->name ?></a>
					</li>
			<?php } ?>
		</ul>
	</div>
</div>
<div class="widget">
	<h3><span><i class="fa fa-bars" aria-hidden="true"></i> Khoảng giá tour</span></h3>
	<div class="content-cat">
		<ul>
			<?php $args = array( 
			    'hide_empty' => 0,
			    'taxonomy' => 'khoang-gia',
			    'orderby' => 'id',
			    'number' => 10
			    ); 
			    $cates = get_categories( $args ); 
			    foreach ( $cates as $cate ) {  ?>
					<li>
						<a href="<?php echo get_term_link($cate->slug, 'khoang-gia'); ?>"><i class="fa fa-angle-right"></i> <?php echo $cate->name ?></a>
					</li>
			<?php } ?>
		</ul>
	</div>
</div>
<div class="sale-tour">
	<div class="row">
		<?php $getposts = new WP_query(); $getposts->query('post_status=publish&showposts=3&post_type=tour&meta_key=sale&meta_value>0'); ?>
		<?php global $wp_query; $wp_query->in_the_loop = true; ?>
		<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-12">
				<div class="list-sale-tour">
					<a href="<?php the_permalink(); ?>">
						<img src="<?php echo hk_get_thumb(get_the_id(), 300, 200); ?>" alt="<?php the_title(); ?>">
						<div class="start">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
						</div>
						<h4><?php the_title(); ?></h4>
						<?php if(get_field('sale')) { ?>
						<div class="sale">
							<span>Giảm <?php the_field('sale'); ?>%</span>
						</div>
						<?php } ?>
						<div class="price">
							<span><?php echo number_format(get_field('tour_price'),0,",","."); ?> VNĐ</span>
						</div>
					</a>
				</div>
			</div>
		<?php endwhile; wp_reset_postdata(); ?>
	</div>
</div>
<div class="widget">
	<h3><span><i class="fa fa-facebook" aria-hidden="true"></i> Facebook</span></h3>
	<div class="fb-page" data-href="<?php the_field('fb', 'option'); ?>" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"></div>
</div>