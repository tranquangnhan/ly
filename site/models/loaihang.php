<?php

function showAllDm($limit){
    $sql = "select * from danhmuc order by id desc limit {$limit}";
    return result1(0,$sql);
}
function showDmSp(){
    $sql = "select * from danhmuc where 1 order by id desc";
    return result1(0,$sql);
}

function showNameDm($id){
    $sql = "select * from danhmuc where id =". $id;
    return result1(1,$sql)['name'];
} 

?>