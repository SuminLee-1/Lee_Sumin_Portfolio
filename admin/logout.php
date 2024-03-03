<?php
session_start();
$_SESSION = array();
header('Location: login_form.php');
// session_destroy();
?>