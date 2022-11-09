<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class AddImageView extends MainView implements Renderer{
    public function render():string{
        $res=<<<EOT
            <section>
                <form method=post>
                <label for="title">Title</label>
                <input class="forms-text" type=text name=title placeholder="title">
                <label for="Description">description</label>
                <input class="forms-text" type=text name=Description placeholder="Description">
                <label for="Keywords">Keywords</label>
                <input class="forms-text" type=text name=Keywords placeholder="keywords">

                <label for="img">Choose a new picture to add:</label>
                <input type="file" id="img" name="img" accept="image/jpeg">
                <button class="forms-button" name=add_button type="submit">Submit</button>
                </form>
            </section>
            EOT;
        return $res;
    }
}