<?php

function getPosts($conn) {
  $sql = "SELECT * FROM posts;";
  $stmt = $conn->query($sql);
  try {
    $stmt->execute();
    $data = $stmt->fetchAll();
    if ($stmt->rowCount() > 0) {
      return $data;
    } else {
        return false;
    }
  } catch (PDOException $e) {
    echo $e->getMessage();
  }
}

function getPostImages($conn, $id) {
  $sql = 'SELECT p.id, p.title, p.body, p.time, p.user_id, p.image, i.path FROM posts p INNER JOIN post_image k ON p.id = k.post_id INNER JOIN images i ON k.image_id = i.id WHERE p.id = :id'
  ;
  $stmt = $conn->prepare($sql);
  $stmt->bindParam(':id', $id);
  try {
    $stmt->execute();
    $data = $stmt->fetch();
    return ($stmt->rowCount() > 0) ?  $data : false;
  } catch (PDOException $e) {
    echo $e->getMessage();
  }
}

function getPost($conn,$id) {
  $sql = "SELECT * FROM posts WHERE id = :id;";
  $stmt = $conn->prepare($sql);
  try {
    $stmt->execute([ ':id' => $id]);
    $data = $stmt->fetch();
    return ($stmt->rowCount() === 1) ?  $data : false;
  } catch (PDOException $e) {
    echo $e->getMessage();
  }
}


function addCommentToPost($conn, $userID, $postID, $comment) {
  $sql = "INSERT INTO comments  (id, body, post_id, user_id) VALUES (NULL, :body, :post_id, :user_id);";
  $stmt = $conn->prepare($sql);

  $stmt->bindParam(":body", $comment);
  $stmt->bindParam(":post_id", $postID);
  $stmt->bindParam(":user_id", $userID);

  $drogasMasni = $stmt->execute();
}

function getCommentsForPost($conn, $postID) {
  $sql = "SELECT c.body,c.id,c.time,u.username, u.id
          FROM  posts p  INNER JOIN comments c
          ON  p.id  = c.post_id
          INNER JOIN users u
          ON c.user_id = u.id
          WHERE p.id = :id;";
  $stmt = $conn->prepare($sql);

  $stmt->bindParam(":id", $postID);

  $stmt->execute();
  $data = $stmt->fetchAll();
  return ($stmt->rowCount() > 0) ?  $data : false;

}

function getSNetworks($conn){
  $sql = "SELECT * FROM social_networks";
  
  $stmt = $conn->prepare($sql);

  $stmt->execute();
  $data = $stmt->fetchAll();
  return ($stmt->rowCount() > 0) ?  $data : false;
}


function getArticles($conn) {
  $sql = "SELECT * FROM articles";
  
  $stmt = $conn->prepare($sql);

  $stmt->execute();
  $data = $stmt->fetchAll();
  return ($stmt->rowCount() > 0) ?  $data : false;
}

function getArticle($conn,$id) {
  $sql = "SELECT * FROM articles WHERE id = :id;";
  $stmt = $conn->prepare($sql);
  try {
    $stmt->execute([ ':id' => $id]);
    $data = $stmt->fetch();
    return ($stmt->rowCount() === 1) ?  $data : false;
  } catch (PDOException $e) {
    echo $e->getMessage();
  }
}

function getSuggestions($conn) {
  $sql = "SELECT s.id AS sid, s.body AS text FROM suggestions s INNER JOIN questions q ON s.question_id=q.id WHERE active = 1";
  
  $stmt = $conn->prepare($sql);

  $stmt->execute();
  $data = $stmt->fetchAll();
  return ($stmt->rowCount() > 0) ?  $data : false;
}

function getPitanje($conn) {
  $sql ="SELECT * FROM questions WHERE active = 1";

  $stmt = $conn->prepare($sql);

  $stmt->execute();
  $data = $stmt->fetchAll();
  return ($stmt->rowCount() > 0) ?  $data : false;
}

function getAnswers($conn) {
  $sql = "SELECT count(a.suggestion_id) AS numAnsw, 
  s.body AS sBody FROM answer a INNER JOIN suggestions s 
  ON a.suggestion_id=s.id INNER JOIN questions q ON 
  a.question_id=q.id GROUP BY s.body ORDER BY numAnsw DESC ";

  $stmt = $conn->prepare($sql);

  $stmt->execute();
  $data = $stmt->fetchAll();
  return ($stmt->rowCount() > 0) ?  $data : false;
}


function canVote($userID, $pitanje_id, $conn)
{
  $sql = "SELECT count(*) AS voted
          FROM answer a INNER JOIN questions q
          ON a.question_id = q.id
          WHERE a.question_id = :questionID AND a.user_id = :userID;";
  $stmt = $conn->prepare($sql);

  $stmt->bindParam(":userID", $userID);
  $stmt->bindParam(":questionID", $pitanje_id);
 
  $drogasMasni = $stmt->execute();
  $data = $stmt->fetch();

  return $data->voted === '1';
}