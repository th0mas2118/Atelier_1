<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class Homeview extends MainView implements Renderer{
    public function render():string{
        $res="";
        foreach($this->data as $g){
            $name=$g->name()->first()['fullname'];
            $nb_image=$g->nb_images();
            $random=rand(206,$nb_image);
            $img_src='https://webetu.iutnc.univ-lorraine.fr/www/pierso112u/Atelier_1/img/'.$random.'.jpg';
            $res.=<<<EOT
                <article class='gallery-article'>
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
                </article>
            EOT;
        }
        return $res;
    }
}