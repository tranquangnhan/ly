<?php
if(!is_array($single)){
    echo 'Sản phẩm này không có';
}
else{
    $id = $single['id'];
    $name = $single['name'];
    $gia = forMatTien($single['gia']);
    $giaban = forMatTien($single['gia']-($single['gia']/$single['giamgia']));
	$iddm = $single['iddm'];
	$giamgia = $single['giamgia'];
    $mota = $single['mota'];
    $img = $pathimgsite. $single['img'];
    if(is_file($img)){
        $img = $img;
    }else{
        $img ='nothing..';
	}
?>
       <!-- CONTENT + SIDEBAR -->
       <div class="main-wrapper clearfix">
        <div class="site-pagetitle jumbotron">
            <div class="container theme-container text-center">
                <h3>Chi Tiết Sản Phẩm</h3>

                <!-- Breadcrumbs -->
                <div class="breadcrumbs">
                    <div class="breadcrumbs text-center">
                        <i class="fa fa-home"></i>
                        <span><a href="index.html">Trang Chủ</a></span>
                        <i class="fa fa-arrow-circle-right"></i>
                        <span class="current">Sản Phẩm</span>
                        <i class="fa fa-arrow-circle-right"></i>
                        <span class="current">Ly Giấy 500 ML</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="theme-container container" style="padding-bottom: 50px;">
            <main id="main-content" class="main-content">
                <div itemscope itemtype="http://schema.org/Product"
                    class="product has-post-thumbnail product-type-variable">

                    <div class="row">
                        <div class="col-lg-6 col-md-8 col-sm-10 col-xs-12">

                            <img style="width: 100%;" src="<?=$img?>" alt="">
                        </div>
                        <div class="spc-15 hidden-lg clear"></div>
                        <div class="col-lg-6 col-sm-12 col-md-12 col-xs-12">
                            <div class="summary entry-summary">
                                <div class="woocommerce-product-rating" itemprop="aggregateRating" itemscope
                                    itemtype="http://schema.org/AggregateRating">


                                    <div class="posted_in">
                                        <h3 class="funky-font-2 fsz-20">Sản Phẩm</h3>
                                    </div>
                                </div>

                                <div class="product_title_wrapper">
                                    <div itemprop="name" class="product_title entry-title"><?=$name?> <span
                                            class="thm-clr"></span>
                                        <p class="font-3 fsz-18 no-mrgn price"><b><?=$giaban?> Đ/1000 Cái</b></p>
                                    </div>
                                </div>

                                <div itemprop="description" class="fsz-15">
                                    <p style="text-align: justify"><?=$mota?>
                                         </p>
                                </div>
                                <div class="form-group">
                                    <a href="?act=contact"><button type="submit" class="single_add_to_cart_button button alt fancy-button left">Liên Hệ Mua Hàng</button></a>
                            </div>



                            </div><!-- .summary -->
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </main>
        </div>


        <div class="clear"></div>
    </div>
    <div class=" light-bg gst-row">
        <div class="fancy-heading text-center">
            <h3> Sản Phẩm Liên Quan </h3>
            <h5 class="funky-font-2"> Khách Hàng Khác Cũng Lựa Chọn </h5>                
        </div>

        <!-- Portfolio items -->
        <div class="related-product nav-2 text-center">
            <?php
             $showSameDm = showSameDm($iddm,$id);
            foreach ($showSameDm as $motsp) {
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
            <div class="product">
                <div class="rel-prod-media">
                    <img style="height: 390px; width: 350px; object-fit: cover;"src="<?=$img?>" alt="" />                                                 
                </div>
                <div class="product-content">
                    <h3> <a href="<?=$linksp?>" class="title-3 fsz-16"><?=$name?> </a> </h3>
                    <p class="font-3">Giá: <span class="thm-clr"> <?=$giaban?> Đ / 1000 cái </span> </p>    
                </div>
            </div>
        <?php  }?> 

        </div>
    </div>
<?php }?>