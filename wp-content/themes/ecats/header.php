<!DOCTYPE html>
<html lang="vi">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700&amp;subset=vietnamese" rel="stylesheet">
		<!-- <link rel="stylesheet" href="<?php bloginfo( 'template_directory' ); ?>/css/main.css"> -->
		<style type="text/css">
			.project-about .pad {
    padding: 30px 30px 30px 326px;
    background: #f4f6ed url(<?php the_field('image_intro', 'option'); ?>) 0 bottom no-repeat;}
		</style>
		<link rel="stylesheet" href="<?php bloginfo( 'template_directory' ); ?>/css/style.css">
		<link rel="stylesheet" href="<?php bloginfo( 'template_directory' ); ?>/css/mainsx.css">
		<link rel="shortcut icon" type="image/png" href="/favicon.png"/>
		<link rel="shortcut icon" type="image/png" href="http://example.com/favicon.png"/>
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
				<div class="container">
					<header class="page-header clearfix">
						<div class="logo">
							<a href="<?php bloginfo( 'url' ); ?>"><img src="<?php the_field('ag_logo', 'option'); ?>" alt="Logo"></a>
						</div>
						<div class="hotlinks-slider clearfix">
							<a href="javascript:void(0)" class="control-left invisible"><span></span></a>
							<a href="javascript:void(0)" class="control-right invisible"><span></span></a>
							<div class="slider-overflow borders">
								<div class="slider-container">
									<a href="https://ecattrade.com/vi/forex" class="slider-item clearfix">
										<span class="icon slider-icon-demo"></span>
										<span class="txt">Top Sàn Giao Dịch Forex</span>
									</a>
									<a href="https://ecattrade.com/vi/san-giao-dich-quyen-chon-nhi-phan-vietnam" class="slider-item clearfix">
										<span class="icon slider-icon-reviews"></span>
										<span class="txt">Quyền Chọn Nhị Phân</span>
									</a>
									<a href="https://ecattrade.com/vi/nen-dau-tu-tien-vao-dau-de-sinh-loi" class="slider-item clearfix">
										<span class="icon slider-icon-strategy"></span>
										<span class="txt">Dầu tư vào đâu để sinh lời? </span>
									</a>
								</div>
							</div>
						</div>
					</header>
					<div class="main-nav-container">
						<nav class="main-nav">
							<?php wp_nav_menu( array( 'theme_location' => 'main_nav', 'container' => 'false', 'menu_id' => 'main-nav', 'menu_class' => 'main-nav') ); ?>
						</nav>
						<div class="clearfix"></div>
					</div>

				</div>
			</header>