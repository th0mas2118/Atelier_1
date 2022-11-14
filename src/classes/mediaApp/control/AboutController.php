<?php

namespace iutnc\mediaApp\control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\view\AboutView;
use \iutnc\mf\router\Router;

class AboutController extends AbstractController
{


    public function execute($error = null): void
    {
        if ($this->request->method === 'GET') {
            $AboutView = new AboutView();
            $AboutView->makePage();
        }
    }
}
