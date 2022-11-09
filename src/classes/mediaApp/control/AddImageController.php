<?php

namespace iutnc\mediaApp\control; 

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\model\Gallery;
use \iutnc\mf\router\Router;

class AddImageController extends AbstractController{

    /* Algorithme de execute:
 *
 *  1 Récupérer tous les tweets en utilisant le modèle Tweet
 *  2 Parcourir le résultat
 *      construire la chaine HTML qui contien :
 *      le text du tweet, l'auteur et la date de création
 *  3 Retourner un block HTML qui met en forme la liste
 *
 */

    public function execute():void{
        if(!isset($this->request->get['id'])){
            Router::executeRoute('home');
        }
        $id = $this->request->get['id'];
        $v = Gallery::where('id', '=', $id)->first();
        $liste_images = $v->images()->get() ;


        $gv = new \iutnc\mediaApp\view\GalleryView($liste_images);
        $gv->makePage();
    }
}