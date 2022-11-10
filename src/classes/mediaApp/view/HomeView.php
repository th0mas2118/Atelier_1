<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;
use \iutnc\meadiaApp\model\Image;
use \iutnc\mediaApp\utils\RenderFunction;

class Homeview extends MainView implements Renderer
{
    public function render(): string
    {
        $res = "<section id='home-list'>";
        $root = $this->request->root;
        foreach ($this->data as $g) {
            $res .= RenderFunction::renderGallery($g, $root);
        }
        $res .= "</section>";
        return $res;
    }
}
