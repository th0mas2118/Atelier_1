<?php

namespace iutnc\mediaApp\view;

use iutnc\mediaApp\view\MainView;
use iutnc\mf\view\Renderer;
use \iutnc\mediaApp\utils\RenderFunction;

class GalleryView extends MainView implements Renderer
{
    public function render(): string
    {
        $title = $this->data['gallery']->name;
        $keyword="";
        $html = "<h1>{$title}</h1>";
        $html .= "<h3>Description : {$this->data['gallery']->description}</h3>";
        foreach ($this->data['gallery']->keywords as $key) {
            $keyword .= $key->content . ' ';
        }
        $html .="<span>Keywords :$keyword</span>";
        $html .= "";
        $html .= '<section id="gallery-list">';
        $root = $this->request->root;
        foreach ($this->data['images'] as $image) {
            $url_image = $this->router->urlFor('image', [['id', $image->id]]);
            $html .= RenderFunction::renderImage($image, $root, $url_image);
        }
        $html .= "</section>";
        return $html;
    }
}
