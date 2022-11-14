<?php

namespace iutnc\mediaApp\Control;

use iutnc\mediaApp\auth\Authentification;
use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\model\Gallery;
use iutnc\mediaApp\model\User;
use \iutnc\mediaApp\view\HomeView;

class HomeController extends AbstractController
{
    public function execute($error = null): void
    {
        $gl = Gallery::where('hasImage', '=', true);

        if (!Authentification::connectedUser()) {
            $gl = $gl->where('isPrivate', '=', false);
        }

        if (isset($this->request->get['page']) && !empty($this->request->get['page'])) {
            $page = $this->request->get['page'] - 1;
            $gl = $gl->orderBy('created_at', 'DESC')->skip($page * 20)->take(20)->get();
        } else {
            $gl = $gl->orderBy('created_at', 'DESC')->take(20)->get();
        }

        if (Authentification::connectedUser()) {
            $userAccess = User::where('id', '=', Authentification::connectedUser())->first()->access()->pluck('gallery_id')->toArray();

            $gl = $gl->filter(function ($k) use ($userAccess) {
                return ($k['isPrivate'] == 0) || ($k['isPrivate'] == 1 && in_array($k['id'], $userAccess)) || ($k['author'] == Authentification::connectedUser());
            });
        }
        $nbreArticle = Gallery::where('hasImage', '=', true)->count();
        $hv = new HomeView(["galleryList" => $gl, "nombreArticle" => $nbreArticle]);
        $hv->makePage();
    }
}
