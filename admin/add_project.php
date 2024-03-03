<?php
require_once('../includes/connect.php');

//move_uploaded_file etc FIRST, as we need the new name
//save the name in $filename variable

$query = "INSERT INTO Projects SET project_title = ?,project_type = ?, collaborator = ?,software=?,project_intro = ?,intro_img = ?, probelmSolving = ?,probelmSolving_img = ?,sub_title = ?,
sub_desc = ?,sub_desc_img = ?, VALUES (?,?,?)";


$stmt = $connection->prepare($query);
$stmt->bindParam(1, $_POST['title'], PDO::PARAM_STR);
$stmt->bindParam(2, $_POST['desc'], PDO::PARAM_STR);
$stmt->bindParam(3, $filename, PDO::PARAM_STR);

$stmt->execute();
$last_id = $connection->lastInsertId();
$stmt = null;
header('Location: project_list.php');
?>