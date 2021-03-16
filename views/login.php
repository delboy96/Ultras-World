<?php
    if(userLoggedIn()) 
       header('Location: index.php');    
?>

<section class="hero is-fullheight">
  <div class="hero-body">
      <div class="container has-text-centered">
        <?php if (hasMessage()) : ?>
          <?php require_once 'components/alert.php'; ?>
        <?php endif; ?>  
          <div class="column is-4 is-offset-4">
              <h3 class="title has-text-grey">Login</h3>
              <p class="subtitle has-text-grey">Please login to proceed.</p>
              <div class="box">
                  <figure class="avatar">
                        <img src="assets/logo1.png" alt="logo">    
                  </figure>
                      <div class="field">
                          <div class="control">
                              <input id="mejl" class="input" type="email" placeholder="Your Email" autofocus="">
                          </div>
                      </div>

                      <div class="field">
                          <div class="control">
                              <input id="pass" class="input" type="password" placeholder="Your Password">
                          </div>
                      </div>
        
                      <button id="login-btn" class="button is-block mojabojaPoz has-text-white is-fullwidth">Login</button>
                      <div class="margin has-text-centered marginTop">
                        <ul id="errors">           
                         </ul>
                        </div>
              </div>
              
                  <p class="has-text-grey ">
                        <a class="razlaz padding has-text-grey" href="?page=register">Register</a>
                        <a class="padding has-text-grey" href="index.php">Home</a> 
                    </p>
              
          </div>
      </div>
  </div>
</section>