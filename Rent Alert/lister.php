<?php

    //error reporting
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    session_start();


    //Connecting to page
    if( isset($_POST) && isset($_POST["amount"])) {
        $price = $_POST["amount"];
        var_dump($price);
    }

    if( isset($_POST) && isset($_POST["location"])) {
        $avail = serialize( $_POST["location"] );
        foreach($_POST["location"] as $loc)

        $ary = unserialize($avail);
        var_dump($ary);
    }

    if( isset($_POST) && isset($_POST["month"])) {
        $month = $_POST["month"];
    }

    if( isset($_POST) && isset($_POST["year"])) {
        $year = $_POST["year"];
    }
    if( isset($_POST) && isset($_POST["bathrooms"])) {
        $bathrooms = $_POST["bathrooms"];
    }
    if( isset($_POST) && isset($_POST["bedrooms"])) {
        $bedrooms = $_POST["bedrooms"];
    }
    if( isset($_POST) && isset($_POST["pets"])) {
        $pets = $_POST["pets"];
    }
    if( isset($_POST) && isset($_POST["smoking"])) {
        $smoking = $_POST["smoking"];
    }
    if( isset($_POST) && isset($_POST["comment"])) {
        $comment = $_POST["comment"];
    }

    //PDO
    $dbh = new PDO('mysql:host=localhost; port=8889; dbname=rent; charset=utf8','root','root');
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $dbh->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

    // //Inserting data into table
    $sql = "INSERT INTO `landlord` (`price`, `location`, `month`, `year`, `bedrooms`, `bathrooms`, `pets`, `smoking`, `comment`)
    VALUES (:price, :location, :month, :year, :bedrooms, :bathrooms, :pets, :smoking, :comment)";

    // //and sanitive
    $stmt = $dbh->prepare($sql);
    //Bind paramters
    $stmt->bindParam(':price', $price);
    $stmt->bindParam(':location', $avail);
    $stmt->bindParam(':month', $month);
    $stmt->bindParam(':year', $year);
    $stmt->bindParam(':bedrooms', $bedrooms);
    $stmt->bindParam(':bathrooms', $bathrooms);
    $stmt->bindParam(':pets', $pets);
    $stmt->bindParam(':smoking', $smoking);
    $stmt->bindParam(':comment', $comment);

    //execute SQL
    $stmt->execute();




 ?>
