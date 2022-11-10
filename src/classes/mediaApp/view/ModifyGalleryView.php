<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;
use \iutnc\mediaApp\model\Gallery;

class ModifyGalleryView extends MainView Implements Renderer{
    public function render():string{
        $url_addimage=$this->router->urlFor('addimage',[['gallery_id',$this->request->get['gallery_id']]]);
        $g=Gallery::select()->where('id','=',$this->request->get['gallery_id'])->first();
        $keyword="";
        foreach($g->keywords()->get() as $key){
            $keyword.=$key->content.' ';
        }
        $res=<<<EOT
        <section>
            <form method=post>
                <label name=title>Title :</label>
                <input value={$g['name']} type=text name=title placeholder="Title"><br>
                <label name=descr>Description :</label>
                <input value={$g['description']} type=text name=descr placeholder="Description"><br>
                <label name=keyword>KeyWords :</label>
                <input value='{$keyword}' type=text name=keyword><br>

                <button name=sign_button type="submit">Confirm</button>
            </form>
            <a href=$url_addimage>AddImage</a>
        </section>
        EOT;
        return $res;
    }
}