<?php 
    function checkUser($user,$pass){
        $user = str_replace(";","",$user);
        $user = str_replace("'","",$user);
        $user = str_replace('"',"",$user);
        $pass = str_replace(";","",$pass);
        $pass = str_replace("'","",$pass);
        $pass = str_replace('"',"",$pass);
        $user = addslashes($user);
        $pass = addslashes($pass);
        $sql = "select * from khachhang where user='{$user}' and pass='{$pass}'";
        return result1(1,$sql);
    }
    function checkUser2($user){
        $sql = "select * from khachhang where user='{$user}'";
        return result1(1,$sql);
    }
    function checkEmailTonTai($email){
        $sql = "select * from khachhang where email='{$email}'";
        echo $sql;
        return result1(1,$sql);
    }
    function addUser($user,$pass,$active,$email,$randomKey){
        $sql = "INSERT INTO khachhang (user,pass,kichhoat,email,randomkey) VALUES ('{$user}', '{$pass}','{$active}','{$email}','{$randomKey}')";
        exec1($sql);
    }
    function user($id){
        $sql = "select * from khachhang where id='{$id}'";
        return result1(1,$sql);
    }
    function setNewPass($id,$newpass){
        $sql = "UPDATE khachhang SET pass='{$newpass}'  WHERE id=".$id;
        execute1($sql);  
    }
    function showNameUser($iduser){
        $sql = "select * from khachhang where id='{$iduser}'";
        return result1(1,$sql)['user'];
    } 
    function setThanhVien($id,$rd){
        $sql = "UPDATE khachhang SET kichhoat='1'  WHERE id=".$id;
        execute1($sql);  
    }
    function setPass($email){
        $sql = "UPDATE khachhang SET pass='123456'  WHERE email='{$email}'";
        echo $sql;
        execute1($sql);
    }
?>