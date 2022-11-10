<?php

namespace iutnc\mediaApp\view;

use iutnc\mf\router\Router;
use iutnc\mf\view\AbstractView;
use \iutnc\mf\auth\AbstractAuthentification;

class MainView extends AbstractView
{
    protected function makeBody(): string
    {
        return "
            {$this->renderHeader()}
            <main>
                {$this->render()}
            </main>
            {$this->renderFooter()}
        ";
    }

    public function renderHeader(): string
    {
        $url_home=$this->router->urlFor('home');
        $url_login=$this->router->urlFor('login');
        $url_about=$this->router->urlFor('about');
        $url_logout=$this->router->urlFor('logout');

        if(AbstractAuthentification::connectedUser()){
            $log="<a href=$url_logout>Logout</a>";
        }
        else{
            $log="<a href=$url_login>Login</a>";
        }
        return "
            <header>
                <div>
                    <a href=$url_home>
                        <h1>MediaPhoto</h1>
                    </a>
                </div>
                <nav>
                    <a href=$url_home>Home</a>
                    $log
                    <a href=$url_about>A propos</a>
                </nav>
                <div>
                    <form>
                        <input type='text' />
                        <input type='submit' value='search' />
                    </form>
                </div>
            </header>
        ";
    }

    public function renderFooter(): string
    {
        $url_home=$this->router->urlFor('home');
        $url_about=$this->router->urlFor('about');
        $url_contact="";
        return "
            <footer>
                <div>
                    <h2>
                        MediaPhoto
                    </h2>
                </div>    
                <nav>
                    <a href=$url_home>Home</a>
                    <a href=$url_about>A propos</a>
                    <a href=$url_contact>Contact</a>
                </nav
        ";
    }
}
