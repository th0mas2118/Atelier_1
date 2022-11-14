<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\ContactView;
use \iutnc\mf\router\Router;

class ContactController extends AbstractController
{


    public function execute($error = null): void
    {
        if ($this->request->method === 'GET') {
            $AboutView = new ContactView();
            $AboutView->makePage();
        }
    }
}
