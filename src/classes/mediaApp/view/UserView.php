<?php

namespace iutnc\mediaApp\view;
use \iutnc\mf\auth\AbstractAuthentification;
use \iutnc\mediaApp\model\User;
use \iutnc\mf\router\Router;

class UserView extends \iutnc\mediaApp\view\MainView implements \iutnc\mf\view\Renderer{
    public function render():string{
        $bool=false;
        $modify="";
        //$url_add_image=$this->router->urlFor();
        if(AbstractAuthentification::connectedUser()){
            if($this->data['id']==AbstractAuthentification::connectedUser()){
                echo 'hello world';
            }
        }
        $res="";
        $gal=$this->data->galleries()->get();
        foreach($gal as $g){
            $name=$g->name()->first()['fullname'];
            $nb_image=$g->nb_images();
            $image_list=$g->images()->get();
            $count=count($image_list);
            $random=rand(0,$count-1);
            if($count>0){
                $index=$image_list[$random]->id;
                $img_src=$this->request->root.'/img/thumbnails/'.$index.'.jpg';
                $res.=<<<EOT
                <article class='gallery-article'>
                    <div>
                        <h3>{$g['name']}</h3>
                        <div>
                            <img class='image-article' alt='image' src={$img_src}></img>
                            {$modify}
                        </div>
                        <div>
                            <span>{$nb_image}</span>
                            <span>$name</span>
                            <span>{$g['created_at']}</span>
                        </div>
                    </div>
                </article>
            EOT;
            }
        }
        return $res;
    }
}
   