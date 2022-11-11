<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;
use \iutnc\mediaApp\model\Gallery;
use iutnc\mediaApp\model\Image;

class ModifyImageView extends MainView implements Renderer
{
    public function render(): string
    {
        $keyword = "";
        foreach ($this->data['keywords'] as $key) {
            $keyword .= $key->content . ' ';
        }
        $res = <<<EOT
        <section>
            <form method=post>
                <label name=title>Title :</label>
                <input value='{$this->data['image']->title}' type=text name=title placeholder="Title"><br>
                <label name=descr>Description :</label>
                <input value='{$this->data['image']->description}' type=text name=descr placeholder="Description"><br>
                <label name=keyword>KeyWords :</label>
                <input value='{$keyword}' type=text name=keyword><br>
                <button name=sign_button type="submit">Confirm</button>
            </form>
        </section>
        EOT;
        return $res;
    }
}
