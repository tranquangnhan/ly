    <!-- CONTENT + SIDEBAR -->
    <div class="main-wrapper clearfix">
            <div class="site-pagetitle jumbotron">
                <div class="container text-center">
                    <h3>Sản Phẩm</h3>

                    <!-- Breadcrumbs -->
                    <div class="breadcrumbs">
                        <div class="breadcrumbs text-center">
                            <i class="fa fa-home"></i>
                            <span><a href="index.html">Trang Chủ</a></span>
                            <i class="fa fa-arrow-circle-right"></i>
                            <span class="current">Sản Phẩm</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="theme-container container">
                <div class="main-container row">
                    <aside class="col-md-3 col-sm-4">
                        <div class="main-sidebar">
                            <h3 class="sec-title fsz-25 no-mrgn blk-clr"> Lọc Theo </h3>
                            <div class="widget sidebar-widget widget_categories clearfix">
                                <h6 class="widget-title">Loại</h6>
                                <div class="panel-group">
                                    <?php 
                                    $i = 0; 
                                    foreach ($showDmSp as $motdm) { 
                                        $i++;
                                        $id = $motdm['id'];
                                        $slug = $motdm['slug'];
                                        $linksp = ROOT_URL.'/danh-muc/'.$slug.'-'.$id.'/page-'.$_GET['Page'].'.html';
                                        ?>
                                        <div class="panel panel-cate">
                                            <div class="cate-heading">                                            
                                                <a  href="<?=$linksp?>" class="collapsed"><?=$i?>. <?=$motdm['name']?></a>                                           
                                            </div>
                                        </div>
                                    <?php   } ?> 
                                </div>
                            </div>
                            <div class="widget sidebar-widget">
                                <div class="text-box">
                                    <h2 class="title-3 fsz-14 blklt-clr"> MIỄN PHÍ VẬN CHUYỂN </h2>
                                    <h2 class="sec-title fsz-20 blklt-clr"> TRONG HCM </h2>
                                </div>
                            </div>
                        </div>
                    </aside>

                    <main class="col-md-9 col-sm-8 shop-wrap">                       
                        <div class="tab-content">
                            <!-- Product Grid View -->
                            <div id="grid-view" class="tab-pane fade active in" role="tabpanel">
                                <div class="row text-center hvr2 clearfix">
                                    <?php foreach ($ds as $motsp) {
                                         $id = $motsp['id'];
                                         $iddm = $motsp['iddm'];
                                         $name = $motsp['name'];
                                         $img = $pathimg.$motsp['img'];
                                         if(is_file($img)){
                                             $img = $img;
                                         }else{
                                             $img = $pathimg.'logo-2.png';
                                         }
                                         $slug = $motsp['slug'];
                                         $linksp = ROOT_URL."/".$slug.'-'.$id.'.html';
                                         $giaban = forMatTien($motsp['gia']-($motsp['gia']/$motsp['giamgia']));
                                         $mota = substr($motsp['mota'],0,100)."..";
                                    ?>
                                   <div class="col-md-4 col-sm-6">
                                        <div class="portfolio-wrapper">
                                            <div class="portfolio-thumb">
                                                <img src="<?=$img?>" alt="<?=$slug?>">
                                            </div>
                                            <div class="product-content">
                                                <h3> <a class="title-3 fsz-16" href="<?=$linksp?>"><?=$name?></a> </h3>
                                                <p class="font-3">Giá: <span class="thm-clr"> <?=$giaban?> Đ / 1000 cái </span> </p>    
                                            </div>
                                        </div>
                                    </div>

                               <?php } ?>
                                </div>
                                <nav class="woocommerce-pagination">
                                    <ul class="page-numbers">
                                       <?=$Pagination?>
                                    </ul>
                                </nav>
                            </div>
                            <!-- / Product Grid View -->

                        </div>
                    </main>
                </div>
            </div>
        </div>
        <div class="clear"></div>
        <!-- / CONTENT + SIDEBAR -->