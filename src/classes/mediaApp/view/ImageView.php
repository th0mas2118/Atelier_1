<?php

namespace iutnc\mediaApp\view;

use  iutnc\mf\view\Renderer;
use iutnc\mf\router\Router;
use \iutnc\mf\auth\AbstractAuthentification;
use \iutnc\mediaApp\model\User;

class ImageView extends MainView implements Renderer
{
    public function render(): string
    {
        $image = $this->data['image'];
        $img_src = $this->request->root . '/img/full_size/' . $image['id'] . '.jpg';
        //$table as table_exif
        $table = <<<EOT
            <table>
                <tr>
                    <td>Altitude :</td>
                    <td>{$image['altitude']}</td>
                </tr>
                <tr>
                    <td>Longitude :</td>
                    <td>{$image['longitude']}</td
                </tr>
                <tr>
                    <td>Latitude :</td>
                    <td>{$image['latitude']}</td
                </tr>
                <tr>
                    <td>Photo date : </td>
                    <td>{$image['photo_date']}</td
                </tr>
            </table>
        EOT;

        //*comments as list of article of comment
        $comments = "";

        if (AbstractAuthentification::connectedUser() === $image['author']) {
            $m = $this->router->urlFor('modifyImage', [['image_id', $image['id']]]);
            $d = $this->router->urlFor('deleteImage', [['image_id', $image['id']]]);
            $modify = "<a href='$m'>Modify</a>";
            $delete = "<a href='$d'>Delete</a>";
        } else {
            $modify = "";
            $delete = "";
        }

        $keywords = "";

        foreach ($this->data['image']->keywords()->get() as $key) {
            $keywords .= $key->content . ' ';
        }

        $user = User::where('id', '=', $this->data['image']['author'])->first();
        $url_user = $this->router->urlFor('user', [['id', $this->data['image']['author']]]);

        $res = <<<EOT
        <section class='img-fullsize'>
            <div><img alt='image' src='{$img_src}'></img></div>
            <div class='title'>
            <a href='{$this->data['galleryUrl']}'><h1>Gallery name : {$this->data['galleryName']}</h1></a>
            <h3>Image name : {$image['title']}</h1>
            <span>Keywords : $keywords</span>
            </div>
            <div>
                <div class='modify-image-gallery-button'>
                    {$modify}
                    {$delete}
                </div>
                <div>
                    <h3>Author : <a href="$url_user">@{$user['username']}</a></h3>
                </div>
                <div>
                    <h3>Description :</h3>
                    {$image['description']}
                </div>
                    <h3>Exif_data :</h3>
                    {$table}
                <div>
                </div>
                <div>
                    <h3>Comments :</h3>
                    {$comments}
                </div>
            </div>
        </section>
        EOT;
        return $res;
    }
}
