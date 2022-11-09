<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\SignUpView;

class SignUpController extends AbstractController{
    public function execute():void{
        if($this->request->method==='GET'){
            $sv=new SignUpView();
            $sv->makePage();
        }
    }
}