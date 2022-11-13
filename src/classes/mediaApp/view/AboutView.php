<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class AboutView extends MainView implements Renderer{
    public function render():string{
        $res=<<<EOT
            <section id='about'>
               <a href="https://github.com/th0mas2118/Atelier_1/">GitHub de l'atelier</a>
               <a href="{$this->request->root}/img/conception/cas_utilisation.jpg" target="blank">Cas d'utilisation</a>
               <a href="{$this->request->root}/img/conception/modele_donnee.jpg" target="blank">Modèle de données</a>
               <a href="{$this->request->root}/img/conception/scenario.jpg" target="blank">Scenario</a>
            </section>
            EOT;
        return $res;
    }
}