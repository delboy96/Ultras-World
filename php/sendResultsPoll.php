<?php
    include "conn.php";
    
        $user = $_POST["user_id"];
        $pitanje = $_POST["question_id"];
        $odgovor = $_POST["suggestion_id"];

        $greske = [];

        try{
            require_once "conn.php";

                $query="INSERT INTO `answer` (`user_id`, `question_id`, `suggestion_id`) 
                VALUES ( :user, :pitanje, :odgovor)";

                $stmt = $conn->prepare($query);

                $stmt->bindParam(":user",$user);
                $stmt->bindParam(":pitanje",$pitanje);
                $stmt->bindParam(":odgovor",$odgovor);

                $oradio=$stmt->execute();
                echo json_encode($oradio);
            }
        catch(PDOException $e){
            echo $e->getMessage();
            }
?>