<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class LoginView extends MainView implements Renderer{
    public function render():string{
        $res=<<<EOT
            <section>
                <form method=post>
                    <input class="forms-text" type=text name=username placeholder="username">
                    <input class="forms-text" type=password name=password placeholder="password">
                    <button class="forms-button name=login_button type=submit">Login</button>
                </form>
            </section>
            EOT;
        return $res;
    }
}