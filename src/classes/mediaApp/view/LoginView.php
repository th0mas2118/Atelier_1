<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class LoginView extends MainView implements Renderer
{
    public function render(): string
    {
        $res = <<<EOT
            <section class="login">
                <form method=post>
                <h1>LOGIN</h1>
                    <label namme='username'>Username :</label>
                    <input class="forms-text" type=text name=username placeholder="username">
                    <label name='password'>Password : </label>
                    <input class="forms-text" type=password name=password placeholder="password">
                    <button class="forms-button name=login_button type=submit">Login</button>
                </form>
            </section>
            EOT;
        return $res;
    }
}
