<?php
$dsn = "mysql:host=localhost;dbname=erzw8445_sumin_portfolio;charset=utf8mb4";
try {
$connection = new PDO($dsn, 'erzw8445_suminLee ', 'U1-egg5xw!W)');
} catch (Exception $e) {
  error_log($e->getMessage());
  exit('unable to connect');
}
?>