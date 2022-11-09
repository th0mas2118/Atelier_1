<?php

namespace iutnc\mediaApp\view;

use  iutnc\mf\view\Renderer;
use iutnc\mf\router\Router;

class ImageView extends MainView implements Renderer{
    public function render():string{
        $image=$this->data;
        $img_src='https://webetu.iutnc.univ-lorraine.fr/www/pierso112u/Atelier_1/img/full_size/'.$image['id'].'.jpg';
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
                    <td>Photo date : </td>
                    <td>{$image['photo_date']}</td
                </tr>
            </table>
        EOT;
        //*comments as list of article of comment
        $comments="";
        $galery_name=$image->galleryName()->first()->name;
        $r=new Router();
        $url_gallery=$r->urlFor('gallery',[['id',$image->galleryName()->first()->id]]);
        $res=<<<EOT
        <section class='img-fullsize'>
            <a href=$url_gallery><h1>Gallery name : $galery_name</h1></a>
            <h3>Image name : {$image['title']}</h1>
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