<?php
$dsn = "mysql:host=localhost;dbname=erzw8445_FIP_portfolio;charset=utf8mb4";
try {
$connection = new PDO($dsn, 'erzw8445_suminLee ', 'O+aD8!z{cZbS');
} catch (Exception $e) {
  error_log($e->getMessage());
  exit('unable to connect');
}
?>