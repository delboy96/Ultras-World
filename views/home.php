<?php
  $posts = getPosts($conn);
  $articles = getArticles($conn);
  $suggestions =getSuggestions($conn);
  $pitanja = getPitanje($conn);

  if (userLoggedIn()) {
      $userID = auth()->id;
      $pitanje_id = $pitanja[0]->id;
      $can = canVote($userID, $pitanje_id, $conn);
  }
?>

<section id="slika" class="hero is-link is-medium has-background-grey-lighter	">
  <div class="hero-body border-line">
    <div class="container textRed ">
      <h1 class="title has-text-danger1 has-text-weight-bold ">
        Ultras world
      </h1>
      <h2 class="subtitle has-text-grey-dark ">
        Welcome to no.1 ultras blog!
      </h2>
    </div>
  </div>
</section>
<div class="container">
  <div class="section has-text-grey">
    <div class="columns">
      <div class="column is-three-quarters">
        <div class="section">
          <div class="columns is-multiline">
          <?php
            if(isset($_GET['id'])){
              $page=$_GET['id'];
              $do=$page*4;
              $od=$page*4-4;
              if($do>(count($posts))){
                $do=count($posts);
                  }
              }
            else{
              $od=0;
              $do=4;
              }
            for($i=$od;$i<$do;$i++):
            ?>
             
            <?php require 'components/post.php'; ?>
            <?php endfor; ?>
            
          </div>
        </div>
        <div id="pag" class="section">
          <nav class="pagination is-centered">
            <ul class="pagination-list">
                <?php
                  $j=1;
                  for($i=0;$i<count($posts);$i++){
                    if($i%4==0){
                    echo "<li><a class='marginRight button mojabojaPoz has-text-white' href='index.php?page=home&id=".$j."'>
                    ".$j."</a></li>";
                    $j++;
                    }
                  }
                ?> 
            </ul>
          </nav>
        </div>
      </div>
        <div class="section">
          <aside id="aside" class="menu">
            <p class="menu-label mojfont">
            <h1 class="mojfont articlesH1">ARTICLES</h1>
            </p>
            <ul class="menu-list marginBottom1">
            <?php foreach($articles as $article) : ?>
                    <li>
                      <a href="?page=article&id=<?= $article->id ?>">
                         <?= $article->title ?> 
                      </a>
                    </li>
                  <?php endforeach; ?>  
            </ul>
            <!-- anketa -->
          <?php if (userLoggedIn() && !$can) : ?>
          <h1 class="mojfont articlesH1">POLL</h1>
            <div class="panel panel-primary borderAll rounded paddingAll">
              <div class="panel-heading marginBottom">
                <h3 class="panel-title">
                    <?php foreach ($pitanja as $pit):?>
                      <h3 ><?=$pit->body?> </h3>
                      <input id="pitanje" type="hidden" value="<?= $pit->id ?>">
                    <?php endforeach ?>
                    <?php if(isset($_SESSION['user'])):?>
                      <input id="userPolje" type="hidden" value="<?= $_SESSION['user']->id ?>">
                    <?php endif ?>
                </h3>
              </div>
              <div id="odgovori" class="panel-body">
              <ul class="list-group">
              <?php foreach ($suggestions as $suggestion):?>
                  <li class="list-group-item marginBottom">
                      <div class="checkbox"> 
                          <label>
                            <input type="radio" value='<?=$suggestion->sid?>' name="radioPoll">
                             <span> <?=$suggestion->text?></span>
                          </label>
                      </div>
                  </li>
                  <?php endforeach?>
              </ul>
          </div>
          <div style='display:none' id='rezultati' class="panel-body">
              <ul id='rezAnk' class="list-group">
                  
              </ul>
          </div>
          <div id="divBtn" class="panel-footer text-center">
              <button id="btnVote" type="button" class="button is-block mojabojaPoz has-text-white is-fullwidth">
                  Vote!</button>
              <!-- <a href="#" class="small">View Result</a></div> -->
             </div>
            </aside>
          </div>
        <?php endif ?> 
      </div>
    </div>
  </div>
</div>