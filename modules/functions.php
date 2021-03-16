<?php

function dovatiDomen() {
  return 'http://localhost/ketu/';
}

function selectByTableName($table, $conn) {
  $sql = "SELECT * FROM $table;";
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

function userLoggedIn() {
  return (isset($_SESSION['user'])); 
}
function adminLoggedIn() {
  return ((userLoggedIn()) && ($_SESSION['user']->role_id === 1));
}

function dd($element) {
  echo '<pre>';
  print_r($element);
  echo '</pre>';
}
function auth() {
  return $_SESSION['user'];
}

function hasMessage() {
  return $_GET['message'] ?? null;
}

function notification($msg, $type = 'success') {
  return "<div class='column is-4 is-offset-4'>
  <div class='notification is-$type'>
   <p class='has-text-weight-bold'>$msg</p>
  </div>
</div>";
}