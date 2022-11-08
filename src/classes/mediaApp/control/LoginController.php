<?php

namespace iutnc\mediaApp\Control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\LoginView;

class LoginController extends AbstractController{
    public function execute():void{
        if($this->request->method==='GET'){
            $lv=new LoginView();
            $lv->makePage();
        }
    }
}