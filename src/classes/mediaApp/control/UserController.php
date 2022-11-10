<?php

namespace iutnc\mediaApp\control;

use \iutnc\mediaApp\model\User;
use \iutnc\mf\router\Router;
use \iutnc\mf\auth\AbstractAuthentification;

class UserController extends \iutnc\mf\control\AbstractController{
    public function execute():void{
        if(!isset($this->request->get['id'])){
            if(AbstractAuthentification::connectedUser()){
                $u=User::select()->where('id','=',AbstractAuthentification::connectedUser())->first();
                $uv=new \iutnc\mediaApp\view\UserView($u);
                $uv->makePage();
                return;
            }
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