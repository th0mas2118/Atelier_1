<?php

namespace iutnc\mediaApp\Control;

use iutnc\mediaApp\auth\Authentification;
use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\LoginView;
use iutnc\mf\router\Router;

class LoginController extends AbstractController
{
    public function execute($error = null): void
    {
        if (Authentification::connectedUser()) {
            Router::executeRoute('home');
            return;
        }

        if ($this->request->method === 'GET') {
            $lv = new LoginView($error);
            $lv->makePage();
            $error = null;
        }

        if ($this->request->method === 'POST') {
            $tmp = $this->validateParams(['post' => ['username', 'password']]);
            if ($tmp !== true) {
                $error;

                foreach ($tmp as $t) {
                    $error .= $t . '<br>';
                }

                $this->request->method = 'GET';
                $this->execute($error);
                return;
            }
            $username = $this->request->post['username'];
            $password = $this->request->post['password'];

            try {
                Authentification::login($username, $password);
                Router::executeRoute('home');
            } catch (\iutnc\mf\exceptions\AuthentificationException $e) {
                $this->request->method = 'GET';
                $this->execute($e->getMessage());
            }
        }
    }
}
