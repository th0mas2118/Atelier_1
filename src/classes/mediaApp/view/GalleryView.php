<?php

namespace iutnc\mediaApp\view;

use iutnc\mediaApp\view\MainView;
use iutnc\mf\view\Renderer;
use \iutnc\mediaApp\utils\RenderFunction;

class GalleryView extends MainView implements Renderer {
    public function render():string{
        //$this->data est une 
        $liste_images = $this->data->images()->get() ;
        $html= '<section id="gallery-list">';
        $title= $this->data->name;
        $html.=`<h1>{$title}</h1>`;
        $root=$this->request->root;
        foreach($liste_images as $image){
            $url_image=$this->router->urlFor('image',[['id',$image->id]]);
            $html.=RenderFunction::renderImage($root,$image,$url_image);
        $html.="</section>";
        return $html;
    }
}