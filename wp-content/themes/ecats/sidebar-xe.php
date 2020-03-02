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
	<h3><span><i class="fa fa-bars" aria-hidden="true"></i> Danh mục xe</span></h3>
	<div class="content-cat">
		<ul>
			<?php $args = array( 
			    'hide_empty' => 0,
			    'taxonomy' => 'danh-muc-xe',
			    'orderby' => 'id',
			    ); 
			    $cates = get_categories( $args ); 
			    foreach ( $cates as $cate ) {  ?>
					<li>
						<a href="<?php echo get_term_link($cate->slug, 'danh-muc-xe'); ?>"><i class="fa fa-angle-right"></i> <?php echo $cate->name ?></a>
					</li>
			<?php } ?>
		</ul>
	</div>
</div>
<div class="widget">
	<h3><span><i class="fa fa-bars" aria-hidden="true"></i> Hãng xe</span></h3>
	<div class="content-cat">
		<ul>
			<?php $args = array( 
			    'hide_empty' => 0,
			    'taxonomy' => 'hang-xe',
			    'orderby' => 'id',
			    'number' => 10,
			    ); 
			    $cates = get_categories( $args ); 
			    foreach ( $cates as $cate ) {  ?>
					<li>
						<a href="<?php echo get_term_link($cate->slug, 'hang-xe'); ?>"><i class="fa fa-angle-right"></i> <?php echo $cate->name ?></a>
					</li>
			<?php } ?>
		</ul>
	</div>
</div>
<div class="widget">
	<h3><span><i class="fa fa-bars" aria-hidden="true"></i> Chỗ ngồi</span></h3>
	<div class="content-cat">
		<ul>
			<?php $args = array( 
			    'hide_empty' => 0,
			    'taxonomy' => 'cho-ngoi',
			    'orderby' => 'id',
			    'number' => 10,
			    ); 
			    $cates = get_categories( $args ); 
			    foreach ( $cates as $cate ) {  ?>
					<li>
						<a href="<?php echo get_term_link($cate->slug, 'cho-ngoi'); ?>"><i class="fa fa-angle-right"></i> <?php echo $cate->name ?></a>
					</li>
			<?php } ?>
		</ul>
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
	<h3><span><i class="fa fa-facebook" aria-hidden="true"></i> Facebook</span></h3>
	<div class="fb-page" data-href="<?php the_field('fb', 'option'); ?>" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"></div>
</div>