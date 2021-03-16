
<?php

    // session_start();

    include "conn.php";
    include "php/post.php";
    
    if(isset($_POST["commentBtn"])){
        $body = $_POST["comment"];
        $postId= $post->id;
        $userId = auth()->id; 

        try{
            require_once "conn.php";

                $query="INSERT INTO `comments` (`id`, `body`, `post_id`, `user_id`, `time`) 
                VALUES (NULL, ':body', ':post_id', 'user_id', CURRENT_TIMESTAMP);"

                $stmt = $conn->prepare($query);
                $stmt->bindParam(":body",$comment);
                $stmt->bindParam(":post_id",$postId);
                $stmt->bindParam(":user_id",$userId);
            
                $kue=$stmt->execute();
                
                // header('location:../index.php?page=login');
            }
        catch(PDOException $e){
            echo $e->getMessage();
            }
        }
        else{
           
        }
    // echo json_encode($data);
    // http_response_code($code); 
    ?> 
   