<?php

namespace iutnc\mediaApp\view;

use iutnc\mediaApp\view\MainView;
use iutnc\mf\view\Renderer;

class GalleryView extends MainView implements Renderer {
    public function render():string{
        $liste_images = $this->data->images()->get() ;
        $html= '';
        $title= $this->data->name;
        $html.=<<<EOT
        <h1>$title</h1>
        EOT;
        foreach($liste_images as $image){
            $url_image=$this->router->urlFor('image',[['id',$image->id]]);
        $html .= <<<EOT
        <article class="image-article">
            <a href=$url_image>
                <div>
                    <img alt="" src="https://webetu.iutnc.univ-lorraine.fr/www/pierso112u/Atelier_1/img/thumbnails/$image->id.jpg">
                </div>
            </a>
        </article>
        EOT;
        }

        return $html;
    }
}