<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mf\router\Router;
use \iutnc\mediaApp\view\ModifyGalleryView;
use \iutnc\mediaApp\model\Gallery;
use \iutnc\mediaApp\model\Keyword;

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
            $title = $this->request->post['title'];
            $descr = $this->request->post['descr'];
            $gallery_id = $this->request->get['gallery_id'];
            $kDB = Gallery::where('id', '=', $gallery_id)->first()->keywords();
            $kDBIds = [];

            foreach ($kDB->get() as $k) {
                array_push($kDBIds,  $k->id);
            }

            Keyword::whereIn('id', $kDBIds)->delete();

            $g = Gallery::select()->where('id', '=', $gallery_id)->first();
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
            $g->save();
            Router::executeRoute('user');
        }
    }
}
