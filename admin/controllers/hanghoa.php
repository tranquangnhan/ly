<?php
    if(isset($_GET['act'])&&($_GET['act'])){
        $act = $_GET['act'];
    }else{
        $act = 'home';
    }
    switch ($act) {
        case 'index':
            $showAllSp = showAllSp();
            include_once "views/hanghoaindex.php";
        break;
        case 'add':
            $showdmsp = showAllTenDm();
            if(isset($_GET['idedit'])&&($_GET['idedit'])){
                $_SESSION['idedit'] = $_GET['idedit'];
                $showspedit = showSpEdit($_SESSION['idedit']);
                include_once "views/hanghoaedit.php";
            }else{
                include_once "views/hanghoaadd.php";
            }
            if(isset($_POST['them'])&&($_POST['them'])||isset($_POST['sua'])&&($_POST['sua'])){
                $allFile = $_FILES['img'];
                //upload nhiều ảnh
                $img = checkUpLoadMany($allFile);
                $iddm = $_POST['iddm'];
                $name = stripTags($_POST['name']);
                $dungtich = $_POST['dungtich'];
                $slug = convert_name($name);
                $gia = $_POST['gia'];
                $giamgia = $_POST['giamgia'];
                $noibat = $_POST['noibat'];
                $luotxem = $_POST['luotxem'];
                $mota = stripTags($_POST['mota']);
                $anhien = $_POST['anhien'];
                if(isset($_POST['noibat'])&&($_POST['noibat'])){
                    $noibat = $_POST['noibat'];
                }else{
                    $noibat = "0";
                }
                if(isset($_POST['anhien'])&&($_POST['anhien'])){
                    $anhien = $_POST['anhien'];
                }else{
                    $anhien = "0";
                }
                settype($gia,"float");
                settype($iddm,"int");
                settype($giamgia,"int");
                settype($luotxem,"int");
                settype($noibat,"int");
                settype($luotxem,"int");
                settype($anhien,"int");
                if(isset($_GET['idedit'])&&($_GET['idedit'])){
                    updateProduct($id,$name,$dungtich,$slug,$img,$iddm,$gia,$giamgia,$noibat,$luotxem,$mota,$anhien); 
                }else{
                    addProduct($name,$dungtich,$slug,$img,$iddm,$gia,$giamgia,$noibat,$luotxem,$mota,$anhien);
                }
                header("location: index.php?ctrl=hanghoa&act=index");
            }
        break;
        case 'del':
            if(isset($_GET['iddel'])&&($_GET['iddel'])>0){
                $id = $_GET['iddel'];
                xoaSanPham($id);
            }
        $showAllSp = showAllSp();
        include_once "views/hanghoaindex.php";
        break;
            default:
                break;
    }
?>