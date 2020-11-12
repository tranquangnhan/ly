<?php
    function showspDm($iddm){
        $sql= "select * from sanpham where iddm = '{$iddm}' order by id desc";
        return result1(0,$sql);
    }
    function showSpMoi(){
        $sql= "select * from sanpham where noibat = 1 and anhien = 1 order by id desc limit 6";
        return result1(0,$sql);
    }
    function showSpLuotXem(){
        $sql= "select * from sanpham where anhien = 1 order by luotxem desc limit 6";
        return result1(0,$sql);
    }
    function showSameDm($iddm,$id){
        $sql= "select * from sanpham where anhien = 1 and iddm = ? and id != ? order by id desc limit 6";
        return result1(0,$sql,$iddm,$id);
    }
    function showSingleProduct($id){
        $sql = "select * from sanpham where 1";
        if($id >0) $sql .= " AND id=".$id;  
        return result1(1,$sql);
    }
    function showDonViTien($id){
        $sql = "SELECT loai
        FROM danhmuc
        INNER JOIN sanpham
        ON danhmuc.id = sanpham.iddm";
       return result1(1,$sql)['loai'];
    }
    function getHangHoaTheoLoai2($maloai,$pagenum,$pagesize){
        $startrow= ($pagenum - 1) *$pagesize;
        $sql = "SELECT * FROM sanpham WHERE iddm = ?"
                ." ORDER BY id DESC LIMIT $startrow, $pagesize";
        return result1(0,$sql,$maloai);
    }
    function getAllHangHoa2($pagenum,$pagesize){
        $startrow= ($pagenum - 1) *$pagesize;
        $sql = "SELECT * FROM sanpham WHERE 1"
                ." ORDER BY id DESC LIMIT $startrow, $pagesize";
        return result1(0,$sql);
    }
    function demAllHangHoa2(){
        $sql = "select count(*) as sodong from sanpham where 1";
        return result1(1,$sql)['sodong'];
    }
    function demHangHoaTheoLoai2($iddm){
        $sql = "select count(*) as sodong from sanpham where iddm = ?";
        return result1(1,$sql,$iddm)['sodong'];
    }
?>  