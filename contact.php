<!DOCTYPE html>
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
<body>
   <h1 class="hidden">Home page</h1>
   <div id="smooth-wrapper">
   <section class="smooth-content">
      <div id="header-con">
      <header class="grid-con sticky-nav-con" id="main-header">
      <h2 class="hidden">Top Main Navigation</h2>
      <div class="main-logo l-col-start-1 l-col-end-3" id="top-logo">
         <a href="index.html">
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
            <li class="menu"><a href="index.html">HOME.</a></li>
            <li class="menu"><a href="aboutPage.html">ABOUT.</a></li>
            <li class="menu"><a href="caseStudy.html">WORK.</a></li>
            <li class="menu"><a href="#">CONTACT.</a></li>
         </ul>
      </nav>
   </header>
   </section>

   <section id="main-hero" class="grid-con">
      <h2 class="hidden">Main Hero Section</h2>
      <div class="col-span-full l-col-start-1 l-col-end-9" id="canvas hero-logo">
         <img src="images/hero.gif" alt="hero img">
     </div>

      <div class="hero-t col-start-1 col-end-4 m-col-start-1 m-col-end-6 l-col-start-9 l-col-end-13 xl-col-start-9 xl-col-end-13" id="hero-t-1">
         <h3>HEY,</h3>
         <h3>I’M SUMIN</h3>
      </div>

      <div class="hero-t col-start-2 col-end-5 m-col-start-5 m-col-end-9 l-col-start-8 l-col-end-12 xl-col-start-8 xl-col-end-12" id="hero-t-2">
         <h4>USER </h4>
         <h4>INTERFACE</h4>
         <h4>DESIGNER</h4>     
      </div>
   </section>


   <div id="looping-t" class="full-width-grid-con">
      <h2 class="hidden">Infinite Looping text</h2>
      <div class="infinity_inside">
         <h3>UI Designer</h3>
         <h3 id="dot">*</h3>
         <h3>Scroll Down to See More</h3>
         <h3 id="dot">*</h3>
      </div>
      <div class="infinity_inside">
         <h3>UI Designer</h3>
         <h3 id="dot">*</h3>
         <h3>Scroll Down to See More</h3>
         <h3 id="dot">*</h3>
      </div>
      <div class="infinity_inside">
         <h3>UI Designer</h3>
         <h3 id="dot">*</h3>
         <h3>Scroll Down to See More</h3>
         <h3 id="dot">*</h3>
      </div>
      <div class="infinity_inside">
         <h3>UI Designer</h3>
         <h3 id="dot">*</h3>
         <h3>Scroll Down to See More</h3>
         <h3 id="dot">*</h3>
      </div>
      <div class="infinity_inside">
         <h3>UI Designer</h3>
         <h3 id="dot">*</h3>
         <h3>Scroll Down to See More</h3>
         <h3 id="dot">*</h3>
      </div>


      </div>
   </div>



   <section id="desc-me" class="grid-con">
      <h2 class="hidden">Little Description of Me</h2>
      <div class="col-start-2 col-end-4 m-col-start-4 m-col-end-6 l-col-start-5 l-col-end-9 xl-col-start-6 xl-col-end-8" id="dec-title">Creator -
         Designer</div>
      <div class="desc-t col-span-full m-col-span-full l-col-start-3 l-col-end-11 xl-col-start-2 xl-col-end-12" id="desc-p">
         <p> Greetings, it’s a pleasure to make your acquaintance. I am a User Interface Designer with a profound passion for crafting exceptional web and mobile experiences. Rather than adhering to conventional approaches, my focus is on conceiving and implementing innovative design concepts.</p>
      </div>
      <div id="my-photo" class="col-span-full m-col-start-2 m-col-end-8 l-col-start-2 l-col-end-12 xl-col-start-3 xl-col-end-11">
         <div class="photo" id="pt-1">
            <img src="images/imgMe.png" alt="img of me">
         </div>
         <div class="photo" id="pt-2"></div>
      </div>
      <div class="button contact-button col-start-2 col-end-4 m-col-start-3 m-col-end-7 l-col-start-5 l-col-end-9 xl-col-start-5 xl-xol-end-9">
         <a id="contact-bt" href="aboutPage.html">
            <span>Get In Touch</span>
         </a>
      </div>
   </section>

   <section id="demo-reel" class="grid-con">
      <h2 class="hidden">Demo Reel section</h2>
      <video id="player" playsinline controls data-poster="/path/to/poster.jpg">
         <source src="video/Demo reel.mp4" type="video/mp4" />
       </video>

   </section>

   <section id="projects" class="grid-con">
      <h2 class="hidden">Project Showcase</h2>
      <div id="showcase-title" class="col-span-full m-col-span-2 l-col-span-2 xl-col-span-2">
         <h3>Project.</h3>
      </div>
      <a href="caseStudy.html" class="project main-projs col-span-full l-col-start-1 l-col-end-7" id="project1" >
         <div class="img-container">
            <img src="images/pj-poster-1.png" alt="Billy beer project poster" class="pj-thumnail">
            <div class="pj-desc">
               <h4 class="pj-title">BILLY BEER</h4>
               <h5 class="pj-type">Beer Website Rebranding

               </h5>
            </div>
         </div>
      </a>

      <a class="project main-projs  col-span-full l-col-start-7 l-col-end-13" id="project2">
         <div class="img-container">
            <img src="images/pj-poster-2.png" alt="Room project poster" class="pj-thumnail">
            <div class="pj-desc">
            <h4 class="pj-title col-span-2">HOTEL ROOM</h4>
            <h5 class="pj-type col-span-2">3D modeling</h5>
            </div>
         </div>
      </a>

      <a class="project main-projs  col-span-full l-col-start-1 l-col-end-7" id="project3">
         <div class="img-container">
            <img src="images/pj-poster-3.png" alt="" class="pj-thumnail">
            <div class="pj-desc">
               <h4 class="pj-title">
                  Z magazine
               </h4>
               <h5 class="pj-type">
                  Magazine Website Design
               </h5>
            </div>
         </div>
      </a>

      <a class="project main-projs  col-span-full l-col-start-7 l-col-end-13" id="project4" href="#">
         <div class="img-container">
            <img src="images/pj-poster-4.png" alt="Industry night poster"   class="pj-thumnail">
            <div class="pj-desc">
               <h4 class="pj-title">
                  Industry NIGHT
               </h4>
               <h5 class="pj-type">
                  Bootcamp<br>
                  - Event Website Design
               </h5>
            </div>
         </div>
      </a>

      <div class="button col-start-2 col-end-4 m-col-start-3 m-col-end-7 l-col-start-5 l-col-end-9 xl-col-start-5 xl-xol-end-9" id="more">
         <a id="more-bt">
            <span>More Work</span>
            <span class="button-line"></span>
            <img src="images/plus.svg" alt="plus" class="button-plus">
         </a>
      </div>
   </section>

   <section class="contact grid-con">
      <h2 class="col-span-full l-col-start-3">GET IN TOUCH.</h2>

      <div class ="send-box col-span-full l-col-start-3 l-col-end-11">  

         <form method="post" action="sendmail.php"> 
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