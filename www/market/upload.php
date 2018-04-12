<?php
include 'vendor/autoload.php';

use Dilab\Network\SimpleRequest;
use Dilab\Network\SimpleResponse;
use Dilab\Resumable;

$request = new SimpleRequest();
$response = new SimpleResponse();

$resumable = new Resumable($request, $response);
$resumable->tempFolder = 'tmps';

// $date = date('YmdHis');
// $doc_root = $_SERVER['DOCUMENT_ROOT'];
//
// $target = $doc_root . "/testing/uploads/$date";
// if (!file_exists($target)) {
//   if (!mkdir($target, 0777, true)) {
//       die('Failed to create folders...');
//   }
// }

$resumable->uploadFolder = 'attachment';
$resumable->process();
