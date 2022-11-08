<?php

namespace iutnc\mediaApp\view;

class UserView extends \iutnc\mediaApp\view\MainView implements \iutnc\mf\view\Renderer{
    public function render():string{
        $res="";
        foreach($this->data as $g){
            $name=$g->name()->first()['fullname'];
            $nb_image=$g->nb_images();
            echo $g->images()->get();
            echo $nb_image;
            $res.=<<<EOT
                <article>
                    <div>
                        <h3>{$g['name']}</h3>
                        <div>
                            <img alt='image'></img>
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
   