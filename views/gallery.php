<?php
  $posts = getPosts($conn);
?>
<div class="container">
    <!-- <h1 class="title">Gallery</h1> -->
<div class="content is-medium mojaboja">
  <h1 class="mojfont mojaboja">Ultras World Gallery</h1>
</div>
<div id="galerijaSredina">
  <div class="columns is-multiline">
      <?php foreach($posts as $post) : ?>
        <?php require 'components/slika.php'; ?>
      <?php endforeach; ?> 
  </div>
</div>
