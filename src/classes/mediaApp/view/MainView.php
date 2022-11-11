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
        $url_home = $this->router->urlFor('home');
        $url_login = $this->router->urlFor('login',[['code_erreur', null]]);
        $url_about = $this->router->urlFor('about');
        $url_logout = $this->router->urlFor('logout');
        $url_user = $this->router->urlFor('user', [['id', AbstractAuthentification::connectedUser()]]);
        $url_register=$this->router->urlFor('signup');

        if (AbstractAuthentification::connectedUser()) {
            $user_button = "<a href=$url_user>My Profile</a>";
            $log = "<a href=$url_logout>Logout</a>";
            $register='';
        } else {
            $user_button = "";
            $log = "<a href=$url_login>Login</a>";
            $register="<a href=$url_register>Register</a>";
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
                    $register
                    $log
                    <a href=$url_about>A propos</a>
                    $user_button
                </nav>
                <div>
                    <form action=''>
                        <input type='hidden' name='action' id='action' value='search' />
                        <input type='text' name='keywords' id='keywords'/>
                        <input type='submit' value='search' />
                    </form>
                </div>
            </header>
        ";
    }

    public function renderFooter(): string
    {
        $url_home = $this->router->urlFor('home');
        $url_about = $this->router->urlFor('about');
        $url_contact = "";
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
