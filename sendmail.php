<?php

require_once('../includes/connect.php');

///gather the form content, using the names of the form fields;
$name = $_POST['name'];
$email = $_POST['email'];
$msg = $_POST['comments'];

$errors = [];

//validate and clean these values

$name = trim($name);
$email = trim($email);
$msg = trim($msg);

if (empty($name)) {
   $errors['name'] = 'Name can not be empty';
}

if (empty($msg)) {
   $errors['comments'] = 'Comments field cannot be empty';
}

if (empty($email)) {
   $errors['email'] = 'You must fill out your email.';
} else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
   $errors['legit_email'] = 'You must fill out your real email.';
}

if (empty($errors)) {


///insert these values as a new row in the contacts table

   $query = $connect->prepare("INSERT INTO Contact_Form (name, email, comments) VALUES (?, ?, ?)");
   $query->bind_param("sss", $name, $email, $msg);
   $query->execute();

   if($query) {
   $to = 'sumin.lee707@gmail.com';
   $subject = 'Message from your portfolio site!';
   $message = 'You have recieve a new contact form submission.\n\n';
   // "\n" --> samne with <br>
   $message .= "Name: ".$name."\n";
   // .= is not gonna replace 
   $message .= "Email: ".$email."\n\n";


      if(mail($to, $subject, $message)) {
       header('Location: thank_you.php');
      }

   }

}

?>