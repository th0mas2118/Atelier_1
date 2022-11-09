<?php

namespace iutnc\mediaApp\view;

use iutnc\mf\router\Router;
use iutnc\mf\view\AbstractView;

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
        return "
            <header>
                <div>
                    <a>
                        <h1>MediaPhoto</h1>
                    </a>
                </div>
                <nav>
                    <a href=$url_home>Home</a>
                    <a href=$url_login>Login</a>
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
        return "";
    }
}
