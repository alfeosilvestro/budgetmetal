<?php
    $config_database = "metalpolis_database";  // the name of the database.
    $config_server = "127.0.0.1";  // server to connect to. // for development and production.
    //$server = "metalpolis-db";  // server to connect to. // for docker-compose
    $config_db_user = "metal_dbuser";  // mysql username to access the database with.
    $config_db_pass = "vackertech2018";  // mysql password to access the database with.
    $config_db_port = 3306;

    $config_gallery_api = "http://35.198.239.233:8880/Galleries/get?page=";
    $config_gallery_download = "http://35.198.239.233:8880/Galleries/download?fileid=";
    $config_gallery_search = "http://35.198.239.233:8880/Galleries/get?keyword=<search_key>&page=<page_request>";
    $config_gallery = "http://localhost:5685/home/gallery?fileid=";
?>