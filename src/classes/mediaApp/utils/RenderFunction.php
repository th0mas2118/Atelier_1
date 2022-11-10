<?php

namespace iutnc\mediaApp\utils;

use \iutnc\mf\router\Router;

class RenderFunction{
    public static function renderGallery($gal,$root,$urls=null){
        $url_modify="";
        if($urls){
            $url_modify=$urls['modify'];
            $url_delete=$urls['delete'];
            $image_controls=<<<EOT
            <a href={$url_modify}><i class='fa-solid fa-pen-to-square'></i></a>
            <a href={$url_delete}><i class='fa-solid fa-trash'></i></a>
            EOT;
        }
        else{
            $image_controls="";
        }
        $r=new Router();
        $url_gallery=$r->urlFor('gallery',[['gallery_id',$gal->id]]);
        $name=$gal->name()->first()['fullname'];
        $images_list=$gal->images()->get();
        $count=count($images_list);
        $random=rand(0,$count-1);
        if($count>0){
            $index=$images_list[$random]->id;
            $img_src=$root.'/img/thumbnails/'.$index.'.jpg';
        }else{
            $img_src='';
        }
        $res=<<<EOT
        <article class='gallery-article'>
            <a href='$url_gallery'>
            <div>
                <h3>{$gal['name']}</h3>
                <div>
                    <img class='image-article' alt='image' src='$img_src'></img>
                    <a href={$url_modify}><i></i></a>
                </div>
                <div class='overlay'>
                    <div id='image-data'>
                        <span>{$gal->nb_images()}</span>
                        <span>$name</span>
                        <span>{$gal['created_at']}</span>
                    </div>
                    {$image_controls}
                </div>
            </div>
            </a>
        </article>
        EOT;
        return $res;
    }
}