<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

function jsonPrint($printable){
    $json=json_encode($printable,JSON_PRETTY_PRINT);
    return "<pre>{$json}</pre>";
}
class Homeview extends MainView implements Renderer{
    public function render():string{
        $res="";
        foreach($this->data as $g){
            $name=$g->name()->first()['fullname'];
            $nb_image=$g->nb_images();
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