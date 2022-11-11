<?php

namespace iutnc\mediaApp\view;

use  iutnc\mf\view\Renderer;
use iutnc\mf\router\Router;
use \iutnc\mf\auth\AbstractAuthentification;

class ImageView extends MainView implements Renderer{
    public function render():string{
        $image=$this->data;
        $img_src=$this->request->root.'/img/full_size/'.$image['id'].'.jpg';
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
        if(AbstractAuthentification::connectedUser()===$image['author']){
            $m=$this->router->urlFor('modifyImage',[['image_id',$image['id']]]);
            $modify="<a href='$m'>Modify</a>";
        }
        else{
            $modify="";
        }
        $galery_name=$image->galleryName()->first()->name;
        $url_gallery=$this->router->urlFor('gallery',[['gallery_id',$image->galleryName()->first()->id]]);
        $res=<<<EOT
        <section class='img-fullsize'>
            <div class='title'>
            <a href=$url_gallery><h1>Gallery name : $galery_name</h1></a>
            <h3>Image name : {$image['title']}</h1>
            </div>
            <div><img alt='image' src='{$img_src}'></img></div>
            <div>
                <div id='modify-image-button'>
                    {$modify}
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