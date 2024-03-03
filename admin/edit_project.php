<?php
require_once('../includes/connect.php');
$query = "UPDATE Projects SET project_title = ?,project_type = ?, collaborator = ?,software=?,project_intro = ?,intro_img = ?, probelmSolving = ?,probelmSolving_img = ?,sub_title = ?,
sub_desc = ?,sub_desc_img = ?, WHERE id = ?";

$stmt = $connection->prepare($query);

$stmt->bindParam(1, $_POST['project_title'], PDO::PARAM_STR);
$stmt->bindParam(1, $_POST['project_type'], PDO::PARAM_STR);
$stmt->bindParam(1, $_POST['collaborator'], PDO::PARAM_STR);
$stmt->bindParam(2, $_POST['software'], PDO::PARAM_STR);
$stmt->bindParam(3, $_POST['project_intro'], PDO::PARAM_STR);
$stmt->bindParam(3, $_POST['intro_img'], PDO::PARAM_STR);
$stmt->bindParam(3, $_POST['probelmSolving'], PDO::PARAM_STR);
$stmt->bindParam(3, $_POST['probelmSolving_img'], PDO::PARAM_STR);
$stmt->bindParam(1, $_POST['sub_title'], PDO::PARAM_STR);
$stmt->bindParam(3, $_POST['sub_desc'], PDO::PARAM_STR);
$stmt->bindParam(3, $_POST['sub_img'], PDO::PARAM_STR);
$stmt->bindParam(4, $_POST['pk'], PDO::PARAM_INT);

$stmt->execute();
$stmt = null;
header('Location: project_list.php');
?>
