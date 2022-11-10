<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class SignUpView extends MainView implements Renderer
{
    public function render(): string
    {
        $res = <<<EOT
            <section class="signup">
        
                <form method=post>
                <h1>REGISTER</h1>
                    <label name='fullname'>Fullname :</label>
                    <input type="text" name="fullname" placeholder="full name">
                    <label name='username'>Username :</label>
                    <input type="text" name="username" placeholder="username">
                    <label name='password'>Password :</label>
                    <input type="password" name="password" placeholder="password">
                    <label name='password-verify'>Retype Password :</label>
                    <input type="password" name="password-verify" placeholder="retype password">

                    <button class="forms-button" name=sign_button type="submit">Create</button>
                </form>
            </section>
            EOT;
        return $res;
    }
}
