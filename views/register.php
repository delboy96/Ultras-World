<?php
    if(userLoggedIn()) 
       header('Location: index.php');    
?>
<section class="hero is-fullheight">
  <div class="hero-body">
      <div class="container has-text-centered">
          <div class="column is-4 is-offset-4">
              <h3 id="naslov" class="title has-text-grey">Register</h3>
              <p class="subtitle has-text-grey">Register to become a member.</p>
              <div class="box">
                  <figure class="avatar">
                      <img src="assets/logo.png" alt="logo" >
                  </figure>
                  <form action="php/registrationVal.php" onSubmit="return proveraReg()" method = "POST"> 
                      <div class="field">
                          <div class="control">
                              <input id="user" name="user" class="input" type="text" placeholder="Your Username" autofocus="" />
                          </div>
                      </div>

                      <div class="field">
                          <div class="control">
                              <input id="mejl" name="email" class="input" type="email" placeholder="Your Email" autofocus="" />
                          </div>
                      </div>

                      <div class="field">
                          <div class="control">
                              <input id="sifra" name="pass" class="input" type="password" placeholder="Your Password">
                          </div>
                      </div>

                      <div class="field">
                          <div class="control">
                              <input id="sifraP" name="pass2" class="input" type="password" placeholder="Confirm Your Password">
                          </div>
                      </div>
        
                      <input type="submit" name= "register-btn" id="register-btn" class="button is-block is-danger is-fullwidth"></button>
                      <div class="margin marginTop">
                        <ul id="errors" name="errors">           
                        </ul>
                    </div>
                      </div>
                      
                  </form>
                  
                  <p class="has-text-grey">
                        <a class="razlaz padding has-text-grey" href="?page=login">Login</a>
                        <a class="padding has-text-grey" href="index.php">Home</a> 
                    </p>
              </div>
              
          </div>
      </div>
  </div>
</section>
<script type="text/javascript" src="js/register.js"></script>