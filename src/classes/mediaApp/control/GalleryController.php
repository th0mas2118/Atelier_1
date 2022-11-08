<?php

namespace iutnc\mediaApp\control; 
use iutnc\mediaApp\model\Gallery;

class GalleryController {

    /* Algorithme de execute:
 *
 *  1 Récupérer tous les tweets en utilisant le modèle Tweet
 *  2 Parcourir le résultat
 *      construire la chaine HTML qui contien :
 *      le text du tweet, l'auteur et la date de création
 *  3 Retourner un block HTML qui met en forme la liste
 *
 */

    public function execute(){

    $v = Gallery::where('id', '=', 202)->first();
    $liste_images = $v->images()->get() ;

    echo "gallery";   


    
}
}