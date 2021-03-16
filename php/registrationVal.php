<?php
    session_start();
    include "conn.php";
    if(isset($_POST["register-btn"])){
        $user = $_POST["user"];
        $email = $_POST["email"];
        $pass = $_POST["pass"];
        $pass2 = $_POST["pass2"];

        $greske = [];

        $reUser = "/^[a-zA-Z0-9]{2,}+([a-zA-Z0-9](_|-| )[a-zA-Z0-9])*[a-zAZ0-9]*$/";
        $rePass = "/^[0-9A-z]{4,}$/";
        
        if(!preg_match($reUser,$user)){
            $greske[]='Username not valid.';
        }

        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $greske[]='Email not valid.';
            }

        if(!preg_match($rePass,$pass)){
            $greske[]='Password is not in correct format.';
        }

        if($pass!=$pass2){
            $greske[]="Passwords don't match";
        }

        if(count($greske)==0){

        try{
            require_once "conn.php";

                $token=rand(1,10000).time().$user;
                $pass = md5($pass);
                $query="INSERT INTO `users` (`id`, `username`, `email`, `password`, 
                `token`, `role_id`, `active`) 
                VALUES (NULL, :user, :email, :pass, 
                :token, '2', '1')";

                $stmt = $conn->prepare($query);
                $stmt->bindParam(":user",$user);
                $stmt->bindParam(":email",$email);
                $stmt->bindParam(":pass",$pass);
                $stmt->bindParam(":token",$token);
            
                $kue=$stmt->execute();
                
                header('location:../index.php?page=login');
            }
        catch(PDOException $e){
            echo $e->getMessage();
            }
        }
        else{
           var_dump ($greske);
    }
}
    // echo json_encode($data);
    // http_response_code($code); 
    ?> 
   