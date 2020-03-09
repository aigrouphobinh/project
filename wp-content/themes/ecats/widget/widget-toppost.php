<?php
class Posttop_Category_widget extends WP_Widget {
  	function Posttop_Category_widget() {
	    $widget_ops = array( 'classname' => 'posttop_category_widget', 'description' => 'Hiển thị Top Menu' );
	    $control_ops = array( 'id_base' => 'posttop_category_widget' ); 
	    $this->WP_Widget( 'Posttop_Category_widget', 'Menu icon', $widget_ops, $control_ops );
  	}
    function widget($args, $instance) {
      	extract( $args );
      	$title      = $instance['title'];
      	$num        = $instance['num'];
		if ( !defined('ABSPATH') )
  		die('-1');
  		echo $before_widget; 
  		if( have_rows('menu_icon','widget_' .$widget_id)):
			  while ( have_rows('menu_icon','widget_' .$widget_id) ) : the_row();
			    ?>
			    <a href="<?php the_sub_field('url_menu_icon','widget_' .$widget_id) ?>" class="slider-item clearfix">
						<span class="icon slider-icon-reviews" style="background-image: url(<?php the_sub_field('icons_menu','widget_' .$widget_id) ?>)"></span>
						<span class="txt"><?php the_sub_field('title_icon','widget_' .$widget_id) ?></span>
					</a>
			    <a href=""><?php the_sub_field('title_menu','widget_' .$widget_id) ?></a>
			    <?php
			  endwhile;
			else :
			endif;
  		 ?>
  	
  	<?php echo $after_widget;
  	} 
  function update($new_instance, $old_instance) {
      	return $instance;
    }
  	function form($instance) {
  		
  		$instance = wp_parse_args((array) $instance, $defaults ); ?>
	   
    <?php }
}
add_action('widgets_init', create_function('', 'return register_widget("Posttop_Category_widget");'));