<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mf\router\Router;
use \iutnc\mediaApp\view\ModifyGalleryView;

class ModifyGalleryController extends AbstractController{
    public function execute():void{
        if($this->request->method==='GET'){
            $mgv=new ModifyGalleryView();
            $mgv->makePage();
        }
        if($this->request->method==='POST'){
            $title=$this->request->post['title'];
            $descr=$this->request->post['descr'];
            $keywords=$this->request->post['keyword'];
            $galery_id=$this->request->get['gallery_id'];

            $g=Gallery::select()->where('id','=',$galery_id)->first();
            $g->name=$title;
            $g->description=$descr;
            
        }
    }
}