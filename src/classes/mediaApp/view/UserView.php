<?php

namespace iutnc\mediaApp\view;
use \iutnc\mf\auth\AbstractAuthentification;
use \iutnc\mediaApp\model\User;
use \iutnc\mf\router\Router;

class UserView extends \iutnc\mediaApp\view\MainView implements \iutnc\mf\view\Renderer{
    public function render():string{
        $bool=0;
        $modify="";
        if(AbstractAuthentification::connectedUser()){
            if($this->data['id']==AbstractAuthentification::connectedUser()){
                $bool=1;
            }
        }
        $res="";
        $gal=$this->data->galleries()->get();
        if($bool){
            $url_create_gallery=$this->router->urlFor('createGallery');
            $create_gallery=<<<EOT
            <a href=$url_create_gallery>Create Gallery</a>
            EOT;
            $res.=$create_gallery;
            $res.="<section id='user-list'>";
        }
        foreach($gal as $g){
            if($bool==1){
                $url_modify=$this->router->urlFor('modifyGallery',[['gallery_id',$g->id]]);
                $modify="<a href='$url_modify'><i class='fa-solid fa-pen-to-square'></i></a>";
                $delete="<a href=''><i class='fa-solid fa-trash'></i></i></a>";
            }
            $name=$g->name()->first()['fullname'];
            $nb_image=$g->nb_images();
            $image_list=$g->images()->get();
            $count=count($gal);
            $random=rand(0,$count-1);
            if($count>0){
                if(count($image_list)>0){
                    $index=$image_list[$random]->id;
                    $img_src=$this->request->root.'/img/thumbnails/'.$index.'.jpg';
                }
                else{
                    $img_src="";
                }
                $url_gallery=$this->router->urlFor('gallery',[['id',$g->id]]);
                $res.=<<<EOT
                <article class='gallery-article'>
                    <a href='$url_gallery'>
                    <div>
                        <h3>{$g['name']}</h3>
                        <div>
                            <img class='image-article' alt='image' src={$img_src}></img>
                            {$modify}
                        </div>
                        <div class='overlay'>
                            <div id='image-data'>
                                <span>{$nb_image}</span>
                                <span>$name</span>
                                <span>{$g['created_at']}</span>
                            </div>
                            <div id='image-controls'>
                                $modify
                                $delete
                            </div>
                        </div>
                    </div>
                    </a>
                </article>
            EOT;
            }
        }
        $res.='</section>';
        return $res;
    }
}
   