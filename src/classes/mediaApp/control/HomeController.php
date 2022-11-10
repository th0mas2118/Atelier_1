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
        $user = User::where('id', '=', '5')->first();

        $gl = Gallery::select()->take(20)->get();
        $hv = new HomeView($gl);
        $hv->makePage();
    }
}
