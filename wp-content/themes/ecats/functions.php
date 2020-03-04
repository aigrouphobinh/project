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
	}
	register_nav_menus(
		array(
			'main_nav' => 'Menu chính',
			'top_nav' => 'Top menu',
			'ft1_nav' => 'Footer 1 menu',
			'ft2_nav' => 'Footer 2 menu',
			'ft3_nav' => 'Footer 3 menu',
			'ft4_nav' => 'Footer 4 menu',
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
// Tạo post type slider
function forex_post_type(){
    $label = array(
        'name' => 'Forex',
        'singular_name' => 'Forex',
    );
    $args = array(
        'labels' => $label,
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
    $argss = array(
    	 'public' => true,
    	'labels' => array(
        'name' => 'Danh mục',
        'singular_name' => 'forex_category',),
    );
    register_post_type('forex', $args);
    register_taxonomy_for_object_type( 'category', 'forex' );
}
add_action('init', 'forex_post_type');

// Hiển thị slider bằng shortcode
// do_shortcode('[show_slider num="2"]'); -> Đoạn code hiển thị slider ra ngoài!
function create_shortcode_slider($args){
	if(isset($args['num'])){ ?>
		<style>
			div#carousel-id {margin-bottom: 20px;}
			div#carousel-id img{width: 100%}
			.carousel-control {background: none!important;}
		</style>
		<div id="carousel-id" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<?php
					$i = 1;
					$getposts = new WP_query(); $getposts->query('post_status=publish&showposts='.$args['num'].'&post_type=slider'); 
					global $wp_query; $wp_query->in_the_loop = true;
					while ($getposts->have_posts()) : $getposts->the_post();
					if($i == 1){ ?>
						<div class="item active">
							<?php echo get_the_post_thumbnail(get_the_id(), 'full', array( 'class' =>'thumnail') ); ?>
						</div>
					<?php } else { ?>
						<div class="item">
							<?php echo get_the_post_thumbnail(get_the_id(), 'full', array( 'class' =>'thumnail') ); ?>
						</div>
					<?php } $i++;
					endwhile; wp_reset_postdata();
				?>
			</div>
			<a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
			<a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
		</div>
	<?php }
}
add_shortcode('show_slider', 'create_shortcode_slider');
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
function hangsao($id){
	$hangsao = get_the_terms(get_the_id(), 'hang-sao'); 
	$sao = 5; 
	if($hangsao) {
		if($hangsao['0']->term_id == 39){
			$sao = 1;
		} else if($hangsao['0']->term_id == 40){
			$sao = 2;
		} else if($hangsao['0']->term_id == 41){
			$sao = 3;
		} else if($hangsao['0']->term_id == 42){
			$sao = 4;
		} else{
			$sao = 5;
		}
	} ?>
	<div class="start">
		<?php for ($i=0; $i < $sao ; $i++) { ?>
			<i class="fa fa-star" aria-hidden="true"></i>
		<?php } ?>
	</div>	

<?php }
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

