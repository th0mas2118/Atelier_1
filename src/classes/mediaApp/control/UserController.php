<?php

namespace iutnc\mediaApp\control;

use iutnc\mediaApp\auth\Authentification;
use iutnc\mediaApp\model\Gallery;
use \iutnc\mediaApp\model\User;
use \iutnc\mf\router\Router;
use \iutnc\mf\auth\AbstractAuthentification;

class UserController extends \iutnc\mf\control\AbstractController
{
    public function execute($error = null): void
    {
        if ($this->validateParams(['get' => ['id']]) !== true) {
            if (Authentification::connectedUser()) {
                $u = User::select()->where('id', '=', Authentification::connectedUser())->first();
                $uv = new \iutnc\mediaApp\view\UserView(['user' => $u, 'galleries' => $u->galleries()->get()]);
                $uv->makePage();
                return;
            }
            Router::executeRoute('home');
            return;
        }
        $id = $this->request->get['id'];

        if (is_null(User::find($id))) {
            Router::executeRoute('home');
            return;
        }

        $u = User::select()->where('id', '=', $id)->first();

        $gl = Gallery::where('author', '=', $id);

        if (!Authentification::connectedUser()) {
            $gl = $gl->where('isPrivate', '=', false)->get();
        } else {
            $userAccess = User::where('id', '=', Authentification::connectedUser())->first()->access()->pluck('gallery_id')->toArray();

            $gl = $gl->get()->filter(function ($k) use ($userAccess) {
                return ($k['isPrivate'] == 0) || ($k['isPrivate'] == 1 && in_array($k['id'], $userAccess)) || ($k['author'] == Authentification::connectedUser());
            });
        }

        $uv = new \iutnc\mediaApp\view\UserView(['user' => $u, 'galleries' => $gl]);
        $uv->makePage();
    }
}
