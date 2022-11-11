<?php

namespace iutnc\mediaApp\view;
use \iutnc\mf\auth\AbstractAuthentification;
use \iutnc\mediaApp\model\User;
use \iutnc\mf\router\Router;
use \iutnc\mediaApp\utils\RenderFunction;

class UserView extends \iutnc\mediaApp\view\MainView implements \iutnc\mf\view\Renderer{
    public function render():string{
        $res="";
        $bool=0;
        if(AbstractAuthentification::connectedUser()){
            if($this->data['id']==AbstractAuthentification::connectedUser()){
                $bool=1;
            }
        }
        $gal=$this->data->galleries()->get();
        if($bool){
            $url_create_gallery=$this->router->urlFor('createGallery');
            $create_gallery=<<<EOT
            <a href='$url_create_gallery'>Create Gallery</a>
            EOT;
            $res.=$create_gallery;
            $res.="<section id='user-list'>";
        }
        foreach($gal as $g){
            if($bool==1){
                $url_modify=$this->router->urlFor('modifyGallery',[['gallery_id',$g->id]]);
                $url_delete="";
                $urls=['modify'=>$url_modify,'delete'=>$url_delete];
            }else{
                $urls=null;
            }
            $root=$this->request->root;
            $res.=RenderFunction::renderGallery($g,$root,$urls);
            }
        $res.='</section>';
        return $res;
    }
}
   