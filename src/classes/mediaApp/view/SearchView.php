<?php

namespace iutnc\mediaApp\view;

use iutnc\mediaApp\utils\RenderFunction;
use \iutnc\mf\view\Renderer;

class SearchView extends MainView implements Renderer
{
    public function render(): string
    {
        $galleries = $this->data['galleries'];
        $images = $this->data['images'];

        $html = '<h1>Galeries</h1><section id="gallery-list">';
        $root = $this->request->root;
        foreach ($galleries as $gallery) {
            $html .= RenderFunction::renderGallery($gallery, $root, null);
        }

        $html .= '</section><h1>Image</h1><section id="images-list">';

        foreach ($images as $image) {
            $html .= "<span>$image->id</span><br>";
        }
        $html .= '</section>';
        return $html;
    }
}
