<?php

namespace iutnc\mediaApp\control;

use iutnc\mediaApp\auth\Authentification;
use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\SignUpView;
use iutnc\mf\router\Router;

class SignUpController extends AbstractController
{
    public function execute($error = null): void
    {
        if (Authentification::connectedUser()) {
            Router::executeRoute('home');
            return;
        }

        if ($this->request->method === 'GET') {
            $sv = new SignUpView();
            $sv->makePage();
        }

        if ($this->request->method === 'POST') {
            $username = $this->request->post['username'];
            $fullname = $this->request->post['fullname'];
            $password = $this->request->post['password'];
            $passwordConfirmation = $this->request->post['password-verify'];

            if (empty($username) || empty($fullname) || empty($password) || empty($passwordConfirmation)) {
                echo "Veuillez remplir tout les champs";
                $this->request->method = 'GET';
                $this->execute();
                return;
            }

            if ($password !== $passwordConfirmation) {
                echo "Les mots de passes ne correspondent pas";
                $this->request->method = 'GET';
                $this->execute();
                return;
            }

            try {
                Authentification::register($username, $fullname, $password);
                Router::executeRoute("home");
            } catch (\Throwable $th) {
                echo $th->getMessage();
                $this->request->method = 'GET';
                $this->execute();
            }
        }
    }
}
