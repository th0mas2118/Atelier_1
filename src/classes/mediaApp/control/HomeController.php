<?php

namespace iutnc\mediaApp\Control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\model\Gallery;
use \iutnc\mediaApp\view\HomeView;

class HomeController extends AbstractController
{
    public function execute(): void
    {
        $gl = [];
        if (isset($this->request->get['page']) && !empty($this->request->get['page'])) {
            $page = $this->request->get['page'] - 1;
            $gl = Gallery::where('hasImage', '=', true)->orderBy('created_at', 'DESC')->skip($page * 20)->take(20)->get();
        } else {
            $gl = Gallery::where('hasImage', '=', true)->orderBy('created_at', 'DESC')->take(20)->get();
        }

        $nbreArticle = Gallery::where('hasImage', '=', true)->count();
        $hv = new HomeView(["galleryList" => $gl, "nombreArticle" => $nbreArticle]);
        $hv->makePage();
    }
}
