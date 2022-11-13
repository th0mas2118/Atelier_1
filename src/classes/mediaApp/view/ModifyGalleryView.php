<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;
use \iutnc\mediaApp\model\Gallery;

class ModifyGalleryView extends MainView implements Renderer
{
    public function render(): string
    {
        $keyword = "";

        foreach ($this->data['keywords'] as $key) {
            $keyword .= $key->content . ' ';
        }

        $users = "";

        foreach ($this->data['usersWithAccess'] as $user) {
            $users .= $user->username . "\n";
        }

        $accessInput = $this->data['gallery']->isPrivate ? "<label for='isPrivate'>Accès utilisateurs (1 par ligne): </label><br><textarea rows='10' cols='50' type='text' name='usersAccess' id='usersAccess'>$users</textarea><br>" : "";
        $isPrivateCheckboxValue = $this->data['gallery']->isPrivate ? "checked" : "";
        $res = <<<EOT
        <section>
            <form method=post>
                <label name='title'>Title :</label>
                <input value='{$this->data['gallery']['name']}' type='text' name='title' placeholder="Title"><br>
                <label name='descr'>Description :</label>
                <input value='{$this->data['gallery']['description']}' type='text' name='descr' placeholder="Description"><br>
                <label name='keyword'>KeyWords :</label>
                <input value='{$keyword}' type='text' name='keyword'><br>
                <label for='isPrivate'>Galerie privée :</label>
                <input type="checkbox" id="isPrivate" name="isPrivate" $isPrivateCheckboxValue/><br>
                $accessInput
                <button name='sign_button' type="submit">Confirm</button>
            </form>
            <div class='modify-image-gallery-button'>
            <a href='{$this->data['urlAddImage']}'>AddImage</a>
            <div>
        </section>
        EOT;
        return $res;
    }
}
