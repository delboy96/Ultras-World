<div class="box marginTop marginBottom">
  <article class="media">
    <div class="media-left">
      <figure class="image is-64x64">
        <img src="https://bulma.io/images/placeholders/128x128.png" alt="Image">
      </figure>
    </div>
    <div class="media-content">
      <div class="content">
        <p>
          <strong><?= $comment->username ?></strong> 
          <br>
            <?= $comment->body ?>
        </p>
      </div>
      <div class="level-left">
            <span class=" has-text-weight-bold" >
              <?= "Commented on : " . $comment->time; ?>
            </span>
       </div>   

    </div>
  </article>
</div>