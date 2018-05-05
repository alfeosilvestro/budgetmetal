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

$from_address = "galles.cs@gmail.com";
$from_name = "First Last";
$to_address = "info@budgetmetal.com";
$to_name = "John Doe";
$subject = "Mail client test by php";
$message = "hello from php mailer";
$smtp_host = "127.0.0.1";
$smtp_port = 25;
// $smtp_username = "info@budgetmetal.com";
// $smtp_password = "12345678";
$smtp_username = "";
$smtp_password = "";
$smtp_debug = 2;

$mail             = new PHPMailer();

//$message             = file_get_contents('contents.html');
//$message             = eregi_replace("[\]",'',$message);
echo "Start SMTP Client";
$mail->IsSMTP(); // telling the class to use SMTP
$mail->Host       = $smtp_host; // SMTP server
$mail->SMTPDebug  = $smtp_debug;                     // enables SMTP debug information (for testing)
                                           // 1 = errors and messages
                                           // 2 = messages only
$mail->SMTPAuth   = false;                  // enable SMTP authentication
$mail->Port       = $smtp_port;                    // set the SMTP port for the GMAIL server
//$mail->Username   = $smtp_username;       // SMTP account username
//$mail->Password   = $smtp_password;        // SMTP account password

$mail->SetFrom($from_address, $from_name);

$mail->AddReplyTo($from_address, $from_name);

$mail->Subject    = $subject;

$mail->AltBody    = $message; // optional, comment out and test

$mail->MsgHTML($message);

$mail->AddAddress($to_address, $to_name);

//$mail->AddAttachment("images/phpmailer.gif");      // attachment
//$mail->AddAttachment("images/phpmailer_mini.gif"); // attachment



try {
  echo "Begin send";
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
