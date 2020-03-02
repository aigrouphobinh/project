<?php
include_once(get_template_directory().'/widget/widget-newpost.php');
include_once(get_template_directory().'/widget/widget-toppost.php');
class Post_Category_widget extends WP_Widget {
  	function Post_Category_widget() {
	    $widget_ops = array( 'classname' => 'post_category_widget', 'description' => 'Hiển thị bài viết theo danh mục Home và Sidebar' );
	    $control_ops = array( 'id_base' => 'post_category_widget' ); 
	    $this->WP_Widget( 'Post_Category_widget', '+HK - Category Post (ST1)', $widget_ops, $control_ops );
  	}
    function widget($args, $instance) {
      	extract( $args );
      	$title      = $instance['title'];
      	$num        = $instance['num'];
      	$cat_id     = $instance['cat_id'];
		if ( !defined('ABSPATH') )
  		die('-1');
  		echo $before_widget; 
  		echo $before_title.$title.$after_title;
  		//
  		echo $after_widget;
  	} 
    function update($new_instance, $old_instance) {
      	$instance['title'] 	= strip_tags($new_instance['title']);
      	$instance['num']   	= $new_instance['num'];
      	$instance['cat_id']	= $new_instance['cat_id'];
      	return $instance;
    }
  	function form($instance) {
  		$defaults = array(
		    'title' => 'Tiêu đề',
		    'num' => 5,
		    'cat_id' => 1,
		);
  		$instance = wp_parse_args((array) $instance, $defaults ); ?>
	    <p>
	      	<label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Nhập tiêu đề: '); ?></label>
	      	<input class="widefat" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" type="text" value="<?php echo $instance['title']; ?>"  />
	    </p>
	    <p>
	      	<label for="<?php echo $this->get_field_id('num'); ?>"><?php _e('Nhập số lượng bài viết : '); ?></label>
	      	<input class="widefat" id="<?php echo $this->get_field_id('num'); ?>" name="<?php echo $this->get_field_name('num'); ?>" type="number" value="<?php echo $instance['num']; ?>" />
	    </p>
	    <p class="cate-kira">
	      	<label for="<?php echo $this->get_field_id('cat_id'); ?>"><?php _e('Chọn chuyên mục: '); ?></label>
		    <?php
		        wp_dropdown_categories( array(
		          	'orderby'   	=> 'count',
		          	'hide_empty' 	=> false,
		          	'hierarchical' 	=> 1,
		          	'name'       	=> $this->get_field_name( 'cat_id' ),
		          	'id'         	=> 'recent_posts_category',
		          	'class'      	=> 'widefat',
		          	'selected'   	=> $instance['cat_id']
		        ));
		    ?>
	    </p>
    <?php }
}
add_action('widgets_init', create_function('', 'return register_widget("Post_Category_widget");'));