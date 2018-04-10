<?php
if($_POST){
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];


/* Email Detials */
  $mail_to = "info@budgetmetal.com";
  $from_mail = $email;
  $from_name = $name;
  $reply_to = $from_mail;
  $subject = "Contact";

/* Set the email header */
  // Generate a boundary
  $boundary = md5(uniqid(time()));

  // Email header
  $header = "From: ".$from_name." <".$from_mail.">".PHP_EOL;
  $header .= "Reply-To: ".$reply_to.PHP_EOL;
  $header .= "MIME-Version: 1.0".PHP_EOL;

  // Multipart wraps the Email Content and Attachment
  $header .= "Content-Type: multipart/mixed; boundary=\"".$boundary."\"".PHP_EOL;
  $header .= "This is a multi-part message in MIME format.".PHP_EOL;
  $header .= "--".$boundary.PHP_EOL;

  // Email content
  // Content-type can be text/plain or text/html
  $header .= "Content-type:text/plain; charset=iso-8859-1".PHP_EOL;
  $header .= "Content-Transfer-Encoding: 7bit".PHP_EOL;
  $header .= $message.PHP_EOL;
  $header .= "--".$boundary.PHP_EOL;



  // Send email
  if (mail($mail_to, $subject, $message, $header)) {
    echo "Sent";
  } else {
    echo "Error";
  }
}
?>
