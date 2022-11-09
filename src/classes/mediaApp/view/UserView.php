<?php

namespace iutnc\mediaApp\view;
class UserView extends \iutnc\mediaApp\view\MainView implements \iutnc\mf\view\Renderer{
    public function render():string{
        $res="";
        foreach($this->data as $g){
            $name=$g->name()->first()['fullname'];
            $nb_image=$g->nb_images();
            $image_list=$g->images()->get();
            $count=count($image_list);
            $random=rand(0,$count-1);
            if($count>0){
                $index=$image_list[$random]->id;
                $img_src='https://webetu.iutnc.univ-lorraine.fr/www/pierso112u/Atelier_1/img/thumbnails/'.$index.'.jpg';
                $res.=<<<EOT
                <article>
                    <div>
                        <h3>{$g['name']}</h3>
                        <div>
                            <img alt='image' src={$img_src}></img>
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
   