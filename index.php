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

AbstractView::addStyleSheet("src/css/style.css");

$router = new Router();

$router->addRoute('home', 'home', '\iutnc\mediaApp\control\HomeController');
$router->addRoute('login', 'sign_in', '\iutnc\mediaApp\control\LoginController');
$router->addRoute('user', 'user_galleries', '\iutnc\mediaApp\control\UserController');
$router->addRoute('gallery', 'show_gallery', '\iutnc\mediaApp\control\GalleryController');


$router->setDefaultroute('home');
$router->run();
