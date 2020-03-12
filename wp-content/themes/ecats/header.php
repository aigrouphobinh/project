<!DOCTYPE html>
<html lang="<?= pll_current_language() ?>">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700&amp;subset=vietnamese" rel="stylesheet">
		<!-- <link rel="stylesheet" href="<?php bloginfo( 'template_directory' ); ?>/css/main.css"> -->
		
		<link rel="stylesheet" href="<?php bloginfo( 'template_directory' ); ?>/css/style.css">
		<link rel="stylesheet" href="<?php bloginfo( 'template_directory' ); ?>/css/mainsx.css">
		<link rel="shortcut icon" type="image/png" href="<?php bloginfo( 'template_directory' ); ?>/images/favicon.png"/>
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		<?php wp_head(); ?>
	</head>
	<body>
		<div class="top-bg">
			<div class="page-container">
			<header>
				<div class="container relative">
					<header class="page-header clearfix">
						<div class="logo">
							<a href="<?php bloginfo( 'url' ); ?>"><img src="<?php the_field('ag_logo', 'option'); ?>" alt="Logo"></a>
						</div>
						<div class="hotlinks-slider clearfix">
							<a href="javascript:void(0)" class="control-left invisible"><span></span></a>
							<a href="javascript:void(0)" class="control-right invisible"><span></span></a>
							<div class="slider-overflow borders">
								<div class="slider-container">
									<?php dynamic_sidebar('menu_top'); ?>
								</div>
							</div>
						</div>
						<a href="#" class="main-nav-action"></a>
					</header>
					<div class="main-nav-container">
						<nav class="main-nav flex-menu">
							<?php wp_nav_menu( array( 'theme_location' => 'main_nav', 'container' => 'false', 'menu_id' => 'main-nav', 'menu_class' => 'main-nav') ); ?>
							<?php wp_nav_menu( array( 'theme_location' => 'top_nav', 'container' => 'false', 'menu_id' => 'main-nav', 'menu_class' => 'main-nav') ); ?>
						</nav>
						<div class="clearfix"></div>
					</div>

				</div>
			</header>