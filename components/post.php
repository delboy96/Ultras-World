    <div class="column is-half">
    <div class="card">
        <div class="card-image">
        <figure class="image is-4by3">
            <img src="<?= $posts[$i]->image ?>" alt="Image">
        </figure>
        
        </div>
        <div class="card-content">
        <div class="media">
            
            <div class="media-content">
            <p class="title is-4"><?= $posts[$i]->title ?></p>
            <p class="subtitle is-6">@delboy</p>
            </div>
        </div>

        <div class="content">
            <?= $posts[$i]->subtitle ?> 
 <!-- <?php var_dump($posts[$i])?> -->
        </div>
            <a href="?page=post&id=<?= $posts[$i]->id ?>" class="button is-rounded is-inverted floatRight mojfont">See more</a>
        </div>
        
    </div>
    </div>
    