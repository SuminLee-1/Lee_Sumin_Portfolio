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
    <title> <?php echo $row['project_title']; ?> </title>
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
               Rebranding this beer with the goal of reclaiming the brand’s increasingly forgotten and disappearing products from many people is about whether it will provide us with a new experience by bringing nostalgia to existing customers or starting with a new brand and changing everything, and it has decided to find a middle ground by combining numerous surveys and opinions. As a result, the project was carried out in the direction of partially modifying the logo in order to keep the brand’s colour identity and maintain its previous sensibility, while also establishing a more trendy and slightly moody website.
            </p>
            <img class="cs-desc-img" src="images/poster-2.jpg" alt="poster-1">
         </article>

         <article class="logo col-span-full">
            <h4 class="cs-desc-title">
               Main Brand Logo
            </h4>
            <p class="cs-desc-p">
               Designing the new logo for Billy Beer was a collaborative process that involved conceptualizing different variations and sketches. 
               The goal was to create a logo that would reflect the brand’s commitment to American heritage and premium quality beer, while also being distinctive, memorable, and easily recognizable.
            </p>
            <img class="cs-desc-img" src="images/poster-3.png" alt="poster-2">
            <img class="cs-desc-img" src="images/poster-4.png" alt="poster-3">
         </article>

         <article class="home col-span-full">
            <h4 class="cs-desc-title">
               Home Page
            </h4>
            <p class="cs-desc-p">
               It was placed on the main page by producing a more diverse product image and vitality than the existing website, and advertised by emphasizing the advantages of Billy beer, low calories, light alcohol content, etc. that the brand emphasizes
            </p>
            <img class="cs-desc-img" src="images/poster-5.png" alt="poster-4">
         </article>

         <article class="story col-span-full">
            <h4 class="cs-desc-title">
               Story Page
            </h4>
            <p class="cs-desc-p">
               The story page, which contains the beginning, process, and direction of Billy beer, was made to clearly represent the history of Billy beer and the brand’s identity that has been built up so far.
            </p>
            <img class="cs-desc-img" src="images/poster-6-1.png" alt="poster-5">
         </article>

      </div>


      <div class="display">
         <img class="cs-display-img full-width-grid-con l-col-span-full" src="images/poster-7.png" alt="poster-6">
         <img class="cs-display-img full-width-grid-con" src="images/poster-8.png" alt="poster-7">
      </div>
   </section>
<h1><?php echo $row['project_title']; ?></h1>

<p><?php echo $row['discription']; ?></p>

<section class="project-gallery">
<?php

for($i = 0; $i < count($images); $i++) {

echo '<img class="portfolio-image" src="images/'.$images[$i].'" alt="Project Image">';

}
?>
</section>

</body>
</html>
