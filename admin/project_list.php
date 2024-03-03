<!DOCTYPE html>
<html lang="en">

<?php
session_start();

if(!$_SESSION['username']) {
  header( 'Location: login_form.php');
}

require_once('../includes/connect.php');
$stmt = $connection->prepare('SELECT id,project_title FROM Projects ORDER BY project_title ASC');
$stmt->execute();
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CMS Main Page</title>

    <link href="../css/reset.css" rel="stylesheet">
    <link href="../css/grid.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/main.css" type="text/css">

</head>
<body>

<h1 class="hidden">Project editing page</h1>
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



  <section class="grid-con" id="addingFrom">

  <div class="p-list-section col-span-full"> 

  <h3 class="col-span-full">Project list</h3>

  <?php

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

    echo  '
        <div class="col-span-full l-col-start-3 l-col-end-11">
        <p class="project-list">
        <h4 class="project-t">'.
      $row['project_title'].

      '</h4><a href="edit_project_form.php?id='.$row['id'].'">edit</a>'.

      '<a href="delete_project.php?id='.$row['id'].'">delete</a>
      </p></div>';
  }

  $stmt = null;

  ?>
  </div>

    <h3 class="col-span-full">Add a New Project</h3>
    <div class="pj-hover-line"></div>

    <form action="add_project.php" method="post" class="col-span-full l-col-start-3 l-col-end-11">
      <div class="input-box">
        <label for="title">Project title: </label>
        <input name="title" type="text" required="">
      </div>
      <div class="input-box">
        <label for="type">Project type: </label>
        <input name="type" type="text" required="">
      </div>
      <div class="input-box">
        <label for="collaborator">Collaborator: </label>
        <input name="collaborator" type="text" required="">
      </div>
      <div class="input-box">
        <label for="thumb">Project thumbnail: </label>
        <input name="thumb" type="file" required="">
      </div>
      <div class="input-box">
        <label for="intro">Project intro: </label>
        <textarea name="intro" required=""></textarea>
      </div>
      <div class="input-box">
        <label for="introImg">Intro image: </label>
        <input name="intro-img" type="file" required="">
      </div>
      <div class="input-box">
        <label for="problemSolving">Problem & Solving: </label>
        <textarea name="Problem & Solving" required=""></textarea>
      </div>
      <div class="input-box">
        <label for="problemSolving_img">Problem & Solving image: </label>
        <input name="problemSolving_img" type="file" required="">
      </div>
      <div class="input-box">
        <label for="sub_title">Sub description title: </label>
        <input name="sub_title" type="text" required="">
      </div>
      <div class="input-box">
        <label for="sub_desc">Sub Description: </label>
        <textarea name="sub_desc" required=""></textarea>
      </div>
      <div class="input-box">
        <label for="sub_img">Sub image: </label>
        <input name="sub_img" type="file" required="">
      </div>
      
      <div class="button-form button col-span-full">
        <input id="submit" name="submit" type="submit" value="Add">
      </div>
</form>
</section>
    </div>
</body>
</html>
