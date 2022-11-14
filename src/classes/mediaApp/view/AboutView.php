<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class AboutView extends MainView implements Renderer{
    public function render():string{
        $res=<<<EOT
            <section id='about'>
            <div>
               <a href="https://github.com/th0mas2118/Atelier_1/">GitHub de l'atelier</a>
               <a href="{$this->request->root}/img/conception/cas_utilisation.jpg" target="blank">Cas d'utilisation</a>
               <a href="{$this->request->root}/img/conception/modele_donnee.jpg" target="blank">Modèle de données</a>
               <a href="{$this->request->root}/img/conception/scenario.jpg" target="blank">Scenario</a>
               <a href="https://www.figma.com/file/7TLLcaVJWpi2rd0KFP6kYk/MediaPhoto" target="blank">Maquette</a>
            </div>
            </section>
            EOT;
        return $res;
    }
}