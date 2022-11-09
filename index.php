<?php

use iutnc\mf\router\Router;
use iutnc\mf\view\AbstractView;
use iutnc\mediaApp\Control;

$config = parse_ini_file("conf/config.ini");

require_once 'vendor/autoload.php';

try {
    $db = new Illuminate\Database\Capsule\Manager();
    $db->addConnection($config);
    $db->setAsGlobal();
    $db->bootEloquent();
} catch (\Exception $e) {
    echo $e->getMessage();
    exit;
}

AbstractView::addStyleSheet("src/css/main.css");

$router = new Router();

$router->addRoute('home', 'home', '\iutnc\mediaApp\control\HomeController');
$router->addRoute('login', 'login', '\iutnc\mediaApp\control\LoginController');
$router->addRoute('user', 'user', '\iutnc\mediaApp\control\UserController');
$router->addRoute('gallery', 'gallery', '\iutnc\mediaApp\control\GalleryController');
$router->addRoute('signup', 'signup', '\iutnc\mediaApp\control\SignUpController');
$router->addRoute('new_gallley', 'new_gallery', '\iutnc\mediaApp\control\CreateGalleryController');
$router->addRoute('image', 'image', '\iutnc\mediaApp\control\ImageController');


$router->setDefaultroute('home');
$router->run();
