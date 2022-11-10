<?php

namespace iutnc\mediaApp\Control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\model\Gallery;
use \iutnc\mediaApp\view\HomeView;

class HomeController extends AbstractController
{
    public function execute(): void
    {
            $gl ;
            if(isset($this->request->get['page']) && !empty($this->request->get['page'])){
                $page = $this->request->get['page'] - 1;
                $gl=Gallery::select()->skip($page * 20)->take(20)->get();
            }else{
                $gl=Gallery::select()->take(20)->get();
            }

            $nbreArticle = Gallery::count();
            $hv = new HomeView(["galleryList" => $gl, "nombreArticle"=>$nbreArticle]);
            $hv->makePage();
        }
    }

