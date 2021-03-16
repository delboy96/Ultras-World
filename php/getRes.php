<?php 
    include ("../modules/queries.php");
    include ("conn.php");
    $answers=getAnswers($conn);
    echo json_encode($answers);
?>