<?php
    include "conn.php";
        $user = $_POST["user"];
        $email = $_POST["email"];
        $text = $_POST["text"];

        $greske = [];

        try{
            require_once "conn.php";

                $query="INSERT INTO `contact` (`id_poruka`, `username`, `email`, `body`) 
                VALUES (NULL, :user, :email, :text)";
                $stmt = $conn->prepare($query);
                $stmt->bindParam(":user",$user);
                $stmt->bindParam(":email",$email);
                $stmt->bindParam(":text",$text);

                $oradio=$stmt->execute();
                echo json_encode($oradio);
            }
        catch(PDOException $e){
            echo $e->getMessage();
            }
    
        