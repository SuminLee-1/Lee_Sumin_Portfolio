<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $row['project_title']; ?></title>
    <link href="../css/reset.css" rel="stylesheet">
   <link href="../css/grid.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/main.css" type="text/css">

</head>

<body>

<div id="smooth-wrapper">

<section class="smooth-content">
    <div id="header-con">
      <header class="grid-con sticky-nav-con" id="main-header">
        <h2 class="hidden">Top Main Navigation</h2>
        <div class="main-logo l-col-start-1 l-col-end-3" id="top-logo">
          <a href="../index.php">
            <img src="../images/SUMIN-LOGO.svg" alt="main-logo">
          </a>

        </div>              
        <div class="button-form button col-span-full">
          <a href="logout.php" id="logout">Log out</a>
        </div>
      </header>
    </div>
</section>

<section id="upload_form" class="grid-con">

<?php
require_once('../includes/connect.php');

// Fetch project details based on project ID
$stmt = $connection->prepare('SELECT id, name FROM Project WHERE id = :projectId');
$stmt->bindParam(':projectId', $_GET['id'], PDO::PARAM_INT);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);
?>

<div class="col-span-full l-col-start-3 l-col-end-11">
<h3>Upload an Image:</h3>

<form action="../includes/upload.php" method="post" enctype="multipart/form-data">
    <label for="uploaded">Select an Image</label><br>
    <input type="file" name="uploaded" id="uploaded"><br>
    <div class="button-form button col-span-full">
      <input type="submit" value="upload" id="submit">
    </div>
</form>

<br><br><br>

<h3>Upload  Multiple Images:</h3>
<form action="../includes/multi_upload.php" method="post" enctype="multipart/form-data">
  <label for="uploaded">Upload Images</label><br>
  <input name="uploaded[]" type="file"><br>
  <input name="uploaded[]" type="file"><br>
  <div class="button-form button col-span-full">
    <input type="submit" value="upload" id="submit" >
  </div>
</form>

</div>

</section>
</div>
</body>
</html>
