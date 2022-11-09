<?php

namespace iutnc\mediaApp\control; 

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\AddimageView;
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
        if($this->request->method==='GET'){
            $imgView = new AddimageView();
            $imgView->makePage();
        }
    }
}