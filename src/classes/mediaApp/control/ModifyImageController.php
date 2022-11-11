<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mf\router\Router;
use \iutnc\mediaApp\view\ModifyGalleryView;
use \iutnc\mediaApp\model\Gallery;
use iutnc\mediaApp\model\Image;
use \iutnc\mediaApp\model\Keyword;
use iutnc\mediaApp\view\ModifyImageView;

class ModifyImageController extends AbstractController
{
    public function execute($error = null): void
    {
        if ($this->request->method === 'GET') {
            $image = Image::select()->where('id', '=', $this->request->get['image_id'])->first();
            $miv = new ModifyImageView($image);

            $miv->makePage();
        }
        if ($this->request->method === 'POST') {
            $title = $this->request->post['title'];
            $descr = $this->request->post['descr'];
            $image_id = $this->request->get['image_id'];
            $kDB = Image::where('id', '=', $image_id)->first()->keywords();
            $kDBIds = [];

            foreach ($kDB->get() as $k) {
                array_push($kDBIds,  $k->id);
            }

            Keyword::whereIn('id', $kDBIds)->delete();

            $image = Image::select()->where('id', '=', $image_id)->first();
            $image->title = $title;
            $image->description = $descr;
            $var = $this->request->post['keyword'];
            $var = str_replace(' ', ',', $var);
            $keywords = explode(",", $var);
            foreach ($keywords as $keyword) {
                if (!empty($keyword)) {
                    Keyword::create(['content' => trim($keyword), 'image_id' => $image_id]);
                }
            }
            $image->save();
            Router::executeRoute('user');
        }
    }
}
