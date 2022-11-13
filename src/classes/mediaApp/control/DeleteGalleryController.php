<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mf\router\Router;
use \iutnc\mediaApp\model\Gallery;
use \iutnc\mediaApp\model\Keyword;
use \iutnc\mediaApp\model\Image;
use \iutnc\mediaApp\controller\User;

class DeleteGalleryController extends AbstractController{
    public function execute($error = null): void{
        $g=Gallery::where('id','=',$this->request->get['gallery_id']);
        $il=$g->first()->images();
        $kl=$g->first()->keywords();
        foreach($il->get() as $i){
            if(is_file(realpath(".") . "/img/full_size/".$i['id'].".jpg")){
                unlink(realpath(".") . "/img/full_size/".$i['id'].".jpg");
            }
            if(is_file(realpath(".") . "/img/thumbnails/".$i['id'].".jpg")){
                unlink(realpath(".") . "/img/thumbnails/".$i['id'].".jpg");
            }
        }
        $il->delete();
        $kl->delete();
        $g->delete();
        Router::executeRoute('user');
    }
}