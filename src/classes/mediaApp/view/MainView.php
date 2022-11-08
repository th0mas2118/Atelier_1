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
        return "
            <header>
                <div>
                    <a>
                        <h1>MediaPhoto</h1>
                    </a>
                </div>
                <nav>
                    <a>Home</a>
                    <a>Login</a>
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
