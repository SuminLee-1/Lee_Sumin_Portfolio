<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login Page</title>
    <link href="../css/reset.css" rel="stylesheet">
    <link href="../css/grid.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/main.css" type="text/css">
</head>
<body>

<h1 class="hidden">Login page</h1>
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
   </header>
   </section>

   <section class="grid-con">
        <form action="login.php" method="post" class="loginForm col-span-full l-col-start-3 l-col-end-11">
            <div class="input-box">
                <label for="username" >Username: </label>
                <input type="text"name="username" required="" id="username">
            </div>

            <div class="input-box">
                <label for="password">Password: </label>                
                <input required="" type="password" name="password" id="password">
            </div>
            <div class="button-form button col-span-full">
                <input id="submit" type="submit" value="Login">
            </div>
            <section id="feedback"><p>*Please fill out all required sections</p></section>
        </form>
   </section>
   </div>
</body>
</html>
