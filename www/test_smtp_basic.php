<html>
<head>
<title>PHPMailer - SMTP basic test with authentication</title>
</head>
<body>

<?php

//error_reporting(E_ALL);
error_reporting(E_STRICT);

date_default_timezone_set('America/Toronto');

require_once('class.phpmailer.php');
//include("class.smtp.php"); // optional, gets called from within class.phpmailer.php if not already loaded

$mail             = new PHPMailer();

//$body             = file_get_contents('contents.html');
//$body             = eregi_replace("[\]",'',$body);
$body =   "a";
//echo $body;
$mail->IsSMTP(); // telling the class to use SMTP
$mail->Host       = "mail.mritmyanmar.com"; // SMTP server
//$mail->SMTPDebug  = 2;                     // enables SMTP debug information (for testing)
                                           // 1 = errors and messages
                                           // 2 = messages only
$mail->SMTPAuth   = true;                  // enable SMTP authentication
$mail->Host       = "mail.mritmyanmar.com"; // sets the SMTP server
$mail->Port       = 25;                    // set the SMTP port for the GMAIL server
$mail->Username   = "info@mritmyanmar.com"; // SMTP account username
$mail->Password   = "Qwer@123";        // SMTP account password

$mail->SetFrom('galles.cs@gmail.com', 'First Last');

$mail->AddReplyTo("galles.cs@gmail.com","First Last");

$mail->Subject    = "PHPMailer Test Subject via smtp, basic with authentication";

$mail->AltBody    = "To view the message, please use an HTML compatible email viewer!"; // optional, comment out and test

$mail->MsgHTML($body);

$address = "thantsinaung92@gmail.com";
$mail->AddAddress($address, "John Doe");

$mail->AddCC('thantsin92@gmail.com', 'Person One');
$mail->AddCC('galles009@gmail.com', 'Person Two');
try {

  if(!$mail->Send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
  } else {
    echo "Message sent!";
  }
}
catch(Exception $e) {
  echo 'Message: ' .$e->getMessage();
}

?>

</body>
</html>
