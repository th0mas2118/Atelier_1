<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class AboutView extends MainView implements Renderer{
    public function render():string{
        $res=<<<EOT
            <section>
               QUEUE
            </section>
            EOT;
        return $res;
    }
}