<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mf\router\Router;
use \iutnc\mediaApp\view\ModifyGalleryView;

class ModifyGalleryController extends AbstractController{
    public function execute():void{
        $mgv=new ModifyGalleryView();
        $mgv->makePage();
    }
}