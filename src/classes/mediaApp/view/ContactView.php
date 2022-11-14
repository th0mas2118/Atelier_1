<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class ContactView extends MainView implements Renderer{
    public function render():string{
        $res=<<<EOT
            <section id='about'>
               <a href="mailto:sebastien.demange3@etu.univ-lorraine"> Sébastien DEMANGE </a>
               <a href="mailto:thomas.pierson3@etu.univ-lorraine"> Thomas PIERSON </a> 
               <a href="mailto:asley.rakotoarison5@etu.univ-lorraine.fr"> Asley RAKOTOARISON </a> 
               <a href="mailto:anthony.dragun8@etu.univ-lorraine.fr"> Anthony DRAGUN </a> 
            </section>
            EOT;
        return $res;
    }
}