<?php

namespace iutnc\mediaApp\control; 

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\AddImageView;
use \iutnc\mf\router\Router;

class AddImageController extends AbstractController{


    public function execute():void{
        if($this->request->method==='GET'){
            $imgView = new AddImageView();
            $imgView->makePage();
        }
    }
}