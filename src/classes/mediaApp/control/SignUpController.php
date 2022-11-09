<?php

namespace iutnc\mediaApp\control;

use iutnc\mediaApp\auth\Authentification;
use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\SignUpView;
use iutnc\mf\router\Router;

class SignUpController extends AbstractController
{
    public function execute(): void
    {
        if ($this->request->method === 'GET') {
            $sv = new SignUpView();
            $sv->makePage();
        }

        if ($this->request->method === 'POST') {
            $username = $this->request->post['username'];
            $fullname = $this->request->post['fullname'];
            $password = $this->request->post['password'];
            $passwordConfirmation = $this->request->post['password-verify'];
            echo $fullname;
            // if (empty($username) || empty($fullname) || empty($password) || empty($passwordConfirmation)) {
            //     echo "Veuillez remplir tout les champs";
            //     return;
            // }

            // if ($password !== $passwordConfirmation) {
            //     echo "Les mots de passes ne correspondent pas";
            //     return;
            // }

            // try {
            //     Authentification::register($username, $password, $fullname);
            //     Router::executeRoute("home");
            // } catch (\Throwable $th) {
            //     throw new $th;
            // }
        }
    }
}
