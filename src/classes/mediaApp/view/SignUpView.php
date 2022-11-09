<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class SignUpView extends MainView implements Renderer
{
    public function render(): string
    {
        $res = <<<EOT
            <section>
                <form method=post>
                    <input type="text" name="fullname" placeholder="full name">
                    <input type="text" name="username" placeholder="username">
                    <input type="password" name="password" placeholder="password">
                    <input type="password" name="password-verify" placeholder="retype password">

                    <button class="forms-button" name=sign_button type="submit">Create</button>
                </form>
            </section>
            EOT;
        return $res;
    }
}
