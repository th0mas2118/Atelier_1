<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mf\auth\AbstractAuthentification;
use \iutnc\mediaApp\view\CreateGalleryView;
use \iutnc\mediaApp\model\Gallery;
use \iutnc\mediaApp\model\Keyword;
use \iutnc\mf\router\Router;

class CreateGalleryController extends AbstractController
{
    public function execute($error = null): void
    {
        if ($this->request->method === 'GET') {
            $cv = new CreateGalleryView(['error' => $error]);
            $cv->makePage();
        }
        if ($this->request->method === 'POST') {
            $tmp = $this->validateParams(['post' => ['title', 'descr']]);
            if ($tmp !== true) {
                $error;
                foreach ($tmp as $t) {
                    $error .= $t . '<br>';
                }

                $this->request->method = 'GET';
                $this->execute($error);
                return;
            }
            $title = $this->request->post['title'];
            $descr = $this->request->post['descr'];
            $keywords = $this->request->post['keyword'];
            $isPrivate = isset($this->request->post['isPrivate']) && $this->request->post['isPrivate'] === 'on' ? true : false;

            if (empty($title) || empty($descr)) {
                echo "Veuillez remplir tout les champs";
                return;
            }
            $id = Gallery::addNew($title, $descr, AbstractAuthentification::connectedUser(), $isPrivate)->id;
            if ($this->request->post["keyword"]) {
                $keywords = explode(",", $this->request->post["keyword"]);

                foreach ($keywords as $keyword) {
                    if (!empty($keyword)) {
                        Keyword::create(['content' => trim($keyword), 'gallery_id' => $id]);
                    }
                }
            }
            Router::executeRoute('user');
            return;
        }
    }
}
