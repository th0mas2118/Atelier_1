<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class AboutView extends MainView implements Renderer{
    public function render():string{
        $res=<<<EOT
            <section id='about'>
               <a href="https://github.com/th0mas2118/Atelier_1/">GitHub de l'atelier</a>
            </section>
            EOT;
        return $res;
    }
}