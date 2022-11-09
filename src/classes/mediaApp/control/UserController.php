<?php

namespace iutnc\mediaApp\control;

use \iutnc\mediaApp\model\User;
use \iutnc\mf\router\Router;

class UserController extends \iutnc\mf\control\AbstractController{
    public function execute():void{
        if(!isset($this->request->get['id'])){
            Router::executeRoute('home');
        }
        $id = $this->request->get['id'];
        if(is_null(User::find($id))){
            Router::executeRoute('home');
        }
        $u=User::select()->where('id','=',$id)->first();
        //$g=$g->galleries()->get();
        $uv=new \iutnc\mediaApp\view\UserView($u);
        $uv->makePage();
    }
}