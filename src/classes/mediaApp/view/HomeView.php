<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;
use \iutnc\meadiaApp\model\Image;

class Homeview extends MainView implements Renderer{
    public function render():string{
        $res="";
        foreach($this->data as $g){
            $name=$g->name()->first()['fullname'];
            $nb_image=$g->nb_images();
            $image_list=$g->images()->get();
            $count=count($image_list);
            $random=rand(0,$count-1);
            $url_gallery='https://webetu.iutnc.univ-lorraine.fr/www/pierso112u/Atelier_1/?action=gallery&id='.$g->id;
            if($count>0){
                $index=$image_list[$random]->id;
                $img_src='https://webetu.iutnc.univ-lorraine.fr/www/pierso112u/Atelier_1/img/thumbnails/'.$index.'.jpg';
                $res.=<<<EOT
                    <article class='gallery-article'>
                        <a href={$url_gallery}>
                        <div>
                        <h3>{$g['name']}</h3>
                        <div>
                            <img alt='image' src=$img_src></img>
                        </div>
                        <div>
                            <span>{$nb_image}</span>
                            <span>$name</span>
                            <span>{$g['created_at']}</span>
                        </div>
                        </div>
                        </a>
                    </article>
            EOT;
            }
        }
        return $res;
    }
}