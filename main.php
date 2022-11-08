<?php

use iutnc\mf\router\Router;
use iutnc\mediaApp\model;
use iutnc\mf\view\AbstractView;

$config = parse_ini_file("conf/config.ini");

require_once 'vendor/autoload.php';

try {
    $db = new Illuminate\Database\Capsule\Manager();
    $db->addConnection($config);
    $db->setAsGlobal();
    $db->bootEloquent();
} catch (\Exception $e) {
    echo $e->getMessage();
}

$req = model\Image::getById(1);

echo $req;
