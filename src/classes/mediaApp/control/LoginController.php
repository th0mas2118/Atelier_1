<?php

namespace iutnc\mediaApp\Control;

use iutnc\mediaApp\auth\Authentification;
use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\LoginView;
use iutnc\mf\router\Router;

class LoginController extends AbstractController
{
    public function execute(): void
    {
        if (Authentification::connectedUser()) {
            Router::executeRoute('home');
            return;
        }

        if ($this->request->method === 'GET') {
            $lv = new LoginView();
            $lv->makePage();
        }

        if ($this->request->method === 'POST') {
            $username = $this->request->post['username'];
            $password = $this->request->post['password'];

            try{
                Authentification::login($username, $password);
                Router::executeRoute('home');
            }catch(\iutnc\mf\exceptions\AuthentificationException $e){
                echo 'username or password erroned';
                $this->request->method='GET';
                $this->execute();
            }
        }
    }
}
