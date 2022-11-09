<?php

namespace iutnc\mediaApp\view;

use iutnc\mediaApp\view\MainView;
use iutnc\mf\view\Renderer;

class GalleryView extends MainView implements Renderer {
    public function render():string{
        $html= '';
        foreach($this->data as $image){
        $html .= <<<EOT
        <article class='gallery-article'>
            <div>
                <img alt="" src="https://webetu.iutnc.univ-lorraine.fr/www/pierso112u/Atelier_1/img/$image->id.jpg">
            </div>
        </article>
        EOT;
        }

        return $html;
    }
}