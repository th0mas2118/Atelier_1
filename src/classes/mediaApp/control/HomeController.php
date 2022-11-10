<?php

namespace iutnc\mediaApp\Control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\model\Gallery;
use iutnc\mediaApp\model\User;
use \iutnc\mediaApp\view\HomeView;

class HomeController extends AbstractController
{
    public function execute(): void
    {
<<<<<<< HEAD
        $user = User::where('id', '=', '5')->first();

        $gl = Gallery::select()->take(20)->get();
        $hv = new HomeView($gl);
        $hv->makePage();
=======
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
>>>>>>> 2021174dc66fc89ddcca5990fe5a5b2e2ffd8bcd
    }
}
