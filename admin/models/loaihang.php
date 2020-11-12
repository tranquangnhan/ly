<?php
    function showAllDanhMuc(){
        $sql = "select count(*) as sldm from danhmuc";
        return result1(1,$sql);
    }
    function showAllDm(){
        $sql = "select * from danhmuc where 1 order by id desc ";
        return result1(0,$sql);
    }
    function xoaDanhMuc($id){
        $sql = "DELETE FROM danhmuc WHERE id=".$id;
        exec1($sql);
    }
    function addCategories($name,$slug,$anhien){
        $sql = "INSERT INTO danhmuc(name,slug,anhien) values('{$name}','{$slug}','{$anhien}')";
        exec1($sql);
    }
    function updateCategories($id,$name,$slug,$anhien){
        $sql = "UPDATE danhmuc SET name='{$name}', slug= '{$slug}',anhien='{$anhien}' WHERE id='{$id}'";
        execute1($sql);
    }
    function showDmEdit($id){
        $sql = "select * from danhmuc where id= {$id}";
        return result1(1,$sql);
    }
?>