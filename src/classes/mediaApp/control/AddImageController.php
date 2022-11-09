<?php

namespace iutnc\mediaApp\control;

use iutnc\mediaApp\model\Image;
use iutnc\mediaApp\utils\UploadManager;
use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\AddImageView;
use \iutnc\mf\router\Router;

class AddImageController extends AbstractController
{


    public function execute(): void
    {
        if ($this->request->method === 'GET') {
            $imgView = new AddImageView();
            $imgView->makePage();
        }

        if ($this->request->method === 'POST') {
            if (!isset($_FILES["img"])) return;
            $img = $_FILES["img"];
            var_dump($this->request->post);
            $title = $this->request->post["title"];
            $description = $this->request->post["description"];
            $keywords = $this->request->post["keywords"];

            // UploadManager::saveImage($img, 1312);
        }
    }
}
