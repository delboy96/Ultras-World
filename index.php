<?php
  //$page = isset($_GET['page']) ? $_GET['page'] : null;
  @session_start();
  $page = $_GET['page'] ?? null; //za kurcelje
  require_once 'php/conn.php';
  require_once 'modules/functions.php';
  require_once 'modules/queries.php';

  require_once 'components/head.php'; 
  require_once 'components/nav.php';
  // require_once 'php/post.php'; 
  // dd(auth());
  // dd($post->id);
  switch ($page) {
    case 'login':
     require_once 'views/login.php';
      break;

    case 'register':
    require_once 'views/register.php';
      break;

    case 'contact':
      require_once 'views/contact.php';
      break;

    case 'post':
      require_once 'views/post.php';
      break;

    case 'gallery':
      require_once 'views/gallery.php';
      break;

    case 'shop':
      require_once 'views/shop.php';
      break;

    case 'author':
      require_once 'views/author.php';
      break;
    case 'article':
      require_once 'views/article.php';
      break;
      
      default:
      require_once 'views/home.php';
  }
  require_once 'components/footer.php';
  