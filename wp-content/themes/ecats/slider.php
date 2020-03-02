<div class="slider">
	<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
	  	<div class="carousel-inner">
		    <?php $getposts = new WP_query(); $getposts->query('post_status=publish&showposts=1&post_type=slider'); ?>
		    <?php global $wp_query; $wp_query->in_the_loop = true; ?>
		    <?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
		    	<div class="carousel-item active">
			      	<?php echo get_the_post_thumbnail( $post_id, 'full', array( 'class' =>'thumnail') ); ?>
			    </div>
		    <?php endwhile; wp_reset_postdata(); ?>
		    <?php $getposts = new WP_query(); $getposts->query('post_status=publish&showposts=10&post_type=slider&offset=1'); ?>
		    <?php global $wp_query; $wp_query->in_the_loop = true; ?>
		    <?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
		    	<div class="carousel-item">
			      	<?php echo get_the_post_thumbnail( $post_id, 'full', array( 'class' =>'thumnail') ); ?>
			    </div>
		    <?php endwhile; wp_reset_postdata(); ?>
	  	</div>
		<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		</a>
	</div>
	<div class="box-search">
		<div class="container">
			<div class="content-search">
				<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
				  	<li class="nav-item">
				    	<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true"><i class="fa fa-umbrella"></i> Tìm tour</a>
				  	</li>
				  	<li class="nav-item">
				    	<a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false"><i class="fa fa-bed"></i> Tìm khách sạn</a>
				  	</li>
				  	<li class="nav-item">
				    	<a class="nav-link" id="pills-car-tab" data-toggle="pill" href="#car-profile" role="tab" aria-controls="pills-profile" aria-selected="false"><i class="fa fa-car"></i> Xe du lịch</a>
				  	</li>
				</ul>
				<div class="tab-content" id="pills-tabContent">
			  		<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
			  			<form action="<?php bloginfo( 'url' ); ?>/" method="GET" role="form">
			  				<input type="hidden" name="post_type" value="tour">
			  				<div class="row">
			  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
			  						<input type="text" class="form-control" id="" name="s" placeholder="Nhập tên tour">
			  					</div>
			  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-8">
			  						<div class="row">
			  							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
			  								<?php $args = array(
												'show_option_all'    => '',
												'show_option_none' 	 => __( 'Địa điểm' ),
												'option_none_value'  => '',
												'orderby'            => 'ID',
												'order'              => 'ASC',
												'show_count'         => 0,
												'hide_empty'         => 0,
												'child_of'           => 0,
												'include'            => '',
												'echo'               => 1,
												'selected'           => 0,
												'hierarchical'       => 1,
												'name'               => 'dia-diem-tour',
												'id'                 => 'dia-diem-tour',
												'class'              => 'form-control',
												'depth'              => 0,
												'tab_index'          => 0,
												'taxonomy'           => 'dia-diem-tour',
												'hide_if_empty'      => false,
												'value_field'	     => 'slug',
											); ?>
											<?php wp_dropdown_categories( $args ); ?> 
			  							</div>
			  							<div class="col-xs-12 col-sm-12 col-md-3 col-lg-4">
			  								<?php $args = array(
												'show_option_all'    => '',
												'show_option_none' 	 => __( 'Khoảng giá' ),
												'option_none_value'  => '',
												'orderby'            => 'ID',
												'order'              => 'ASC',
												'show_count'         => 0,
												'hide_empty'         => 0,
												'child_of'           => 0,
												'include'            => '',
												'echo'               => 1,
												'selected'           => 0,
												'hierarchical'       => 1,
												'name'               => 'khoang-gia',
												'id'                 => 'khoang-gia',
												'class'              => 'form-control',
												'depth'              => 0,
												'tab_index'          => 0,
												'taxonomy'           => 'khoang-gia',
												'hide_if_empty'      => false,
												'value_field'	     => 'slug',
											); ?>
											<?php wp_dropdown_categories( $args ); ?>
			  							</div>
			  							<div class="col-xs-12 col-sm-12 col-md-3 col-lg-4">
			  								<button type="submit" class="button-search">Tìm tour ngay</button>
			  							</div>
			  						</div>
			  					</div>
			  				</div>
			  			</form>
			  		</div>
			  		<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
			  			<form action="<?php bloginfo( 'url' ); ?>/" method="GET" role="form">
			  				<input type="hidden" name="post_type" value="khach-san">
			  				<div class="row">
			  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
			  						<input type="text" class="form-control" name="s" id="" placeholder="Nhập tên khách sạn">
			  					</div>
			  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-8">
			  						<div class="row">
			  							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
			  								<?php $args = array(
												'show_option_all'    => '',
												'show_option_none' 	 => __( 'Địa điểm' ),
												'option_none_value'  => '',
												'orderby'            => 'ID',
												'order'              => 'ASC',
												'show_count'         => 0,
												'hide_empty'         => 0,
												'child_of'           => 0,
												'include'            => '',
												'echo'               => 1,
												'selected'           => 0,
												'hierarchical'       => 1,
												'name'               => 'dia-diem',
												'id'                 => 'dia-diem',
												'class'              => 'form-control',
												'depth'              => 0,
												'tab_index'          => 0,
												'taxonomy'           => 'dia-diem',
												'hide_if_empty'      => false,
												'value_field'	     => 'slug',
											); ?>
											<?php wp_dropdown_categories( $args ); ?>
			  							</div>
			  							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
			  								<?php $args = array(
												'show_option_all'    => '',
												'show_option_none' 	 => __( 'Hạng sao' ),
												'option_none_value'  => '',
												'orderby'            => 'ID',
												'order'              => 'ASC',
												'show_count'         => 0,
												'hide_empty'         => 0,
												'child_of'           => 0,
												'include'            => '',
												'echo'               => 1,
												'selected'           => 0,
												'hierarchical'       => 1,
												'name'               => 'hang-sao',
												'id'                 => 'hang-sao',
												'class'              => 'form-control',
												'depth'              => 0,
												'tab_index'          => 0,
												'taxonomy'           => 'hang-sao',
												'hide_if_empty'      => false,
												'value_field'	     => 'slug',
											); ?>
											<?php wp_dropdown_categories( $args ); ?>
			  							</div>
			  							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
			  								<button type="submit" class="button-search">Tìm Khách sạn</button>
			  							</div>
			  						</div>
			  					</div>
			  				</div>
			  			</form>
			  		</div>
			  		<div class="tab-pane fade" id="car-profile" role="tabpanel" aria-labelledby="car-profile-tab">
			  			<form action="<?php bloginfo( 'url' ); ?>/" method="GET" role="form">
			  				<input type="hidden" name="post_type" value="thue-xe">
			  				<div class="row">
			  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
			  						<input type="text" class="form-control" name="s" id="" placeholder="Nhập tên xe">
			  					</div>
			  					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-8">
			  						<div class="row">
			  							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
			  								<?php $args = array(
												'show_option_all'    => '',
												'show_option_none' 	 => __( 'Danh mục' ),
												'option_none_value'  => '',
												'orderby'            => 'ID',
												'order'              => 'ASC',
												'show_count'         => 0,
												'hide_empty'         => 0,
												'child_of'           => 0,
												'include'            => '',
												'echo'               => 1,
												'selected'           => 0,
												'hierarchical'       => 1,
												'name'               => 'danh-muc-xe',
												'id'                 => 'danh-muc-xe',
												'class'              => 'form-control',
												'depth'              => 0,
												'tab_index'          => 0,
												'taxonomy'           => 'danh-muc-xe',
												'hide_if_empty'      => false,
												'value_field'	     => 'slug',
											); ?>
											<?php wp_dropdown_categories( $args ); ?>
			  							</div>
			  							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
			  								<?php $args = array(
												'show_option_all'    => '',
												'show_option_none' 	 => __( 'Hãng xe' ),
												'option_none_value'  => '',
												'orderby'            => 'ID',
												'order'              => 'ASC',
												'show_count'         => 0,
												'hide_empty'         => 0,
												'child_of'           => 0,
												'include'            => '',
												'echo'               => 1,
												'selected'           => 0,
												'hierarchical'       => 1,
												'name'               => 'hang-xe',
												'id'                 => 'hang-xe',
												'class'              => 'form-control',
												'depth'              => 0,
												'tab_index'          => 0,
												'taxonomy'           => 'hang-xe',
												'hide_if_empty'      => false,
												'value_field'	     => 'slug',
											); ?>
											<?php wp_dropdown_categories( $args ); ?>
			  							</div>
			  							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
			  								<button type="submit" class="button-search">Tìm xe ngay</button>
			  							</div>
			  						</div>
			  					</div>
			  				</div>
			  			</form>
			  		</div>
			  	</div>
			</div>
		</div>
	</div>
</div>