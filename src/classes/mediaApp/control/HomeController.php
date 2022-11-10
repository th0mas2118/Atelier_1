<?php

namespace iutnc\mediaApp\Control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\model\Gallery;
use \iutnc\mediaApp\view\HomeView;

class HomeController extends AbstractController
{
    public function execute(): void
    {
        if($this->request->method==='GET'){
            $gl ;
            if(isset($this->request->get['page']) && !empty($this->request->get['page'])){
                $page = $this->request->get['page'] - 1;
                $gl=Gallery::select()->skip($page * 20)->take(20)->get();
            }else{
                $gl=Gallery::select()->take(20)->get();
            }
            $hv = new HomeView($gl);
            $hv->makePage();
        }
    }
}
