<?php

use iutnc\mf\router\Router;
use iutnc\mf\view\AbstractView;
use iutnc\mediaApp\Control;
use iutnc\mediaApp\model\Gallery;
use iutnc\mediaApp\model\Image;
use iutnc\mediaApp\model\Keyword;
use iutnc\mediaApp\model\User;

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

$faker = Faker\Factory::create('fr_FR');


// for ($i = 0; $i < 50; $i++) {
//     $firstName = $faker->firstName();
//     $lastName = $faker->lastName();
//     $username = strtolower($lastName . "." . $firstName . $faker->numberBetween(0, 99));

//     User::create(['username' => $username, 'fullname' => $lastName . " " . $firstName, 'password' => '']);
// }

// for ($i = 0; $i < 100; $i++) {
//     $title = $faker->text(20);
//     $description = $faker->text(200);
//     $author = $faker->numberBetween(1, 50);
//     Gallery::addNew($title, $description, $author, false);
// }

// for ($i = 0; $i < 300; $i++) {
//     $title = $faker->text(20);
//     $description = $faker->text(200);
//     $author = $faker->numberBetween(1, 50);
//     $gallery = $faker->numberBetween(1, 100);
//     $altitude = $faker->numberBetween(20, 100);
//     $longitude = $faker->longitude();
//     $latitude = $faker->latitude();
//     $date = date("Y-m-d H:i:s", $faker->unixTime());

//     Image::addNew($title, $description, $gallery, $altitude, $longitude, $latitude, $date, $author);
// }

// for ($i = 0; $i < 500; $i++) {
//     $keyword = $faker->word();

//     if ($faker->numberBetween(1, 10) > 5) {
//         $gallery = $faker->numberBetween(1, 100);
//         Keyword::create(['gallery_id' => $gallery, 'content' => $keyword]);
//     } else {
//         $image = $faker->numberBetween(1, 300);
//         Keyword::create(['image_id' => $image, 'content' => $keyword]);
//     }
// }

$g = Gallery::select()->get();

foreach ($g as $gal) {
    if ($gal->nb_images() > 0) {
        $gal->hasImage = true;
    } else {
        $gal->hasImage = false;
    }

    $gal->save();
}
