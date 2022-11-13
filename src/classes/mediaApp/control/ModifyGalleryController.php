<?php

namespace iutnc\mediaApp\control;

use iutnc\mediaApp\auth\Authentification;
use iutnc\mediaApp\model\Access;
use \iutnc\mf\control\AbstractController;
use \iutnc\mf\router\Router;
use \iutnc\mediaApp\view\ModifyGalleryView;
use \iutnc\mediaApp\model\Gallery;
use \iutnc\mediaApp\model\Keyword;
use iutnc\mediaApp\model\User;

class ModifyGalleryController extends AbstractController
{
    public function execute($error = null): void
    {
        if ($this->request->method === 'GET') {
            $router = new Router();

            $url_addimage = $router->urlFor('addimage', [['gallery_id', $this->request->get['gallery_id']]]);
            $g = Gallery::select()->where('id', '=', $this->request->get['gallery_id'])->first();
            $keywords = $g->keywords()->get();
            $usersWithAccess = $g->usersWithAccess()->get();

            $mgv = new ModifyGalleryView(['urlAddImage' => $url_addimage, 'gallery' => $g, 'keywords' => $keywords, 'usersWithAccess' => $usersWithAccess]);
            $mgv->makePage();
        }
        if ($this->request->method === 'POST') {
            if ($this->validateParams(['get' => ['gallery_id'], 'post' => ['title', 'descr', 'usersAccess']]) !== true) {
                // FAIRE UN TRUC ICI
                return;
            }

            $title = $this->request->post['title'];
            $descr = $this->request->post['descr'];
            $gallery_id = $this->request->get['gallery_id'];

            $g = Gallery::where('id', '=', $gallery_id)->first();

            $kDB = $g->keywords();
            $kDBIds = [];

            foreach ($kDB->get() as $k) {
                array_push($kDBIds,  $k->id);
            }

            Keyword::whereIn('id', $kDBIds)->delete();

            $uDB = $g->usersWithAccess()->get();
            $uDBIds = [];

            foreach ($uDB as $user) {
                array_push($uDBIds,  $user->id);
            }

            Access::whereIn('user_id', $uDBIds)->delete();

            $g->name = $title;
            $g->description = $descr;

            $var = $this->request->post['keyword'];
            $var = str_replace(' ', ',', $var);

            $keywords = explode(",", $var);

            foreach ($keywords as $keyword) {
                if (!empty($keyword)) {
                    Keyword::create(['content' => trim($keyword), 'gallery_id' => $gallery_id]);
                }
            }


            $usersAccess = explode("\n", $this->request->post['usersAccess']);

            foreach ($usersAccess as $user) {
                if (!empty($user)) {
                    $u = User::where('username', '=', trim($user))->first();
                    if ($u) {
                        echo $u->id;
                        Access::create(['user_id' => $u->id, 'gallery_id' => $gallery_id]);
                    }
                }
            }

            $g->save();

            Router::executeRoute('user');
        }
    }
}
