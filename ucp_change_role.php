<?php

require_once 'config.php';
require_once 'incl/main.inc';

dbconnect();
session_start();
$settings = get_settings();
get_user();
$status = get_status();
$options = get_options();
$lang = get_language();

if (!isset($_SESSION['bmf_id'])) {
    die();
}

$_SESSION['bmf_last'] = 0;

$title = htmrem($settings['html_title']) . ' ' . $lang['screen_name'];

if (isset($_POST['password'])) {
    $uid = (int) $_SESSION['bmf_id'];
    $password = md5(trim($_POST['password']));
    
    $query = 'SELECT * FROM ' . $dbss['prfx'] . "_settings WHERE set_id='change_role_key' And set_value='".$password."' ";
    $result = neutral_query($query);

    if (neutral_num_rows($result) > 0) {
        /* ------------------------ */
        /* --- Se cambia el rol --- */
        $query = 'UPDATE ' . $dbss['prfx'] . "_users SET role=1 WHERE usr_id=$uid";
        /*---------------------*/
        neutral_query($query);
        redirect('ucp_users.php', 2, 0);
    } else {
       redirect('ucp_change_role.php', 5, 'Clave incorrecta');
    }
}

include $skin_dir . '/templates/head.pxtm';
include $skin_dir . '/templates/ucp_change_role.pxtm';
?>