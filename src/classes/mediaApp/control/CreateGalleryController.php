<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\CreateGalleryView;

class CreateGalleryController extends AbstractController{
    public function execute():void{
        if($this->request->method==='GET'){
            $cv=new CreateGalleryView();
            $cv->makePage();
        }
    }
}