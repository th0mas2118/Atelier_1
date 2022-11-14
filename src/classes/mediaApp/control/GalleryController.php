<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\model\Gallery;
use \iutnc\mf\router\Router;

class GalleryController extends AbstractController
{

    /* Algorithme de execute:
 *
 *  1 Récupérer tous les tweets en utilisant le modèle Tweet
 *  2 Parcourir le résultat
 *      construire la chaine HTML qui contien :
 *      le text du tweet, l'auteur et la date de création
 *  3 Retourner un block HTML qui met en forme la liste
 *
 */

    public function execute($error = null): void
    {
        if ($this->validateParams(['get' => ['gallery_id']]) !== true) {
            Router::executeRoute('home');
            return;
        }

        $id = $this->request->get['gallery_id'];
        if (is_null(Gallery::find($id))) {
            Router::executeRoute('home');
            return;
        }

        if (isset($this->request->get['page']) && !empty($this->request->get['page'])) {
            $page = $this->request->get['page'] - 1;
            $gallery = Gallery::where('id', '=', $id)->first();
            $liste_images = $gallery->images()->orderBy('created_at', 'DESC')->skip($page * 20)->take(20)->get();
        }else{
            $gallery = Gallery::where('id', '=', $id)->first();
            $liste_images = $gallery->images()->orderBy('created_at', 'DESC')->take(20)->get();
        }
        $nbreArticle = Gallery::where('id', '=', $id)->first()->nb_images();

        $gv = new \iutnc\mediaApp\view\GalleryView(['gallery' => $gallery, 'images' => $liste_images, 'nombreArticle' => $nbreArticle]);
        $gv->makePage();
    }
}
