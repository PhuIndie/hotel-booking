<?php

try {
    //host 
    define("HOST", "localhost");

    //dbname
    define("DBNAME", "hotel-booking");

    //user 
    define("USER", "root");

    //pasword
    define("PASS", "");

    $conn = new PDO("mysql:host=".HOST.";dbname=".DBNAME."", USER, PASS);
    $conn -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($conn == true) {
        //echo "DB connection exist";
    }
} catch (PDOException $e) {
    //echo $e->getMessage();
}