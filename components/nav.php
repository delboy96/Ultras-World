<?php $menus = selectByTableName('menus', $conn); ?>

<div class="containerNav paddingLeft1 paddingRight1 border-line">
    <nav class="navbar is-transparent  ">
    <div class="navbar-brand">
        <a class="navbar-item" href="">
        <img id="logo" src="assets/lovor.png" alt="logo"/>
        </a>    
    </div>
    <div id="navbarExampleTransparentExample" class="navbar-menu ">
        <div class="navbar-start ">
            <?php foreach ($menus as $menu) : ?>
                <a class="navbar-item" href="?page=<?= strtolower($menu->name) ?>"><?= $menu->name ?></a>
            <?php endforeach; ?>
        </div>

        <div class="navbar-end">
    
        <div class="navbar-item">
            <div class="field is-grouped">
            <?php if (!userLoggedIn()) : ?>
            <p class="control rounded ">
                <a class="bd-tw-button button" data-social-target="http://localhost:4000"  href="?page=login"> 
                <span>
                    Login
                </span>
                </a>
            </p>
            <p class="control rounded">
                <a class="button is-grey" href="?page=register">
                <span>Register</span>
                </a>
            </p>
       
            <?php else : ?>
            <p class="control rounded ">
                <a class="button is-grey" href="php/logout.php">
                <span>Logout</span>
                </a>
            </p>
            </div> 
        </div>      
    <?php endif; ?>  
     </div>
    </div>
    </nav>
</div>