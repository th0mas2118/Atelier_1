<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;

class AddImageView extends MainView implements Renderer
{
    public function render(): string
    {
        $res = <<<EOT
            <section>
                <form method="post" enctype="multipart/form-data">
                <label for="title">Title : </label>
                <input class="forms-text" type=text name=title placeholder="title">
                <label for="description">Description : </label>
                <input class="forms-text" type=text name=description placeholder="description">
                <label for="Keywords">Keywords : </label>
                <input class="forms-text" type=text name=keywords placeholder="keywords">
                <label for="img">Choose a new picture to add:</label>
                <input type="file" id="img" name="img" accept="image/jpeg, image/jpg, image/png">
                <input type="hidden" name="galleryId" value="{$this->data['gallery_id']}">
                <button class="forms-button" name=add_button type="submit"> Confirm </button>
                </form>
            </section>
            EOT;
        return $res;
    }
}
