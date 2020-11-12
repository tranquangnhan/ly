<!-- CONTENT + SIDEBAR -->
<div class="main-wrapper clearfix">
        <div class="site-pagetitle jumbotron">
            <div class="container  theme-container text-center">
                <h3>Tin Tức</h3>

                <!-- Breadcrumbs -->
                <div class="breadcrumbs">
                    <div class="breadcrumbs text-center">
                        <i class="fa fa-home"></i>
                        <span><a href="index.html">Trang Chủ</a></span>
                        <i class="fa fa-arrow-circle-right"></i>
                        <span class="current">Tin Tức</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="theme-container container">
            <div class="spc-60 row">

                <aside class="col-md-3 col-sm-4">
                    <div class="main-sidebar">
                        <div class="widget sidebar-widget widget_categories clearfix">
                            <h6 class="widget-title">Danh Mục</h6>
                            <div class="panel-group">
                                <?php foreach ($showDmBlog as $motdm) { 
                                    $id = $motdm['id'];
                                    $slug =  $motdm['slug'];
                                      $linksp = ROOT_URL.'/bai-viet/'.$slug.'-'.$id.'/page-1.html';
                                    echo ' <div class="panel panel-cate">
                                    <div class="cate-heading">
                                        <a href="'.$linksp.'" class="collapsed"> '.$motdm['name'].'
                                        </a>
                                    </div>
                                </div>';
                                }?>
                            </div>
                        </div>

                        <div id="goshop_widget_posts-2" class="widget sidebar-widget goshop_widget_posts clearfix">
                            <h6 class="widget-title">Bài Viết Nhiều Lượt Xem</h6>
                            <ul class="list-unstyled">
                                <?php foreach ($showBlogLuotXem as $motblog) {
                                  $id = $motblog['id'];
                                  $iddm = $motblog['iddm'];
                                  $name = $motblog['name'];
                                  $img = $pathimg.$motblog['img'];
                                  if(is_file($img)){
                                      $img= $img;
                                  }else{
                                      $img = $pathimg."logo-2.png";
                                  }
                                  $slug = $motblog['slug'];
                                  $date = $motblog['date'];
                                  $date = explode(" ",$date);
                       
                                  $date =  explode("-",$date[0]);
                                  $ngay = $date[2];
                                  $thang = explode(":",$date[1]);
                                  $thang = $thang[0];
                                  $nam = $date[0];
                                  $linksp = ROOT_URL."/bai-viet/".$slug.'-'.$id.'.html';
                                ?>
                                <li>
                                    <div class="media clearfix">
                                        <div class="media-lefta">
                                            <a href="<?=$linksp?>">
                                                <img src="<?=$img?>" alt="<?=$slug?>" />
                                            </a>
                                        </div>

                                        <div class="media-body">
                                            <span class="widget-post-cat">Danh Mục:<?=showNameDmBlog($iddm)?></span>
                                            <h6>
                                                <a href="<?=$linksp?>"><strong><?=$name?></strong></a>
                                            </h6>
                                            <span class="widget-post-meta"><?=$ngay?> THG<?=$thang?>, <?=$nam?></span>
                                        </div>
                                    </div>
                                </li>
                                <?php }?>
                            </ul>
                        </div>

                        <div class="widget widget-flickr-feed clearfix">
                            <h6 class="widget-title">Hình Ảnh</h6>
                            <ul>
                                <li> <a href="#"> <img src="views/img/flicker/1.jpg" style="width:80px; object-fit: cover;" alt=""> </a> </li>
                                <li> <a href="#"> <img src="views/img/flicker/2.jpg" style="width:80px; object-fit: cover;" alt=""> </a> </li>
                                <li> <a href="#"> <img src="views/img/flicker/3.jpg" style="width:80px; object-fit: cover;" alt=""> </a> </li>

                                <li> <a href="#"> <img src="views/img/flicker/4.jpg" style="width:80px; object-fit: cover;" alt=""> </a> </li>
                                <li> <a href="#"> <img src="views/img/flicker/5.jpg" style="width:80px; object-fit: cover;" alt=""> </a> </li>
                                <li> <a href="#"> <img src="views/img/flicker/6.jpg" style="width:80px; object-fit: cover;" alt=""> </a> </li>

                                <li> <a href="#"> <img src="views/img/flicker/7.jpg" style="width:80px; object-fit: cover;" alt=""> </a> </li>
                                <li> <a href="#"> <img src="views/img/flicker/8.jpg" style="width:80px; object-fit: cover;" alt=""> </a> </li>
                                <li> <a href="#"> <img src="views/img/flicker/9.jpg" style="width:80px; object-fit: cover;" alt=""> </a> </li>
                            </ul>
                        </div>
                    </div>
                </aside>

                <div class="visible-xs spc-15 clear"></div>

                <main class="col-md-9 col-sm-8 blog-wrap">
                    <?php foreach ($ds as $motblog) {
                        $id = $motblog['id'];
                        $iddm = $motblog['iddm'];
                        $name = $motblog['name'];
                        $img = $pathimg.$motblog['img'];
                        if(is_file($img)){
                            $img= $img;
                        }else{
                            $img = $pathimg."logo-2.png";
                        }
                        $slug = $motblog['slug'];
                        $date = $motblog['date'];
                        $mota = substr($motblog['mota'],0,100);
                        $tacgia = $motblog['tacgia'];
                        $date = explode(" ",$date);
                       
                        $date =  explode("-",$date[0]);
                        $ngay = $date[2];
                        $thang = explode(":",$date[1]);
                        $thang = $thang[0];
                        $nam = $date[0];
                        $linksp = ROOT_URL."/bai-viet/".$slug.'-'.$id.'.html';
                        ?>

                    <article class="post type-post format-standard has-post-thumbnail" itemscope="itemscope"
                        itemtype="http://schema.org/BlogPosting" itemprop="blogPost">
                        <!-- Featured Media -->
                        <div class="entry-media">
                            <a href="<?=$linksp?>">
                                <img src="<?=$img?>" alt="" itemprop="image"
                                    style="object-fit: cover; width: 100%;">
                            </a>
                        </div>
                        <div class="media clearfix">
                            <div class="entry-meta media-left">
                                <!-- Publish Date -->
                                <div class="entry-time meta-date">
                                    <time itemprop="datePublished" datetime="2015-12-09T21:10:20+00:00">
                                        <span class="entry-time-date dblock"><?=$ngay?></span>
                                        THG <?=$thang?>
                                    </time>
                                </div>

                                <!-- Number of Comments -->
                                <div class="entry-reply">
                                    <a href="single.html#comments" class="comments-link" itemprop="discussionURL">
                                        <i class="fa fa-calendar"></i><br>
                                        <?=$nam?>
                                    </a>
                                </div>
                            </div>

                            <div class="media-body">
                                <header class="entry-header">
                                    <!-- Author Link -->
                                    <span class="vcard author entry-author">
                                        <a class="url fn n" rel="author" href="category.html">
                                            <?=$tacgia?>
                                        </a>
                                    </span>

                                    <!-- Post Categories -->
                                    <span class="entry-categories" itemprop="articleSection">
                                        <a href="category.html" rel="category tag"><?=showNameDmBlog($iddm)?></a></span>


                                    <!-- Post Title -->
                                    <h3 class="entry-title" itemprop="headline">
                                        <a href="<?=$linksp?>" rel="bookmark" itemprop="url"><strong><?=$name?></strong></a>
                                    </h3>
                                </header>

                                <!-- Main Content of the Post -->
                                <div class="entry-content" itemprop="description">
                                    <p><?=$mota?> &hellip;</p>
                                    <a href="<?=$linksp?>" class="read-more-link thm-clr">Đọc thêm <i
                                            class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </article>
            
                <?php }?> 
                    <nav class="site-pagination text-center">
                        <ul class='pager'>
                           <?php echo $Pagination; ?>
                        </ul>
                    </nav>
                </main>
            </div>
        </div>

        <div class="clear"></div>
    </div>