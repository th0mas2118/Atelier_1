<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class ModifyGalleryView extends MainView Implements Renderer{
    public function render():string{
        $url_addimage=$this->router->urlFor('addimage');
        $res=<<<EOT
        <section>
            <a href=$url_addimage>AddImage</a>
        </section>
        EOT;
        return $res;
    }
}