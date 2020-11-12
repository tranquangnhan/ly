<?php
session_start();
ob_start();
require_once "../system/config.php";
require_once "../system/database.php";
require_once "models/hanghoa.php";
require_once "models/loaihang.php";
require_once "models/user.php";
require_once "models/blog.php";
require_once "models/contact.php";
require_once "../global.php";
include_once '../lib/myfunctions.php';

$showSpLuotXem = showSpLuotXem();
$showblogMoi = showAllBlog(3);
$showAllDmSanPham = showAllDm(4);

require_once "views/layouts/header.php";

if(isset($_GET['act'])){
    $act = $_GET['act'];
    switch ($act) {
        case 'home':
            require_once "views/home.php";
            break;
        case 'singleproduct':  
            $showSpLuotXem = showSpLuotXem();
           
            if(isset($_GET['id'])&&$_GET['id']>0){
                $id = $_GET['id'];
                settype($id,"int");
                $single = showSingleProduct($_GET['id']);
            }
            require_once 'views/singleproduct.php';
            break;
        case 'cat':
            $showDmSp = showDmSp();
            if(isset($_GET['maloai'])==true&&($_GET['maloai']>0))
            $maLoai= $_GET['maloai'];

            $PageNum=1;
            if(isset($_GET['Page'])==true) $PageNum = $_GET['Page'];

            settype($maLoai,"int");
            settype($PageNum,"int");

            if($PageNum<=0) $PageNum = 1;
            $PageSize = PAGE_SIZE_SANPHAM;

            if($maLoai)
            {
                $ds = getHangHoaTheoLoai2($maLoai,$PageNum,$PageSize);
                $TotalProduct = (int) demHangHoaTheoLoai2($maLoai);
            }
            if(!$maLoai)
            {    
                $ds = getAllHangHoa2($PageNum,$PageSize);
                $TotalProduct = (int) demAllHangHoa2();
            }
            
            if($TotalProduct == 0) $TotalProduct =1;
            $BaseLink= 'danh-muc';
           
            $Pagination =  Page($TotalProduct, $PageNum,$PageSize,$BaseLink);
            require_once 'views/shop.php';
            break;
        case 'about': 
            require_once "views/about.php";
        break;
        case 'blog': 
            $showBlogLuotXem = showBlogLuotXem(4);
            $showDmBlog = showDmBlog(5);

            if(isset($_GET['maloai'])==true&&($_GET['maloai']>0))
            $maLoai= $_GET['maloai'];

            $pageNum=1;
            if(isset($_GET['Page'])==true) $pageNum = $_GET['Page'];
           
            settype($maLoai,"int");
            settype($pageNum,"int");

            if($pageNum<=0) $pageNum = 1;
            $pageSize = PAGE_SIZE_BAIVIET;

            if($maLoai)
            {
                $ds = getHangHoaTheoLoai($maLoai,$pageNum,$pageSize);
                $TotalProduct = (int) demHangHoaTheoLoai($maLoai);
            }
            if(!$maLoai)
            {    
                $ds = getAllHangHoa($pageNum,$pageSize);
                $TotalProduct = (int) demAllHangHoa();
            }

            if($TotalProduct == 0) $TotalProduct =1;
            $BaseLink= 'bai-viet';

              $Pagination =  Page($TotalProduct, $pageNum,$pageSize,$BaseLink);
            require_once "views/blog.php";
        break;
        case 'blogpost': 
            $showBlogLuotXem = showBlogLuotXem(4);
            if(isset($_GET['id'])&&($_GET['id'])>0){
                $id = $_GET['id'];
                $motbaiviet = motbaiviet($id);
            }
            require_once "views/blogdetail.php";
            break;
        case 'contact': 
            require_once "views/contact.php";
            echo '<script src="views/jquery/jquery-3.5.1.min.js"></script>';
        break;
        default:
            require_once "views/home.php";
            break;
    }

}else{
    require_once "views/home.php";
}
require_once "views/layouts/footer.php";
?>