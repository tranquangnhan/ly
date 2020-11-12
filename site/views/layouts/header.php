<!DOCTYPE html>
<html lang="en">

<head>
    <base href="/ly/site/">
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title> Goshop HTML Theme || Goshop Store Template</title>

    <!-- Favicon -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="views/ico/apple-touch-icon-144-precomposed.png">
    <link rel="shortcut icon" href="views/ico/favicon.ico">

    <!-- CSS Global -->
    <link href="views/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="views/plugins/bootstrap-select-1.9.3/dist/css/bootstrap-select.min.css" rel="stylesheet"
        type="text/css">
    <link href="views/plugins/owl-carousel2/assets/owl.carousel.css" rel="stylesheet" type="text/css">
    <link href="views/plugins/Swiper-3.2.7/dist/css/swiper.min.css" rel="stylesheet" type="text/css">
    <link href="views/plugins/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.min.css" rel="stylesheet"
        type="text/css">
    <link href="views/plugins/royalslider/skins/universal/rs-universal.css" rel="stylesheet">
    <link href="views/plugins/royalslider/royalslider.css" rel="stylesheet">
    <link href="views/plugins/subscribe-better-master/subscribe-better.css" rel="stylesheet" type="text/css">

    <!-- Icons Font CSS -->
    <link href="views/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="views/css/style.css" rel="stylesheet" type="text/css">
    <link href="views/css/header.css" rel="stylesheet" type="text/css">
    <link href="views/css/SweetAlert2.css" rel="stylesheet" type="text/css">
    <script src="views/plugins/jquery/jquery-2.1.3.js"></script>
</head>

<body class="home page">

    <!-- HEADER -->
    <header id="masthead" class="clearfix" itemscope="itemscope" itemtype="https://schema.org/WPHeader">
        <div class="site-subheader site-header">
            <div class="container theme-container">
                <!-- Language & Currency Switcher -->
               

                <!-- Mini Cart -->
               
            </div>
        </div>

        <div class="header-wrap" id="typo-sticky-header">
            <div class="container theme-container reltv-div">

                <div class="pull-right header-search visible-xs">
                    <a id="open-popup-menu" class="nav-trigger header-link-search" href="javascript:void(0)"
                        title="Menu">
                        <i class="fa fa-bars"></i>
                    </a>
                </div>

                <div class="row">
                    <div class="col-md-3 col-sm-3">
                        <div class="top-header pull-left">
                            <div class="logo-area" style="padding-bottom: 0px;">
                                <a href="<?=ROOT_URL.""?>" class="thm-logo fsz-35">
                                    <img src="views/img/extra/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Navigation -->

                    <div class="col-md-9 col-sm-9 static-div">
                        <div class="navigation pull-left">
                            <nav>
                                <div class="" id="primary-navigation">
                                    <ul class="nav navbar-nav primary-navbar">
                                       
                                        <li class="dropdown active">
                                            <a href="<?=ROOT_URL.""?>">Trang Chủ</a>
                                        </li>

                                        <li><a href="<?=ROOT_URL."/gioi-thieu.html"?>">Giới Thiệu</a></li>

                                        <li class="dropdown mega-dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                                aria-haspopup="true">Sản Phẩm</a>
                                            <div class="dropdown-menu mega-dropdown-menu mega-styl2"
                                                style="background: white no-repeat url(views/img/extra/megamenu-2.jpg) right 25px center; ">
                                                <div class="col-sm-6 menu-block">
                                                    <div class="sub-list">
                                                        <h2 class="blk-clr title">
                                                            <b class="extbold-font-4 fsz-16"> Vinh Anh Phát</b>
                                                        </h2>
                                                        <ul>
                                                            <?php foreach ($showAllDmSanPham as $motdm) {
                                                                 $i++;
                                                                 $id = $motdm['id'];
                                                                 $slug = $motdm['slug'];
                                                                 $linksp = ROOT_URL.'/danh-muc/'.$slug.'-'.$id.'/page-1.html'; 
                                                                echo '<li><a href="'.$linksp.'"> '.$motdm["name"].'</a></li>';
                                                                 }?>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>


                                        <li class="dropdown mega-dropdown"><a href="<?=ROOT_URL."/bai-viet.html"?>">Tin Tức</a></li>


                                        <li class="dropdown"><a href="#">Tuyển Dụng</a></li>
                                        <li><a href="<?=ROOT_URL."/lien-he.html"?>">Liên Hệ</a></li>
                                       
                                    </ul>
                                </div>

                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- / HEADER -->