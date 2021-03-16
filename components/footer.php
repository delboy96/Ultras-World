<?php $social_networks = getSNetworks($conn); ?> 
</div>
<footer id="footer" class="footer has-background-grey-lighter">
  <div class="container">
    <div class="content has-text-centered ">
      <div class="columns">
                <div class="column is-4 ">
                  <h4 class="is-size-3 ">Links</h4>
                  <?php foreach ($menus as $menu) : ?>
                    <ul >
                      <li><a class="menu-list" href="?page=<?= strtolower($menu->name) ?>"><?= $menu->name ?></a></li>
                    </ul>
                  <?php endforeach; ?>
                  <!-- <li><a href="?page=author">Аутор</a></li> -->
                  <li><a href="dokumentacija.pdf">Документација</a></li>
                  <li><a href="sitemap.xml"><i class="fas fa-sitemap margin-left"></i></a></li>
                  
                </div>
                <div id="mreze" class="column is-4">
                  <h4 class="is-size-3 ">Follow us!</h4>
                  
                  <ul class="menu-list">
                  <?php foreach($social_networks as $social_network) : ?>
                    <li>
                      <a 
                        href="<?= $social_network->path ?>">
                         <?= $social_network->name ?> 
                         <i class="fab fa-<?= $social_network ->icon ?> margin-left"></i>
                      </a>
                    </li>
                  <?php endforeach; ?>  
                  </ul>              
                </div>
                <div class="column is-4">
                  <h4 class="is-size-4 "></h4>
                  <img id="h" src="assets/ultraS1.png" alt="OF"/>         
      </div> 
    </div>
      <p class="">
        <strong>копирајт &copy; Данило Милошевић</strong>
      </p>
  </div>
</footer>
<script src="js/legfontosabb.js"></script>
  <?php
    switch ($page) {
      
      case 'login':
        echo '<script src="js/login.js"></script>';
        break;
        
      case 'register': 
        echo '<script src="js/register.js"></script>';
        break;

      case 'contact': 
        echo '<script src="js/contact.js"></script>';
        break;  
      case 'gallery': 
        echo '<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.2/dist/jquery.fancybox.min.js"></script>';
        break;  
         
      default:
        # code...
        break;
    }
  ?>
</body>
</html>