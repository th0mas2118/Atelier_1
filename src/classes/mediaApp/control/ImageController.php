<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\ImageView;
use \iutnc\mf\router\Router;
use \iutnc\mediaApp\model\Image;

class ImageController extends AbstractController{
    public function execute():void{
        if(!isset($this->request->get['id'])){
            Router::executeRoute('home');
        }
        $image_id=$this->request->get['id'];
        $i=Image::select()->where('id','=',$image_id)->first();
        $iv=new ImageView($i);
        $iv->makePage();
    }
}