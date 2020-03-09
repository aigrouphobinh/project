<?php
// include_once(get_template_directory().'/widget/widget-newpost.php');
include_once(get_template_directory().'/widget/widget-toppost.php');
class Post_Category_widget extends WP_Widget {
  	function Post_Category_widget() {
	    $widget_ops = array( 'classname' => 'post_category_widget', 'description' => 'Hiển thị bài viết theo danh mục Home và Sidebar' );
	    $control_ops = array( 'id_base' => 'post_category_widget' ); 
	    $this->WP_Widget( 'Post_Category_widget', 'List menu', $widget_ops, $control_ops );
  	}
    function widget($args, $instance) {
      	extract( $args );
      	$title      = $instance['title'];
		if ( !defined('ABSPATH') )
  		die('-1');
  		echo $before_widget; 
  		?>
  		<ul>

  		<?php 
  			if($title != ""){
  			 echo "<li>";
  			echo "<strong>";
  			echo $title;
  			echo "</strong>";
  			echo '</li>';
  		}
  		if( have_rows('list_menu','widget_' .$widget_id)):
			  while ( have_rows('list_menu','widget_' .$widget_id) ) : the_row();
			    ?>
			    <li class="ft-item"><a href="<?php the_sub_field('url_menu','widget_' .$widget_id) ?>"><?php the_sub_field('title_menu','widget_' .$widget_id) ?></a></li>
			    <?php
			  endwhile;
			else :
			endif;
  		 ?>
  		</ul>
  		<?php
  		//
  		echo $after_widget;
  	} 
    function update($new_instance, $old_instance) {
      	$instance['title'] 	= strip_tags($new_instance['title']);
      	return $instance;
    }
  	function form($instance) {
  		$defaults = array(
		    'title' => 'Tiêu đề',
		);
  		$instance = wp_parse_args((array) $instance, $defaults ); ?>
	    <p>
	      	<label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Nhập tiêu đề: '); ?></label>
	      	<input class="widefat" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" type="text" value="<?php echo $instance['title']; ?>"  />
	    </p>
    <?php }
}
add_action('widgets_init', create_function('', 'return register_widget("Post_Category_widget");'));