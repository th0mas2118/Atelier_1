<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mf\auth\AbstractAuthentification;
use \iutnc\mediaApp\view\CreateGalleryView;
use \iutnc\mediaApp\model\Gallery;
use \iutnc\mediaApp\model\Keyword;
use \iutnc\mf\router\Router;

class CreateGalleryController extends AbstractController{
    public function execute():void{
        if($this->request->method==='GET'){
            $cv=new CreateGalleryView();
            $cv->makePage();
        }
        if ($this->request->method === 'POST'){
            $title=$this->request->post['title'];
            $descr=$this->request->post['descr'];
            $keywords=$this->request->post['keyword'];

            if(empty($title) || empty($descr)){
                echo "Veuillez remplir tout les champs";
                return;
            }
            $id=Gallery::addNew($title,$descr,AbstractAuthentification::connectedUser())->id;
        }
        if ($this->request->post["keyword"]) {
            $keywords = explode(",", $this->request->post["keyword"]);

            foreach ($keywords as $keyword) {
                if (!empty($keyword)) {
                    Keyword::create(['content' => trim($keyword), 'gallery_id' => $id]);
                }
            }
        }
        Router::executeRoute('user');
    }
}