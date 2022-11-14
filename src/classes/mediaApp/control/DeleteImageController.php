<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mf\router\Router;
use \iutnc\mediaApp\model\Keyword;
use \iutnc\mediaApp\model\Image;
use \iutnc\mediaApp\controller\User;

class DeleteImageController extends AbstractController{
    public function execute($error = null): void{
        $i=Image::where('id','=',$this->request->get['image_id']);
        $kl=$i->first()->keywords();
        if(is_file(realpath(".") . "/img/full_size/".$i->first()['id'].".jpg")){
            unlink(realpath(".") . "/img/full_size/".$i->first()['id'].".jpg");
        }
        if(is_file(realpath(".") . "/img/thumbnails/".$i->first()['id'].".jpg")){
            unlink(realpath(".") . "/img/thumbnails/".$i->first()['id'].".jpg");
        }
        $kl->delete();
        $i->delete();
        Router::executeRoute('user');
    }
}