<?php

namespace iutnc\mediaApp\control;

use iutnc\mediaApp\auth\Authentification;
use \iutnc\mf\control\AbstractController;
use \iutnc\mf\router\Router;
use \iutnc\mediaApp\model\Keyword;
use \iutnc\mediaApp\model\Image;
use \iutnc\mediaApp\controller\User;

class DeleteImageController extends AbstractController
{
    public function execute($error = null): void
    {
        if ($this->validateParams(['get' => ['image_id']]) !== true) {
            Router::executeRoute('user');
            return;
        }else{
            $i = Image::where('id', '=', $this->request->get['image_id'])->first();
        }

        if (!$i || $i->author !== Authentification::connectedUser()) {
            Router::executeRoute('user');
            return;
        }

        $kl = $i->keywords();
        if (is_file(realpath(".") . "/img/full_size/" . $i['id'] . ".jpg")) {
            unlink(realpath(".") . "/img/full_size/" . $i['id'] . ".jpg");
        }
        if (is_file(realpath(".") . "/img/thumbnails/" . $i['id'] . ".jpg")) {
            unlink(realpath(".") . "/img/thumbnails/" . $i['id'] . ".jpg");
        }
        $kl->delete();
        $i->delete();
        Router::executeRoute('user');
    }
}
