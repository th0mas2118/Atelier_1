<?php

namespace iutnc\mediaApp\view;

use  iutnc\mf\view\Renderer;

class ImageView extends MainView implements Renderer{
    public function render():string{
        $image=$this->data;
        $img_src='https://webetu.iutnc.univ-lorraine.fr/www/pierso112u/Atelier_1/img/'.$image['id'].'.jpg';
        //$table as table_exif
        $table=<<<EOT
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
                    <td>Photo date :</td>
                    <td>{$image['photo_date']}</td
                </tr>
            </table>
        EOT;
        //*comments as list of article of comment
        $comments="";
        $res=<<<EOT
        <section>
            <h1>{$image['title']}</h1>
            <div><img alt='image' src={$img_src}></img></div>
            <div>
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
        </section
        EOT;
        return $res;
    }
}