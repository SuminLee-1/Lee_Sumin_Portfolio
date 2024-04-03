<?php

require_once('../includes/connect.php');

///gather the form content, using the names of the form fields;
$name = trim($_POST['name']);
$email = filter_var(trim($_POST['email']), FILTER_VALIDATE_EMAIL);
$message = trim($_POST['message']);

$errors = [];

//validate and clean these values

if (empty($name)) {
   $errors['name'] = 'Name is required';
}

if (empty($email)) {
   $errors['email'] = 'Email is required';
} elseif (!$email) {
   $errors['email'] = 'Invalid email address';
}

if (empty($message)) {
   $errors['message'] = 'Message is required';
}

// If there are errors, output them as JSON
if (!empty($errors)) {
   echo json_encode(['success' => false, 'errors' => $errors]);
   exit;
}

$to = 'sumin.lee707@gmail.com';
$subject = 'New Form Submission';
$body = "Name: $name\nEmail: $email\nMessage: $message";

mail($to, $subject, $body);

echo json_encode(['success' => true, 'message' => 'Form submitted successfully!']);

?>