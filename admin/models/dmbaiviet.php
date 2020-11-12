<?php
    function showAllDmBV(){
        $sql = "select * from dmbaiviet where 1 order by id desc ";
        return result1(0,$sql);
    }
    function xoaDanhMucBv($id){
        $sql = "DELETE FROM dmbaiviet WHERE id=".$id;
        exec1($sql);
    }
    function addCategoriesBv($name,$slug,$anhien){
        $sql = "INSERT INTO dmbaiviet(name,slug,anhien) values('{$name}','{$slug}','{$anhien}')";
        exec1($sql);
    }
    function updateCategoriesBv($id,$name,$slug,$anhien){
        $sql = "UPDATE dmbaiviet SET name='{$name}',slug='{$slug}',anhien='{$anhien}' WHERE id='{$id}'";
        execute1($sql);
    }
    function showDmEditBv($id){
        $sql = "select * from dmbaiviet where id= {$id}";
        return result1(1,$sql);
    }
?>