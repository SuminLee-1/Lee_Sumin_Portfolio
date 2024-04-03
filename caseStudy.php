<!DOCTYPE html>

<?php

require_once('includes/connect.php');

$sql = 'SELECT GROUP_CONCAT(file_name) AS id, pj_title, collaborator, type, billboard_img, intro_desc, challenge, approach, preview_img1, preview_img2, preview_img3, preview_img4, section_title, section_desc, section_img, video FROM casestudy WHERE casestudy.id = project_id AND casestudy.id = :projectId';
$stmt = $connection->prepare($sql);
$projectId = $_GET['id'];
$stmt->bindParam(':projectId', $projectId, PDO::PARAM_INT);
$stmt->execute();
$result = $stmt->fetch(PDO::FETCH_ASSOC);
$images = explode(",", $row['id']);
$stmt = null;

?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $result['pj_title']; ?></title>
    <link href="css/reset.css" rel="stylesheet">
    <link href="css/grid.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <script async type="module" src="js/main.js"></script>
    <script defer type="module" src="js/scroll.js"></script>
    <script defer type="module" src="https://cdn.plyr.io/3.7.8/plyr.js"></script>
</head>

<body data-page="casestudy">
   
<h1 class="hidden">Case Study page</h1>
<div id="smooth-wrapper">
    <section class="smooth-content">
        <div id="header-con">
            <header class="grid-con sticky-nav-con" id="main-header">
                <h2 class="hidden">Top Main Navigation</h2>
                <div class="main-logo l-col-start-1 l-col-end-3" id="top-logo">
                    <a href="index.php">
                        <img src="images/SUMIN-LOGO.svg" alt="main-logo">
                    </a>
                </div>
                <div class="hamburger col-start-4 col-end-5 m-col-start-8 m-col-end-9" id="hamburger">
                    <div id="burger">
                        <span class="line"></span>
                        <span class="line"></span>
                        <span class="line"></span>
                    </div>
                </div>
                <nav class="navbar col-span-4 col-end-5 m-col-start-8 m-col-end-9 l-col-start-8 l-col-end-13 xl-col-start-7 xl-col-start-13" id="burger-con">
                    <ul class="navigation">
                        <li class="menu"><a href="index.php">HOME.</a></li>
                        <li class="menu"><a href="aboutPage.html">ABOUT.</a></li>
                        <li class="menu"><a href="work.php">WORK.</a></li>
                        <li class="menu"><a href="#">CONTACT.</a></li>
                    </ul>
                </nav>
            </header>
        </div>
    </section>


    <section class="caseStudy">
        <div class="cs-hero">
            <div class="pj-tct">
                <h3 class="cs-title"><?php echo $result['pj_title']; ?></h3>
                <h4 class="info info-colabo"><?php echo $result['collaborator']; ?></h4>
                <h4 class="cs-type"><?php echo $result['type']; ?></h4>
            </div>
            <p class="intro-p col-span-full">
                <?php echo $result['intro_desc']; ?>
            </p>
        </div>

        <div class="cs-billboard full-width-grid-con">
            <?php
                echo '<img class="cs-billboard-img" src="images/' . $result['billboard_img'] . '" alt="hero image">';
            ?>
        </div>

        <div class="cs-desc grid-con">
            <h3 class="hidden">Main project description</h3>
            <article class="cs-challenge col-span-full">
                <h4 class="cs-sub-title">
                    Challenge
                </h4>
                <p class="cs-clg-desc">
                    <?php echo $result['challenge']; ?>
                </p>
            </article>

            <article class="cs-approach col-span-full">
                <h4 class="cs-sub-title">
                    Approach
                </h4>
                <p class="cs-apr-desc">
                    <?php echo $result['approach']; ?>
                </p>
            </article>
        </div>

        <!-- <div class="cs-preview">
            <?php
                // Ensure to check if the preview images exist before attempting to display them
                for ($i = 1; $i <= 4; $i++) {
                    $imgKey = 'preview_img' . $i;
                    if (!empty($result[$imgKey])) {
                        echo '<img id="cs-prev-img-' . $i . '" class="cs-prev-img" src="images/' . $result[$imgKey] . '" alt="Project preview image ' . $i . '">';
                    }
                }
            ?>
        </div> -->
    </section>
</div>
</body>
</html>
