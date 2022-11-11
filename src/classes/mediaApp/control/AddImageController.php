<?php

namespace iutnc\mediaApp\control;

use iutnc\mediaApp\model\Gallery;
use iutnc\mediaApp\model\Image;
use iutnc\mediaApp\model\Keyword;
use iutnc\mediaApp\utils\UploadManager;
use \iutnc\mf\control\AbstractController;
use \iutnc\mf\auth\AbstractAuthentification;
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

            if (!isset($this->request->post["title"]) || !isset($this->request->post["description"]) || !isset($this->request->post["galleryId"])) return;
            $img = $_FILES["img"];
            $title = $this->request->post["title"];
            $description = $this->request->post["description"];
            $gallery_id = $this->request->post["galleryId"];
            $id = Image::addNew($title, $description, $gallery_id, 0, 0, 0, date("Y-m-d H:i:s"), AbstractAuthentification::connectedUser())->id;
            UploadManager::saveImage($img, $id);

            $gallery = Gallery::where('id', '=', $gallery_id)->first();

            if ($gallery->nb_images() > 0) {
                $gallery->hasImage = true;
                $gallery->save();
            }

            if ($this->request->post["keywords"]) {
                $keywords = explode(" ", $this->request->post["keywords"]);

                foreach ($keywords as $keyword) {
                    if (!empty($keyword)) {
                        Keyword::create(['content' => trim($keyword), 'image_id' => $id]);
                    }
                }
            }
            Router::executeRoute('user');
        }
    }
}
