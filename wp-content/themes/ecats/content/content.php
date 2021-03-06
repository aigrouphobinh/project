<?php setpostview(get_the_id()); ?>
<h1 class="single-title"><?php the_title(); ?></h1>
<div class="meta">
	<span>Ngày đăng: <?php echo get_the_date('d - m - Y'); ?></span>
	<span>Tác giả: <?php the_author(); ?></span>
	<span>Chuyên mục: <?php the_category(', ') ?></span>
	<span>Lượt xem: <?php echo getpostviews(get_the_id()); ?> lượt</span>
</div>
<article class="post-content">
	<?php the_content(); ?>
</article>
<div class="tag">
	<p><?php the_tags('Từ khóa: '); ?></p>
</div>
<div class="like">
	<div class="fb-like" data-href="<?php the_permalink(); ?>" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>
	<div class="fb-send" data-href="<?php the_permalink(); ?>"></div>
</div>
<div class="comment">
	<div class="fb-comments" data-width="100%" data-href="<?php the_permalink(); ?>" data-numposts="5"></div>
</div>
<div class="lienquan">
	<h3>Bài viết liên quan</h3>
	<div class="content-lienquan">
		<?php
		    $categories = get_the_category(get_the_id());
		    if ($categories) 
		    {
		        $category_ids = array();
		        foreach($categories as $individual_category) $category_ids[] = $individual_category->term_id;
		        $args=array(
			        'category__in' 	=> $category_ids,
			        'post__not_in' 	=> array(get_the_id()),
			        'showposts'		=> 8, 
		        );
		        $my_query = new wp_query($args);
		        if( $my_query->have_posts() ) 
		        {
		            echo '<ul class="list-news-lq">';
		            while ($my_query->have_posts())
		            {
		                $my_query->the_post();
		                ?>
		                <li>
		                	<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
		                </li>
		                <?php
		            }
		            echo '</ul>';
		        }
		    }
		?>
	</div>
</div>