<!DOCTYPE html>
<?php

require_once('../includes/connect.php');
$sql = 'SELECT GROUP_CONCAT(file_name) AS images, project_title, project_type, collaborator, software, project_intro, media_id, problemSolving, problemSolving_img, sub_title, sub_desc, sub_img  FROM Projects, Media WHERE projects.id = project_id AND projects.id = :projectId';
$stmt = $connection->prepare($sql);
$projectId = $_GET['id'];
$stmt->bindParam(':projectId', $projectId, PDO::PARAM_INT);
$stmt->execute();
$result = $stmt->fetch(PDO::FETCH_ASSOC);
$images = explode(",", $row['images']);
$stmt = null;
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>  <?php echo $result['project_title']; ?> </title>
    <link rel="stylesheet" href="css/main.css" type="text/css">

</head>
<body>
<section class="caseStudy">
      <div class="cs-hero">
         <h3 class="cs-title"><?php echo $row['project_title']; ?></h3>
         <h4 class="cs-type"><?php echo $row['project_type']; ?></h4>
      </div>

      <div class="cs-intro grid-con">
         <h3 class="intro-title col-span-2 l-col-span-4"><?php echo $row['project_title']; ?></h3>
         <div class="cs-info col-span-2 m-col-start-7 l-col-start-11">
            <div class="info info-type">
               <h4>Project type ↓ </h4>
               <h5><?php echo $row['project_type']; ?></h5>
            </div>
            <div class="info info-colabo">
               <h4>Collaborate with ↓ </h4>
               <h5><?php echo $row['collaborator_id']; ?></h5>
            </div>
         </div>
         <span class="hr-line col-span-full"></span>
         <p class="intro-p col-span-full">
         <?php echo $row['project_desc']; ?>
         </p>
      </div>

      <div class="cs-desc grid-con">
         <h3 class="hidden">Main project description</h3>
         <article class="prob-solv col-span-full">
            <h4 class="cs-desc-title">
               Problem & Solving
            </h4>
            <p class="cs-desc-p">
               <?php echo $row['problemSolving']; ?>
            </p>
            <?php
               echo '<img class="cs-desc-img" src="images/' . $problemSolving_img . '" alt="poster$">';
            ?>
         </article>

         <article class="logo col-span-full">
            <h4 class="cs-desc-title">
               <?php echo $row['sub_title']; ?>
            </h4>
            <p class="cs-desc-p">
               <?php echo $row['sub_desc']; ?>
            </p>
            <?php
               echo '<img class="cs-desc-img" src="images/' . $sub_img . '" alt="poster$">';
            ?>
         </article>

      </div>


      <div class="display">
         <img class="cs-display-img full-width-grid-con l-col-span-full" src="images/poster-7.png" alt="poster-6">
         <img class="cs-display-img full-width-grid-con" src="images/poster-8.png" alt="poster-7">
      </div>
   </section>

</section>

</body>
</html>
