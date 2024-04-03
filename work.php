<!DOCTYPE html>

<?php
require_once('includes/connect.php');

$stmt = $connection->prepare('SELECT * FROM casestudy ORDER BY pj_title ASC');
$stmt->execute();
?>

<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Welcome to Sumin's Portfolio Website</title>
   <link href="css/reset.css" rel="stylesheet">
   <link href="css/grid.css" rel="stylesheet">
   <link href="css/main.css" rel="stylesheet">
   <script async type="module" src="js/main.js"></script>
   <script defer type="module" src="js/scroll.js"></script>
   <script defer type="module" src="https://cdn.plyr.io/3.7.8/plyr.js"></script>
</head>


<body data-page="work">

   <h1 class="hidden">Work page</h1>
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

      <!-- <button id="button "> -->
      <div class="hamburger col-start-4 col-end-5 m-col-start-8 m-col-end-9" id="hamburger">
         <div id="burger">
         <span class="line"></span>
          <span class="line"></span>
          <span class="line"></span>
         </div>
      </div>
      <!-- </button> -->

      <nav class="navbar col-span-4 col-end-5 m-col-start-8 m-col-end-9 l-col-start-8 l-col-end-13 xl-col-start-7 xl-col-start-13" id="burger-con">
         <ul class="navigation">
            <li class="menu"><a href="index.php">HOME.</a></li>
            <li class="menu"><a href="aboutPage.html">ABOUT.</a></li>
            <li class="menu"><a href="work.php">WORK.</a></li>
            <li class="menu"><a href="#">CONTACT.</a></li>
         </ul>
      </nav>
   </header>
   </section>


   <section id="projects" class="grid-con">
      <h2 class="hidden">Project Showcase</h2>
      <div id="showcase-title" class="col-span-full m-col-span-2 l-col-span-full xl-col-span-full">
         <h3>PROJECTS.</h3>
      </div>

      <?php

      while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

      echo '<div class="cs-container col-span-full m-col-start-3 m-col-end-9
      l-col-span-4">';   
      echo '<a href="caseStudy.php?id='.
      $row['id'].'" class="pj-desc">';     
      echo '<div class="pj-hover-line"></div>';
      echo '<h4 class="pj-title">' .$row ['pj_title'] .'</h4>';
      echo '<h5 class="pj-type">' . $row['type'] .'</h5>';
      echo '<p class="pj-detail">' . $row['intro_desc'] . '</p> ';
      echo '<img src="images/'. $row['thumb'] .'" alt="Project poster" class="pj-thumb">
      </a></div>' ;
      }

      $stmt = null;

      ?>

   </section>

   <section class="contact grid-con">
      <h2 class="col-span-full l-col-start-3">GET IN TOUCH.</h2>

      <div class ="send-box col-span-full l-col-start-3 l-col-end-11">  

         <form id="contactForm" method="post" action="sendmail.php"> 
            <div class="contact-box">
               <input type="text" name="name" required="" id="name">
               <label for="name">Your Name</label> 
            </div>
            <div class="contact-box">
               <input type="email" name="email" required="" id="email">
               <label for="email">Your Email</label> 
            </div>
            <div class="contact-box" id="message-box">
               <input type="text" name="comments" required="" id="comments">
               <label for="comments">Message</label> 
            </div>
            <div class="button-form button col-span-full">
               <!-- <a id="submit" href="#">Send</a> -->
               <input id="submit" type="submit" value="send">
            </div>
            <section id="feedback"><p>*Please fill out all required sections</p></section>
         </form>
      </div>
   </section>

   <footer id="main-footer" class="full-width-grid-con">
      <h2 class="hidden">Main footer section</h2>

      <h3 class="col-span-full">You can find me here as well!</h3>
      <div id="icons" class="col-span-full">
      <div id="icon1" class="icons">
         <a href="https://github.com/SuminLee-1">
            <img src="images/i-github.svg" class="socialMediaIcon" id="gitHub">
         </a>
      </div>         
      <div id="icon2" class="icons">
         <a href="https://www.linkedin.com/public-profile/settings">
            <img src="images/i-linkin.svg"  class="socialMediaIcon" id="linkin">
         </a>
      </div>    
      <div id="icon3" class="icons">
         <a href="vhttps://www.instagram.com/sssu8__m/?next=%2F">
            <img src="images/i-instagram.svg"  class="socialMediaIcon" id="instagram">
         </a>
      </div>  
      </div>


   </footer>
   </div>
   </div>


   <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/gsap.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/ScrollTrigger.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/ScrollToPlugin.min.js"></script>

</body>
</html>