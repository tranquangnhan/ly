<?php
    include_once '../../../system/config.php';
    include_once '../../../system/database.php';
    include_once '../../../lib/myfunctions.php';
    include_once '../../models/contact.php';
    if ($_POST['Action'])
    {
        switch ($_POST['Action']) {
            case 'contact':
                $Return = array();
                $date = date("Y-m-d H:i:s");
                $Return['StatusCode'] = (int)((addContact($_POST['username'],$_POST['email'],$_POST['phone'],$_POST['message'],$date)) ? 0 : 1);
                echo json_encode($Return);
                return;
                break;
            default:
                # code...
                break;
        }
    }

?>