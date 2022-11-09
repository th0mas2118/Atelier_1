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
            $imgView = new AddImageView($this->request->get);
            $imgView->makePage();
        }

        if ($this->request->method === 'POST') {
            if (!isset($_FILES["img"])) return;

            if (!isset($this->request->post["title"]) || !isset($this->request->post["description"]) || !isset($this->request->post["keywords"]) || !isset($this->request->post["galleryId"])) return;
            $img = $_FILES["img"];

            $title = $this->request->post["title"];
            $description = $this->request->post["description"];
            $keywords = $this->request->post["keywords"];
            $gallery_id = $this->request->post["galleryId"];
            $id = Image::addNew($title, $description, $gallery_id, 0, 0, 0, 0)->id;
            UploadManager::saveImage($img, $id);
        }
    }
}
