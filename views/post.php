<?php 
    $id = $_GET['id'] ? $_GET['id'] : null;
    // $comments = null;
    $post = getPost($conn, $id);
    $comments = getCommentsForPost($conn, $id);
    // $msg = $_SESSION['success'];
    
    if (isset($_POST["commentBtn"])) {
        $body = $_POST["comment"];
        $userID = auth()->id; 
        
        try {
            addCommentToPost($conn, $userID, $id, $body);
            $_SESSION['success'] = 'You have successfully added a new comment';
        } catch(PDOException $e) {
            echo $e->getMessage();
        }
    }
?>

<div id="containerPost" class="container">
    <h1 class="is-size-1 has-text-centered mojfont"><?= $post->title ?></h1>
    <figure id="figureSlika" class="">
        <img src="<?= $post->image ?>" alt="Image">
    </figure>
    <h2><?= $post->body ?></h2>

    <!-- <?= notification($msg); ?> -->
        <?php if (userLoggedIn()) : ?>
             
            <div class="md-form marginTop">
             <form action="<?= $_SERVER['PHP_SELF'] ?>?page=post&id=<?= $id ?>" method="POST"> 
                   <label for="comment">Post a comment</label>
                <textarea class="textarea" name="comment" placeholder="e.g. Great!"></textarea>
                    <button type="submit" name="commentBtn" class="button mojabojaPoz has-text-white marginTop1">Comment</button>
                </form>
            </div>
            <?php else: ?>
                 <div class="alert bg-primary marginTop">
                    <p class="is-size-5 is-italic">In order to comment you must be logged in</p> 
                </div> 
        <?php endif; ?>


        <div id="commentSection">
            <?php if (is_array($comments)) : ?>
                <?php foreach ($comments as $comment) : ?>
                    <?php require('components/comment.php'); ?>
                <?php endforeach ?>
              <?php else : ?>
                <h3 class="mojaboja is-italic">No comments yet</h3>
            <?php endif; ?>
        </div>
</div>
