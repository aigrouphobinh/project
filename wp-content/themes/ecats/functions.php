<?php 
//Include một số file cần thiết
add_filter('use_block_editor_for_post', '__return_false');
include_once(get_template_directory().'/core/activation.php');
include_once(get_template_directory().'/core/plugins.php');
include_once(get_template_directory().'/core/custom-admin.php');
//include_once(get_template_directory().'/core/disable-updates.php');
include_once(get_template_directory().'/core/resize.php');
include_once(get_template_directory().'/widget/widget.php');
// setting tổng quan giao diện
function settup_theme(){
	add_theme_support('post-thumbnails');
	add_filter('show_admin_bar', '__return_false');
	add_filter( 'post_thumbnail_html', 'remove_width_attribute', 10 );
	add_filter( 'image_send_to_editor', 'remove_width_attribute', 10 );
	function remove_width_attribute( $html ) {
	   $html = preg_replace( '/(width|height)="\d*"\s/', "", $html );
	   return $html;
	}
	if (function_exists('register_sidebar')){
		register_sidebar(array(
			'name'=> 'banner 1',
			'id' => 'banner',
			'before_widget' => '<div class="widget">',
			'after_widget'  => "</div>\n",
			'before_title'  => '<h3 class="title"><span>',
			'after_title'   => "</span></h3>\n",
		));
		register_sidebar(array(
			'name'=> 'banner 2',
			'id' => 'banner_1',
			'before_widget' => '<div class="widget">',
			'after_widget'  => "</div>\n",
			'before_title'  => '<h3 class="title"><span>',
			'after_title'   => "</span></h3>\n",
		));
		register_sidebar(array(
			'name'=> 'Footer',
			'id' => 'footer_1',
			'before_widget' => '<div class="widget">',
			'after_widget'  => "</div>\n",
			'before_title'  => '<h3 class="title"><span>',
			'after_title'   => "</span></h3>\n",
		));
		register_sidebar(array(
			'name'=> 'Footer1',
			'id' => 'footer_2',
			'before_widget' => '<div class="widget">',
			'after_widget'  => "</div>\n",
			'before_title'  => '<h3 class="title"><span>',
			'after_title'   => "</span></h3>\n",
		));
			register_sidebar(array(
			'name'=> 'Footer2',
			'id' => 'footer_3',
			'before_widget' => '<div class="widget">',
			'after_widget'  => "</div>\n",
			'before_title'  => '<h3 class="title"><span>',
			'after_title'   => "</span></h3>\n",
		));
			register_sidebar(array(
			'name'=> 'Footer3',
			'id' => 'footer_4',
			'before_widget' => '<div class="widget">',
			'after_widget'  => "</div>\n",
			'before_title'  => '<h3 class="title"><span>',
			'after_title'   => "</span></h3>\n",
		));
				register_sidebar(array(
			'name'=> 'Tops',
			'id' => 'menu_top',
			'before_widget' => '<div class="widget">',
			'after_widget'  => "</div>\n",
			'before_title'  => '<h3 class="title"><span>',
			'after_title'   => "</span></h3>\n",
		));


	}
	register_nav_menus(
		array(
			'main_nav' => 'Menu chính',
			'top_nav' => 'Top menu',
			'post_nav' => 'Post menu',
		)
	);
	function teaser($limit) {
		$excerpt = explode(' ', get_the_excerpt(), $limit);
		if (count($excerpt)>=$limit) {
			array_pop($excerpt);
			$excerpt = implode(" ",$excerpt).'[...]';
		} else {
			$excerpt = implode(" ",$excerpt);
		}
		$excerpt = preg_replace('`\[[^\]]*\]`','',$excerpt);
		return $excerpt.'...';
	}
	function setpostview($postID){
	    $count_key ='views';
	    $count = get_post_meta($postID, $count_key, true);
	    if($count == ''){
	        $count = 0;
	        delete_post_meta($postID, $count_key);
	        add_post_meta($postID, $count_key, '0');
	    } else {
	        $count++;
	        update_post_meta($postID, $count_key, $count);
	    }
	}
	function getpostviews($postID){
	    $count_key ='views';
	    $count = get_post_meta($postID, $count_key, true);
	    if($count == ''){
	        delete_post_meta($postID, $count_key);
	        add_post_meta($postID, $count_key, '0');
	        return "0";
	    }
	    return $count;
	}
	function wpc_unset_imagesizes($sizes){  
	    unset( $sizes['thumbnail']);  
	    unset( $sizes['medium']);  
	    unset( $sizes['medium_large']);  
	    unset( $sizes['large']);  
	}  
	add_filter('intermediate_image_sizes_advanced', 'wpc_unset_imagesizes'); 
	add_filter('max_srcset_image_width', create_function('', 'return 1;'));
	add_action('admin_head', 'wpds_custom_admin_post_css');
	function wpds_custom_admin_post_css() {
	    global $post_type;
	    if ($post_type == 'slider') {
	        echo "<style>#edit-slug-box {display:none;}</style>";
	    }
	}
}
add_action('init','settup_theme');
// Setting hình crop hình đại diện
function hk_get_thumb($id, $w, $h){
	if(get_post_thumbnail_id($id)){
		$url = wp_get_attachment_url( get_post_thumbnail_id($id));
	} else {
		$url = get_bloginfo('template_directory').'/no-thumb.jpg';
	}                                                        
	$image = huykira_image_resize($url, $w, $h, true, false);
	return $image['url'];	
}
function hk_get_image($url, $w, $h){
	$image = huykira_image_resize($url, $w, $h, true, false);
	return $image['url'];	
}
// Thêm icon menu 2 cấp
class Child_Wrap extends Walker_Nav_Menu{
    function start_lvl(&$output, $depth = 0, $args = array()){
        $indent = str_repeat("\t", $depth);
        $output .= "\n$indent<i class=\"show-child-menu fa fa-angle-right\"></i><ul class=\"sub-menu\">\n";
    }
    function end_lvl(&$output, $depth = 0, $args = array()){
        $indent = str_repeat("\t", $depth);
        $output .= "$indent</ul>\n";
    }
}
add_action('init', 'GT_post_type', 0);
function GT_post_type(){
    $label = array(
        'name' => 'Giới thiệu',
        'singular_name' => 'GT_intro',
    );
    $args = array(
        'labels' => $label,
        'description' => 'Post type đăng GT',
        'supports' => array(
            'title',
            'thumbnail',
            'editor',
        ),
        'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
        'public' => true, //Kích hoạt post type
        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
        'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
        'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
        'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
        'menu_position' => 5, //Thứ tự vị trí hiển thị trong menu (tay trái)
        'menu_icon' => 'dashicons-megaphone', //Đường dẫn tới icon sẽ hiển thị
        'can_export' => true, //Có thể export nội dung bằng Tools -> Export
        'has_archive' => true, //Cho phép lưu trữ (month, date, year)
        'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
        'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
        'capability_type' => 'post' //
    );
    register_post_type('GT_intro', $args);

}
add_action('init', 'forex_post_type', 0);
// Tạo post type slider
function forex_post_type(){
    $label = array(
        'name' => 'Forex',
        'singular_name' => 'Review',
    );
    $args = array(
        'labels' => $label,
        'rewrite'      => array( 'slug' => 'Review'),
        'description' => 'Post type đăng forex',
        'supports' => array(
            'title',
            'thumbnail',
            'editor',
            'comments',
        ),
        'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
        'public' => true, //Kích hoạt post type
        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
        'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
        'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
        'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
        'menu_position' => 5, //Thứ tự vị trí hiển thị trong menu (tay trái)
        'menu_icon' => 'dashicons-chart-line', //Đường dẫn tới icon sẽ hiển thị
        'can_export' => true, //Có thể export nội dung bằng Tools -> Export
        'has_archive' => true, //Cho phép lưu trữ (month, date, year)
        'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
        'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
        'capability_type' => 'post' //
    );
    register_taxonomy('forex_category',array('forex'), array(
    'hierarchical' => true,
    'show_admin_column' => true,
    'rewrite'      => array( 'slug' => 'Category'),
    'labels' => array(
        'name' => 'Danh mục',
        'singular_name' => 'Category',
    ),

  ));
    register_post_type('forex', $args);


}

// Loại bỏ 1 bài viết ra khỏi hệ thống tìm kiếm
add_action('pre_get_posts','one_exclude_posts_from_search');
function one_exclude_posts_from_search( $query ){
    if( $query->is_main_query() && is_search() ){
        $post_ids = array(109);
        $query->set('post__not_in', $post_ids);
    }
}
// Tăng số lượng từ mô tả lên 300
function custom_excerpt_length( $length ) {
	return 300;
}
add_filter( 'excerpt_length', 'custom_excerpt_length', 999 );
// Lấy tất cả những hình ảnh trong bài viết
function get_link_img_post(){
	global $post;
	preg_match_all('/src="(.*)"/Us',get_the_content(),$matches);
	$link_img_post = $matches[1];
	return $link_img_post;
}
// Thay thể mộ số từ chưa được dịch
function change_text_menu_title( $translated ){
    $translated = str_replace( 'Contact', 'Liên hệ', $translated );
    $translated = str_replace( 'Tóm tắt', 'Nội dung mô tả', $translated );
    return $translated;
}
add_filter( 'gettext', 'change_text_menu_title' );
// Xử lý ajax đơn giản
add_action('wp_ajax_Like_action', 'Like_action');
add_action('wp_ajax_nopriv_Like_action', 'Like_action');
function Like_action() {
    $id = isset($_POST['id']) ? (int)$_POST['id'] : false;
die(); }
// Lấy user mặc định
$current_user = wp_get_current_user();
$lever = $current_user->user_level;
if($lever < 6){}
// Tùy chỉnh website bằng ACF PRO
// the_field('logo', 'option'); -> Hiển thị ra ngoài nhé!
if( function_exists('acf_add_options_page') ) {
	acf_add_options_page(array(
		'page_title' 	=> 'Tùy chỉnh website',
		'menu_title'	=> 'Tùy chỉnh',
		'menu_slug' 	=> 'theme-settings',
		'capability'	=> 'edit_posts',
		'redirect'		=> false
	));
	// acf_add_options_sub_page(array(
	// 	'page_title' 	=> 'Top post',
	// 	'menu_title'	=> 'Top post',
	// 	'parent_slug' 	=> 'theme-settings',
	// ));
	// acf_add_options_sub_page(array(
	// 	'page_title' 	=> 'Top Forex',
	// 	'menu_title'	=> 'Top Forex',
	// 	'parent_slug' 	=> 'theme-settings',
	// ));


}
function the_price_tour($id){ 
	$price_sale = get_field('tour_sale',$id); 
	$price_regular = get_field('tour_price',$id); 
	if($price_sale){ ?>
		<?php if($price_regular){ ?>
		<span class="price-old"><?php echo number_format($price_regular,0,",","."); ?> VNĐ</span>
		<?php } ?>
		<span class="price-sale"><?php echo number_format($price_sale,0,",","."); ?> VNĐ</span>
	<?php } else { ?>
		<span class="price-sale"><?php echo number_format($price_regular,0,",","."); ?> VNĐ</span>
	<?php } 
}
function devvn_comment($comment, $args, $depth)    {
    $GLOBALS['comment'] = $comment; ?>
    <li <?php comment_class();?> id="li-comment-<?=get_comment_ID();?>">    
        <div id="comment-<?=get_comment_ID();?>" class="clearfix">
             <div class="comment-author vcard">
                <?php echo get_avatar($comment, $size='70', ''); ?>  
             </div><!-- end comment autho vcard-->
        
	         <div class="commentBody">
	        	 <div class="comment-meta commentmetadata">
	              <?php printf(__('<p class="fn">%s</p>'), get_comment_author_link()); ?>	              
	             </div><!--end .comment-meta-->
	            <?php if($comment->comment_approved == '0') : ?>
	                <em><?php echo 'Your coment is waiting for moderation.';?></em>
	                <?php endif; ?>
				<div class="noidungcomment">
	            	<?php comment_text(); ?>
	            </div>
	            <div class="tools_comment">	                
		            <?php comment_reply_link(array_merge($args,array('respond_id' => 'formcmmaxweb','depth' => $depth, 'max_depth'=> $args['max_depth'])));?>		            
              		<?php edit_comment_link(__('Sửa'),' ',''); ?>
              		<?php printf(__('<a href="#comment-%d" class="ngaythang">%s</a>'),get_comment_ID(),get_comment_date('d/m/Y'));?>
	            </div>
	            	
	        </div><!--end #commentBody-->
        </div><!--end #comment-author-vcard-->
	</li>
<?php }
//validate comments
function comment_validation_init() {
	if(is_singular() && comments_open() ) { ?>
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
	<script type="text/javascript">
	jQuery(document).ready(function($) {
		$('#commentform').validate({		 
			onfocusout: function(element) {
			  this.element(element);
			},
			rules: {
			  author: {
			    required: true,
			    minlength: 2
			  },
			  email: {
			    required: true,
			    email: true
			  },
			  comment: {
			    required: true,
			  }
			},
			messages: {
			  author: "Ô họ và tên là bắt buộc.",
			  email: "Ô Email là bắt buộc.",
			  comment: "Ô bình luận là bắt buộc."
			},
			errorElement: "div",
			errorPlacement: function(error, element) {
			  element.after(error);
			}
		});
	});
	</script>
	<?php
	}
}
add_action('wp_footer', 'comment_validation_init');

// Remove Parent Category from Child Category URL
add_filter('term_link', 'devvn_no_category_parents', 1000, 3);
function devvn_no_category_parents($url, $term, $taxonomy) {
    if($taxonomy == 'category'){
        $term_nicename = $term->slug;
        $url = trailingslashit(get_option( 'home' )) . user_trailingslashit( $term_nicename, 'category' );
    }
    return $url;
}
// Rewrite url mới
function devvn_no_category_parents_rewrite_rules($flash = false) {
    $terms = get_terms( array(
        'taxonomy' => 'category',
        'post_type' => 'post',
        'hide_empty' => false,
    ));
    if($terms && !is_wp_error($terms)){
        foreach ($terms as $term){
            $term_slug = $term->slug;
            add_rewrite_rule($term_slug.'/?$', 'index.php?category_name='.$term_slug,'top');
            add_rewrite_rule($term_slug.'/page/([0-9]{1,})/?$', 'index.php?category_name='.$term_slug.'&paged=$matches[1]','top');
            add_rewrite_rule($term_slug.'/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$', 'index.php?category_name='.$term_slug.'&feed=$matches[1]','top');
        }
    }
    if ($flash == true)
        flush_rewrite_rules(false);
}
add_action('init', 'devvn_no_category_parents_rewrite_rules');
 
/*Sửa lỗi khi tạo mới category bị 404*/
function devvn_new_category_edit_success() {
    devvn_no_category_parents_rewrite_rules(true);
}
add_action('created_category','devvn_new_category_edit_success');
add_action('edited_category','devvn_new_category_edit_success');
add_action('delete_category','devvn_new_category_edit_success');

add_action('init', function() {
  pll_register_string('mytheme-broker', 'Broker');
  pll_register_string('mytheme-rating', 'Rating');
  pll_register_string('mytheme-deposit', 'Min. Deposit');
  pll_register_string('mytheme-demo', 'Free Demo');
  pll_register_string('mytheme-opaccount', 'Open Account');
  pll_register_string('mytheme-review', 'Review');
  pll_register_string('mytheme-SUFree', 'Sign Up FREE!');
  pll_register_string('mytheme-Yes', 'Yes');
  pll_register_string('mytheme-Free', 'Yes, FREE!');
  pll_register_string('mytheme-acfree', 'Demo Account');
  pll_register_string('mytheme-visit', 'Visit site');
  pll_register_string('mytheme-pview', 'Port View');
  pll_register_string('mytheme-top1', 'TOP FOREX BROKERS 2020');
  pll_register_string('mytheme-top2', 'TOP BINARY BROKERS 2020');
});
function mu_hide_plugins_network( $plugins ) {
// let's hide akismet
if( in_array( 'advanced-custom-fields-pro/acf.php', array_keys( $plugins ) ) ) {
unset( $plugins['advanced-custom-fields-pro/acf.php'] );
}
if( in_array( 'kk-star-ratings/index.php', array_keys( $plugins ) ) ) {
unset( $plugins['kk-star-ratings/index.php'] );
}
if( in_array( 'polylang/polylang.php', array_keys( $plugins ) ) ) {
unset( $plugins['polylang/polylang.php'] );
}
return $plugins;
}
add_filter( 'all_plugins', 'mu_hide_plugins_network' );

function vnkings_admin_menus() {
   remove_menu_page( 'plugins.php' ); // Menu Plugins
	remove_menu_page( 'edit.php?post_type=acf-field-group' );
}
add_action( 'admin_menu', 'vnkings_admin_menus' );

function show_top_forex($id,$content = null){ 
	ob_start();
	$lg = pll_current_language();
	extract(shortcode_atts( 
    array(
        'id'   => '103',
        'number' => '10'
    ),$id));
	 $nb = $number;
	if($id == 103):
			$name = 'top_forex';
			$names = 'forexs_'.$lg.'';
	elseif ($id == 104):
			$name = 'top_forex_binary';
			$names = 'forexs_'.$lg.'_binary';
	endif;
	?>
	<?php ob_start(); ?>
	<div class="show-top">
		<ul style="padding: 0" class="show-mb hidden-pc">
				<?php if (have_rows($name,'option')): ?>
				<?php while ( have_rows($name,'option')) : the_row(); //
				if(have_rows($names,'option')):
					?>
					<?php
					 while ( have_rows($names,'option')) : the_row(); // loop through the repeater fields ?>
				<?php // set up post object
				$post_object = get_sub_field('view_'.$names.'');
				if( $post_object ) :
				global $post;
				$post = $post_object;
				setup_postdata($post);?>
				<li class="itme-li-mb">
									<div class="forex-left">
										<a href="<?php the_permalink(); ?>">	
											<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
											<div class="broker-rating" style="text-align: center;">
											<div style="display: none;" class="kk-star-ratings kksr-disabled">
								<div class="kksr-stars ">
									<div class="kksr-stars-inactive">
										<?php for($i = 1; $i < 6; $i++){?>
											<div class="kksr-star">
												<div class="kksr-icon" style="width: 13.5px; height: 13.5px;"></div>
											</div>
										<?php } ?>
									</div>
									<?php $star = get_field('star');?>
									<div class="kksr-stars-active" style="width: <?= $star * 20 ?>%;">
										
										<?php for($i = 1; $i < 6; $i++){?>
											<div class="kksr-star">
												<div class="kksr-icon" style="width: 13.5px; height: 13.5px;"></div>
											</div>
										<?php } ?>
									</div>

								</div>
							</div>
											</div>
											</a>
									</div>
									<div class="forex-right">
											<small><?php pll_e('Min. Deposit');?></small><br>
											<strong><?php echo number_format(get_field('money_minimum'),0,",","."); ?>$</strong><br>
											<small><?php pll_e('Free Demo');?></small><br><strong><?php if(get_field('tk_demo')):echo pll_e('Yes, FREE!');
										else: echo pll_e('Yes') ;endif;?></strong>
										<br>
									</div>
									<div class="forex-bt">
											<a class="btn blues" target="_blank" href="<?php the_field('end_page') ?>"><?php pll_e('Sign Up FREE!');?></a>
										<a class="btn" href="<?php the_permalink(); ?>"><?php pll_e('Review');?></a>
									</div>
							</li>
			<?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
				<?php endif; ?> 
				<?php endwhile; ?>
				<?php else: ?>
					
					<?php
					$args = array(
					'post_type' => 'forex',
					'posts_per_page'   => $nb,
					'post_status'   => 'publish',
					'suppress_filters' => true,
					'tax_query' => array(
					    array(
					        'taxonomy' => 'forex_category', //double check your taxonomy name in you dd 
					        'field'    => 'id',
					        'terms'    => $id,
					    ),
					   ),
					);
					$the_query = new WP_Query( $args );

					// The Loop
					if ( $the_query->have_posts() ) {
						while ( $the_query->have_posts() ) {
							$the_query->the_post();
					     ?>
					     <li class="itme-li-mb">
									<div class="forex-left">
										<a href="<?php the_permalink(); ?>">	
											<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
											<div class="broker-rating" style="text-align: center;">
											<div style="display: none;" class="kk-star-ratings kksr-disabled">
								<div class="kksr-stars ">
									<div class="kksr-stars-inactive">
										<?php for($i = 1; $i < 6; $i++){?>
											<div class="kksr-star">
												<div class="kksr-icon" style="width: 13.5px; height: 13.5px;"></div>
											</div>
										<?php } ?>
									</div>
									<?php $star = get_field('star');?>
									<div class="kksr-stars-active" style="width: <?= $star * 20 ?>%;">
										
										<?php for($i = 1; $i < 6; $i++){?>
											<div class="kksr-star">
												<div class="kksr-icon" style="width: 13.5px; height: 13.5px;"></div>
											</div>
										<?php } ?>
									</div>

								</div>
							</div>
											</div>
											</a>
									</div>
									<div class="forex-right">
											<small><?php pll_e('Min. Deposit');?></small><br>
											<strong><?php echo number_format(get_field('money_minimum'),0,",","."); ?>$</strong><br>
											<small><?php pll_e('Free Demo');?></small><br><strong><?php if(get_field('tk_demo')):echo pll_e('Yes, FREE!');
										else: echo pll_e('Yes') ;endif;?></strong>
										<br>
									</div>
									<div class="forex-bt">
											<a class="btn blues" target="_blank" href="<?php the_field('end_page') ?>"><?php pll_e('Sign Up FREE!');?></a>
										<a class="btn" href="<?php the_permalink(); ?>"><?php pll_e('Review');?></a>
									</div>
							</li>
					     <?php
						} // end while
					} // endif

					// Reset Post Data
					wp_reset_postdata();
					?>
				<?php endif; ?> 
				<?php endwhile; ?>
				<?php endif ?>
		</ul>

		<div class="scroll-table clearfix hidden-mobile">
			<table>
				<tbody>
					<tr>
						<th class="first">
							<?php pll_e('Broker');?>
						</th>
						<th class="table-rating">
							<?php pll_e('Rating');?>
						</th>
						<th><?php pll_e('Min. Deposit');?></th>
						<th><?php pll_e('Free Demo');?></th>
						<th><?php pll_e('Open Account');?></th>
						<th><?php pll_e('Review');?></th>
					</tr>
				<?php if (have_rows($name,'option')): ?>
				<?php while ( have_rows($name,'option')) : the_row(); //
				if(have_rows($names,'option')):
					?>
					<?php
					 while ( have_rows($names,'option')) : the_row(); // loop through the repeater fields ?>
				<?php // set up post object
				$post_object = get_sub_field('view_'.$names.'');
				if( $post_object ) :
				global $post;
				$post = $post_object;
				setup_postdata($post);?>
				<tr>
					<td class="first">
						<a href="<?php the_permalink(); ?>">	
							<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
						</a>
					</td>
					<td>
						<div class="broker-rating">
							<div style="display: none;" class="kk-star-ratings kksr-disabled">
								<div class="kksr-stars ">
									<div class="kksr-stars-inactive">
										<?php for($i = 1; $i < 6; $i++){?>
											<div class="kksr-star">
												<div class="kksr-icon" style="width: 13.5px; height: 13.5px;"></div>
											</div>
										<?php } ?>
									</div>
									<?php $star = get_field('star');?>
									<div class="kksr-stars-active" style="width: <?= $star * 20 ?>%;">
										
										<?php for($i = 1; $i < 6; $i++){?>
											<div class="kksr-star">
												<div class="kksr-icon" style="width: 13.5px; height: 13.5px;"></div>
											</div>
										<?php } ?>
									</div>

								</div>
							</div>
						</div>
					</td>
					<td>
						<?php echo number_format(get_field('money_minimum'),0,",","."); ?>$
					</td>
					<td>
						<?php if(get_field('tk_demo')):echo pll_e('Yes, FREE!');
							else: echo pll_e('Yes') ;endif;?>
						</td>
						<td>
							<a class="btn blues" target="_blank" href="<?php the_field('end_page') ?>"><?php pll_e('Sign Up FREE!');?></a>
						</td>
						<td class="last">
							<a class="btn" href="<?php the_permalink(); ?>"><?php pll_e('Review');?></a>
						</td>
					</tr>
				
				<?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
				<?php else: ?>
				<?php endif; ?> 
				<?php endwhile; ?>
				<?php else: ?>
					
					<?php
					$args = array(
					'post_type' => 'forex',
					'posts_per_page'   => $nb,
					'post_status'   => 'publish',
					'suppress_filters' => true,
					'tax_query' => array(
					    array(
					        'taxonomy' => 'forex_category', //double check your taxonomy name in you dd 
					        'field'    => 'id',
					        'terms'    => $id,
					    ),
					   ),
					);
					$the_query = new WP_Query( $args );

					// The Loop
					if ( $the_query->have_posts() ) {
						while ( $the_query->have_posts() ) {
							$the_query->the_post();
					     ?>
					     <tr>
								<td class="first">
									<a href="<?php the_permalink(); ?>">	
										<img src="<?php echo hk_get_thumb(get_the_id(), 125, 40); ?>" alt="<?php the_title(); ?>">
									</a>
								</td>
								<td>
									<div class="broker-rating">
										<div style="display: none;" class="kk-star-ratings kksr-disabled">
								<div class="kksr-stars ">
									<div class="kksr-stars-inactive">
										<?php for($i = 1; $i < 6; $i++){?>
											<div class="kksr-star">
												<div class="kksr-icon" style="width: 13.5px; height: 13.5px;"></div>
											</div>
										<?php } ?>
									</div>
									<?php $star = get_field('star');?>
									<div class="kksr-stars-active" style="width: <?= $star * 20 ?>%;">
										
										<?php for($i = 1; $i < 6; $i++){?>
											<div class="kksr-star">
												<div class="kksr-icon" style="width: 13.5px; height: 13.5px;"></div>
											</div>
										<?php } ?>
									</div>

								</div>
							</div>
									</div>
								</td>
								<td>
									<?php echo number_format(get_field('money_minimum'),0,",","."); ?>$
								</td>
									<td>
								<?php if(get_field('tk_demo')):echo pll_e('Yes, FREE!');
									else: echo pll_e('Yes') ;endif;?>
								</td>
								<td>
									<a class="btn blues" target="_blank" href="<?php the_field('end_page') ?>"><?php pll_e('Sign Up FREE!');?></a>
								</td>
								<td class="last">
									<a class="btn" href="<?php the_permalink(); ?>"><?php pll_e('Review');?></a>
								</td>
								</tr>
					     <?php
						} // end while
					} // endif

					// Reset Post Data
					wp_reset_postdata();
					?>
				<?php endif; ?> 
				<?php endwhile; ?>
				<?php endif ?>
					
					</tbody>
				</table>
			</div>
	</div>
	<?php $list_post = ob_get_contents();  ?>
	<?php ob_end_clean(); ?>
	<?php return $list_post; ?>
<?php }
add_shortcode( 'show_top', 'show_top_forex');
if ( ! defined( 'POLYLANG_VERSION' ) || version_compare( POLYLANG_VERSION, '1.7', '=<' ) || version_compare( $GLOBALS[ 'wp_version' ], '4.0', '=<' ) ) {
	add_action( 'admin_notices', 'polylang_slug_admin_notices' );
	return;
}

/**
 * Minimum version admin notice.
 *
 * @since 0.2.0
 */
function polylang_slug_admin_notices() {
	echo '<div class="error"><p>' . __( 'Polylang Slug requires Polylang v1.7 and WordPress 4.0', 'polylang-slug') . '</p></div>';
}

/**
 * Checks if the slug is unique within language.
 *
 * @since 0.1.0
 *
 * @global  wpdb  $wpdb        WordPress database abstraction object.
 *
 * @param  string $slug        The desired slug (post_name).
 * @param  int    $post_ID     Post ID.
 * @param  string $post_status No uniqueness checks are made if the post is still draft or pending.
 * @param  string $post_type   Post type.
 * @param  int    $post_parent Post parent ID.
 *
 * @return string              Unique slug for the post within language, based on $post_name (with a -1, -2, etc. suffix).
 */
function polylang_slug_unique_slug_in_language( $slug, $post_ID, $post_status, $post_type, $post_parent, $original_slug ){

	// Return slug if it was not changed.
	if ( $original_slug === $slug ) {
		return $slug;
	}

	global $wpdb;

	// Get language of a post
	$lang = pll_get_post_language( $post_ID );
	$options = get_option( 'polylang' );

	// return the slug if Polylang does not return post language or has incompatable redirect setting or is not translated post type.
	if ( empty( $lang ) || 0 === $options['force_lang'] || ! pll_is_translated_post_type( $post_type ) ) {
		return $slug;
	}

	// " INNER JOIN $wpdb->term_relationships AS pll_tr ON pll_tr.object_id = ID".
	$join_clause  = polylang_slug_model_post_join_clause();
	// " AND pll_tr.term_taxonomy_id IN (" . implode(',', $languages) . ")".
	$where_clause = polylang_slug_model_post_where_clause( $lang );

	// Polylang does not translate attachements - skip if it is one.
	// @TODO Recheck this with the Polylang settings
	if ( 'attachment' == $post_type ) {

		// Attachment slugs must be unique across all types.
		$check_sql = "SELECT post_name FROM $wpdb->posts $join_clause WHERE post_name = %s AND ID != %d $where_clause LIMIT 1";
		$post_name_check = $wpdb->get_var( $wpdb->prepare( $check_sql, $original_slug, $post_ID ) );

	} elseif ( is_post_type_hierarchical( $post_type ) ) {

		// Page slugs must be unique within their own trees. Pages are in a separate
		// namespace than posts so page slugs are allowed to overlap post slugs.
		$check_sql = "SELECT ID FROM $wpdb->posts $join_clause WHERE post_name = %s AND post_type IN ( %s, 'attachment' ) AND ID != %d AND post_parent = %d $where_clause LIMIT 1";
		$post_name_check = $wpdb->get_var( $wpdb->prepare( $check_sql, $original_slug, $post_type, $post_ID, $post_parent ) );

	} else {

		// Post slugs must be unique across all posts.
		$check_sql = "SELECT post_name FROM $wpdb->posts $join_clause WHERE post_name = %s AND post_type = %s AND ID != %d $where_clause LIMIT 1";
		$post_name_check = $wpdb->get_var( $wpdb->prepare( $check_sql, $original_slug, $post_type, $post_ID ) );

	}

	if ( ! $post_name_check ) {
		return $original_slug;
	} else {
		return $slug;
	}

}
add_filter( 'wp_unique_post_slug', 'polylang_slug_unique_slug_in_language', 10, 6 );

/**
 * Modify the sql query to include checks for the current language.
 *
 * @since 0.1.0
 *
 * @global wpdb   $wpdb  WordPress database abstraction object.
 *
 * @param  string $query Database query.
 *
 * @return string        The modified query.
 */
function polylang_slug_filter_queries( $query ) {
	global $wpdb;

	// Query for posts page, pages, attachments and hierarchical CPT. This is the only possible place to make the change. The SQL query is set in get_page_by_path()
	$is_pages_sql = preg_match(
		"#SELECT ID, post_name, post_parent, post_type FROM {$wpdb->posts} .*#",
		polylang_slug_standardize_query( $query ),
		$matches
	);

	if ( ! $is_pages_sql ) {
		return $query;
	}

	// Check if should contine. Don't add $query polylang_slug_should_run() as $query is a SQL query.
	if ( ! polylang_slug_should_run() ) {
		return $query;
	}

	$lang = pll_current_language();
	// " INNER JOIN $wpdb->term_relationships AS pll_tr ON pll_tr.object_id = ID".
	$join_clause  = polylang_slug_model_post_join_clause();
	// " AND pll_tr.term_taxonomy_id IN (" . implode(',', $languages) . ")".
	$where_clause = polylang_slug_model_post_where_clause( $lang );

	$query = preg_match(
		"#(SELECT .* (?=FROM))(FROM .* (?=WHERE))(?:(WHERE .*(?=ORDER))|(WHERE .*$))(.*)#",
		polylang_slug_standardize_query( $query ),
		$matches
	);

	// Reindex array numerically $matches[3] and $matches[4] are not added together thus leaving a gap. With this $matches[5] moves up to $matches[4]
	$matches = array_values( $matches );

	// SELECT, FROM, INNER JOIN, WHERE, WHERE CLAUSE (additional), ORBER BY (if included)
	$sql_query = $matches[1] . $matches[2] . $join_clause . $matches[3] . $where_clause . $matches[4];

	/**
	 * Disable front end query modification.
	 *
	 * Allows disabling front end query modification if not needed.
	 *
	 * @since 0.2.0
	 *
	 * @param string $sql_query    Database query.
	 * @param array  $matches {
	 *     @type string $matches[1] SELECT SQL Query.
	 *     @type string $matches[2] FROM SQL Query.
	 *     @type string $matches[3] WHERE SQL Query.
	 *     @type string $matches[4] End of SQL Query (Possibly ORDER BY).
	 * }
	 * @param string $join_clause  INNER JOIN Polylang clause.
	 * @param string $where_clause Additional Polylang WHERE clause.
	 */
	$query = apply_filters( 'polylang_slug_sql_query', $sql_query, $matches, $join_clause, $where_clause );


	return $query;
}
add_filter( 'query', 'polylang_slug_filter_queries' );

/**
 * Extend the WHERE clause of the query.
 *
 * This allows the query to return only the posts of the current language
 *
 * @since 0.1.0
 *
 * @param  string   $where The WHERE clause of the query.
 * @param  WP_Query $query The WP_Query instance (passed by reference).
 *
 * @return string          The WHERE clause of the query.
 */
function polylang_slug_posts_where_filter( $where, $query ) {
	// Check if should contine.
	if ( ! polylang_slug_should_run( $query ) ) {
		return $where;
	}

	$lang = empty( $query->query['lang'] ) ? pll_current_language() : $query->query['lang'];

	// " AND pll_tr.term_taxonomy_id IN (" . implode(',', $languages) . ")"
	$where .= polylang_slug_model_post_where_clause( $lang  );

	return $where;
}
// add_filter( 'posts_where', 'polylang_slug_posts_where_filter', 10, 2 );

/**
 * Extend the JOIN clause of the query.
 *
 * This allows the query to return only the posts of the current language
 *
 * @since 0.1.0
 *
 * @param  string   $join  The JOIN clause of the query.
 * @param  WP_Query $query The WP_Query instance (passed by reference).
 *
 * @return string          The JOIN clause of the query.
 */
function polylang_slug_posts_join_filter( $join, $query ) {

	// Check if should contine.
	if ( ! polylang_slug_should_run( $query ) ) {
		return $join;
	}

	// " INNER JOIN $wpdb->term_relationships AS pll_tr ON pll_tr.object_id = ID".
	$join .= polylang_slug_model_post_join_clause();

	return $join;
}
// add_filter( 'posts_join', 'polylang_slug_posts_join_filter', 10, 2 );

/**
 * Check if the query needs to be adapted.
 *
 * @since 0.2.0
 *
 * @param  WP_Query $query The WP_Query instance (passed by reference).
 *
 * @return bool
 */
function polylang_slug_should_run( $query = '' ) {

	/**
	 * Disable front end query modification.
	 *
	 * Allows disabling front end query modification if not needed.
	 *
	 * @since 0.2.0
	 *
	 * @param bool     false  Not disabling run.
	 * @param WP_Query $query The WP_Query instance (passed by reference).
	 */
	
	// Do not run in admin or if Polylang is disabled
	$disable = apply_filters( 'polylang_slug_disable', false, $query ); 
	if ( is_admin() || ! function_exists( 'pll_current_language' ) || $disable ) {
		return false;
	}
	// The lang query should be defined if the URL contains the language
	$lang          = empty( $query->query['lang'] ) ? pll_current_language() : $query->query['lang'];
	// Checks if the post type is translated when doing a custom query with the post type defined
	$is_translated = ! empty( $query->query['post_type'] ) && ! pll_is_translated_post_type( $query->query['post_type'] );

	if ( empty( $lang ) || $is_translated ) {
		return false;
	} else {
		return true;
	}
}

/**
 * Standardize the query.
 *
 * This makes the standardized and simpler to run regex on
 *
 * @since 0.2.0
 *
 * @param  string $query Database query.
 *
 * @return string        The standardized query.
 */
function polylang_slug_standardize_query( $query ) {
	// Strip tabs, newlines and multiple spaces.
	$query = str_replace(
		array( "\t", " \n", "\n", " \r", "\r", "   ", "  " ),
		array( '', ' ', ' ', ' ', ' ', ' ', ' ' ),
		$query
	);
	return trim( $query );
}

/**
 * Fetch the polylang join clause.
 *
 * @since 0.2.0
 *
 * @return string
 */
function polylang_slug_model_post_join_clause() {
	if ( function_exists( 'PLL' ) ) {
		return PLL()->model->post->join_clause();
	} elseif ( array_key_exists( 'polylang', $GLOBALS ) ) {
		global $polylang;
		return $polylang->model->join_clause( 'post' );
	} else {
		return;
	}
}

/**
 * Fetch the polylang where clause.
 *
 * @since 0.2.0
 *
 * @param  string $lang The current language slug.
 *
 * @return string
 */
function polylang_slug_model_post_where_clause( $lang = '' ) {
	if ( function_exists( 'PLL' ) ) {
		return PLL()->model->post->where_clause( $lang );
	} elseif ( array_key_exists( 'polylang', $GLOBALS ) ) {
		global $polylang;
		return $polylang->model->where_clause( $lang, 'post' );
	} else {
		return;
	}
}
