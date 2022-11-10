<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class CreateGalleryView extends MainView implements Renderer{
    public function render():string{
        $res=<<<EOT
        <section class="createGallery">
                <form method=post>
                <h1>CREATE GALLERY</h1>
                    <label name=title>Title :</label>
                    <input type=text name=title placeholder="Title"><br>
                    <label name=descr>Description :</label>
                    <input type=text name=descr placeholder="Description"><br>
                    <label name=keyword placeholder="KeyWords">KeyWords :</label>
                    <input type=text name=keyword><br>

                    <button name=sign_button type="submit">Confirm</button>
                </form>
            </section>
        EOT;
        return $res;
    }
}