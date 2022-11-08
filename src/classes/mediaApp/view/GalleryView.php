<?php

namespace iutnc\mediaApp\view;

use iutnc\mediaApp\view\MainView;
use iutnc\mf\view\Renderer;

class GalleryView extends MainView implements Renderer {
    public function render():string{
        $html= '';
        foreach($this->data as $image){
        $html .= <<<EOT
        <article>
            <div>
                <h1>$image->id</h1>
            </div>
        </article>
        EOT;
        }

        return $html;
    }
}