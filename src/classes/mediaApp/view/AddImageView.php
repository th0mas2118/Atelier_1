<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class AddImageView extends MainView implements Renderer{
    public function render():string{
        $res=<<<EOT
            <section>
                <form method=post>
                <label for="img">Choose a new picture to add:</label>
                <input type="file" id="img" name="img" accept="image/png, image/jpeg">
                <button class="forms-button" name=add_button type="submit">Submit</button>
                </form>
            </section>
            EOT;
        return $res;
    }
}