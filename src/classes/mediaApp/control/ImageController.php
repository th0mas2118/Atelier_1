<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\ImageView;
use \iutnc\mf\router\Router;
use \iutnc\mediaApp\model\Image;

class ImageController extends AbstractController
{
    public function execute($error = null): void
    {
        if (!isset($this->request->get['id'])) {
            Router::executeRoute('home');
        }

        $image_id = $this->request->get['id'];
        $i = Image::select()->where('id', '=', $image_id)->first();

        $r = new Router();

        $url_gallery = $r->urlFor('gallery', [['gallery_id', $i->galleryName()->first()->id]]);
        $gallery_name = $i->galleryName()->first()->name;

        $iv = new ImageView(['image' => $i, 'galleryUrl' => $url_gallery, 'galleryName' => $gallery_name]);
        $iv->makePage();
    }
}
