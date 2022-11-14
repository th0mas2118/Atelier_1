<?php

namespace iutnc\mediaApp\control;

use iutnc\mediaApp\auth\Authentification;
use \iutnc\mf\control\AbstractController;
use \iutnc\mf\router\Router;
use \iutnc\mediaApp\model\Gallery;
use \iutnc\mediaApp\model\Keyword;
use \iutnc\mediaApp\model\Image;
use \iutnc\mediaApp\controller\User;

class DeleteGalleryController extends AbstractController
{
    public function execute($error = null): void
    {
        if ($this->validateParams(['get' => ['gallery_id']]) !== true) {
            Router::executeRoute('user');
            return;
        }else{
            $g = Gallery::where('id', '=', $this->request->get['gallery_id'])->first();
        }
    
        if (!$g || $g->author !== Authentification::connectedUser()) {
            Router::executeRoute('user');
            return;
        }

        $il = $g->images();
        $kl = $g->keywords();
        foreach ($il->get() as $i) {
            if (is_file(realpath(".") . "/img/full_size/" . $i['id'] . ".jpg")) {
                unlink(realpath(".") . "/img/full_size/" . $i['id'] . ".jpg");
            }
            if (is_file(realpath(".") . "/img/thumbnails/" . $i['id'] . ".jpg")) {
                unlink(realpath(".") . "/img/thumbnails/" . $i['id'] . ".jpg");
            }
        }
        $il->delete();
        $kl->delete();
        $g->delete();
        Router::executeRoute('user');
    }
}
