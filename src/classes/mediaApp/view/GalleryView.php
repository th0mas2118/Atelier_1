<?php

namespace iutnc\mediaApp\view;

use iutnc\mediaApp\view\MainView;
use iutnc\mf\view\Renderer;

class GalleryView extends MainView implements Renderer {
    public function render():string{
        $liste_images = $this->data->images()->get() ;
        $html= '<section id="gallery-list">';
        $title= $this->data->name;
        $html.=`<h1>{$title}</h1>`;
        foreach($liste_images as $image){
            $img_src=$this->request->root.'/img/thumbnails/'.$image->id.'.jpg';
            $url_image=$this->router->urlFor('image',[['id',$image->id]]);
        $html .= <<<EOT
        <article class="image-article">
            <a href=$url_image>
                <div>
                    <img alt="" src=$img_src>
                </div>
            </a>
        </article>
        EOT;
        }
        $html.="</section>";
        return $html;
    }
}