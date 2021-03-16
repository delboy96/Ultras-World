<div class="column is-one-quarter-desktop is-half-tablet">
    <div class="card">
        <div class="card-image">
        <a href="<?= $post->image ?>" data-caption="<?= $post->title ?>" data-fancybox="gallery">
            <figure class="image is-3by2">
              <img src="<?= $post->image ?>" alt="<?= $post->title ?>">
            </figure>
           
            <div class="card-content is-overlay is-clipped">
              <!-- <span class="tag is-info">
                Photo Title That is really long to show the clipping
              </span>        -->
            </div>
        </div>
        </a> 
        <footer class="card-footer">
            <!-- <a class="card-footer-item"> -->
            <?= $post->title ?>
            <!-- </a> -->
        </footer>
        
    </div>
  </div>
  