<?php

namespace iutnc\mediaApp\Control;

use iutnc\mediaApp\auth\Authentification;
use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\LoginView;
use iutnc\mf\router\Router;

class LogoutController extends AbstractController
{
    public function execute(): void
    {
        if (!Authentification::connectedUser()) {
            Router::executeRoute('home');
        }

        Authentification::logout();
        Router::executeRoute('home');
    }
}
