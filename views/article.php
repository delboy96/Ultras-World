<?php 
    $id = $_GET['id'] ?? null;
    $article = getArticle($conn, $id);
?>
<div id="containerPost" class="container">
    <h1 class="is-size-1 has-text-centered mojfont"><?= $article->title ?></h1>
    <figure id="figureSlika1" class="">
        <img src="<?= $article->img ?>" alt="Image">
    </figure>
    <h3 class="has-text-justified marginBottom "><?= $article->body ?></h3>
</div>