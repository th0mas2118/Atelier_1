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
        $html = "<h1>{$title}</h1>";
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
