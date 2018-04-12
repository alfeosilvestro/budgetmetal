<?php
header('Content-Type: application/json');
	$date = date('YmdHis');
	if(isset($_FILES['file'])){
		if ( 0 < $_FILES['file']['error'] ) {
        //echo 'Error: ' . $_FILES['file']['error'] . '<br>';
				echo json_encode(array('status' => 'Error', 'message' =>$date .'_'. $_FILES['file']['error']));
    }
    else {
				//$target = $_SERVER['DOCUMENT_ROOT'] . '/metalpolis_git/www/market/attachment/';
				$doc_root = $_SERVER['DOCUMENT_ROOT'];
				$target = $doc_root . "/market/attachment/";
				//$target = $doc_root . "/budgetmetal/www/market/attachment/";
				//// Folder check logic - Return error if upload folder not exists
				if (!file_exists($target)) {
					echo json_encode(array('status' => 'Directory Error', 'doc root' => $doc_root, 'upload path' => $target, 'error' => 'Attachment folder not exists'));
						return;
				}

				//// Catch error - return error if file upload has permission or other issues
				try{
					//// Logic - Upload file from memory to target file
					move_uploaded_file($_FILES['file']['tmp_name'], $target.$date .'_'. $_FILES['file']['name']);

				}catch(Exception $e){
					//// Result - Fail
					echo json_encode(array('status' => 'Upload Fail', 'message' =>$date .'_'. $_FILES['file']['name'], 'doc root' => $doc_root, 'upload path' => $target, 'error' => $e->getMessage()));
					return;
				}

				//// Result - Success
				echo json_encode(array('status' => 'Success', 'message' =>$date .'_'. $_FILES['file']['name'], 'doc root' => $doc_root, 'upload path' => $target));
    }
	}
?>
