<?php
    $config_database = "metalpolis_database";  // the name of the database.
    $config_server = "127.0.0.1";  // server to connect to. // for development and production.
    //$server = "metalpolis-db";  // server to connect to. // for docker-compose
    $config_db_user = "metal_dbuser";  // mysql username to access the database with.
    $config_db_pass = "vackertech2018";  // mysql password to access the database with.
    $config_db_port = 3306;

    $config_gallery_api = "http://localhost:9909/galleries/get?page=";
    $config_gallery_download = "http://localhost:9909/galleries/download/";
    $config_gallery_search = "http://localhost:9909/galleries/get?keyword=<search_key>&page=<page_request>";
?>