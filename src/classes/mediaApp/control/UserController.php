<?php

namespace iutnc\mediaApp\control;

use \iutnc\mediaApp\model\User;

class UserController extends \iutnc\mf\control\AbstractController{
    public function execute():void{
        $id= $this->request->get['id'];
        $g=User::select()->where('id','=',$id)->first();
        $g=$g->galleries()->get();
        $uv=new \iutnc\mediaApp\view\UserView($g);
        $uv->makePage();
        echo $g;
    }
}