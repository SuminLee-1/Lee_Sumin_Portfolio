<?php

require_once('connect.php');

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
   $errors['comments'] = 'Commnets field can not be empty';
}

if (empty($email)) {
   $errors['email'] = 'You must fill out your email.';
} else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
   $errors['legit_email'] = 'You must fill out your real email.';
}

if (empty($erros)) {


///insert these values as a new row in the contacts table

   $query = "INSERT INTO Contact_Form (name, email, commnets) VUALUES ('$name','$email','$msg')";

   if(mtsqli_query($connect,$query) {

   
   //format and send these values in an email

   $to = 'sumin.lee707@gmail.com';
   $subject = 'Message from your portfolio site!';
   $message = 'You have recieve a new contact form submission.\n\n';
   // "\n" --> samne with <br>
   $message .= "Name: ".$name."\n";
   // .= is not gonna replace 
   $message .= "Email: "$email."\n\n";


   mail($to, $subject, $message);


   header('Location: thank_you.php');

   })



}

?>