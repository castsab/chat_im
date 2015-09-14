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

if (isset($_POST['usr_id'])) {
    $uid = (int) $_SESSION['bmf_id'];
    $usr_id = trim($_POST['usr_id']);
    $query = 'DELETE FROM ' . $dbss['prfx'] . '_users WHERE usr_id='.$usr_id.';';
    neutral_query($query);
    
    $query = 'DELETE FROM ' . $dbss['prfx'] . '_online WHERE usr_id='.$usr_id.';';
    neutral_query($query);
    
    $query = 'DELETE FROM ' . $dbss['prfx'] . '_invite WHERE usr_id='.$usr_id.';';
    neutral_query($query);
}

?>