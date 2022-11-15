<?php

namespace iutnc\mediaApp\utils;

use \iutnc\mf\router\Router;

class RenderFunction
{
    public static function renderGallery($gal, $root, $urls = null)
    {
        $url_modify = null;
        $url_delete = null;
        if ($urls) {
            if($urls['modify']){
                $tmp_modif=" <a href='{$urls['modify']}'><i class='fa-solid fa-pen-to-square'></i></a>";
            }
            else{
                $tmp_modif=$url_modify;
            }
            if($urls['delete']){
                $tmp_delete="<a href='{$urls['delete']}'><i class='fa-solid fa-trash'></i></a>";
            }
            else{
                $tmp_delete=$url_delete;
            }
            
            $image_controls = <<<EOT
            <div id='image-controls'>
            {$tmp_modify}
            {$tmp_delete}
            </div>
            EOT;
        } else {
            $image_controls = "";
        }
        $r = new Router();
        $url_gallery = $r->urlFor('gallery', [['gallery_id', $gal->id]]);
        $name = $gal->name()->first()['fullname'];
        $images_list = $gal->images()->get();
        $count = count($images_list);
        $random = rand(0, $count - 1);
        if ($count > 0) {
            $index = $images_list[$random]->id;
            $img_src = $root . '/img/thumbnails/' . $index . '.jpg';
        } else {
            $img_src = '';
        }
        if ($count == 0) {
            $img_src = $root . '/img/thumbnails/no-image.jpg';
        }
        $res = <<<EOT
        <article class='gallery-article'>
            <a href='{$url_gallery}'>
                <div>
                    <h3>{$gal['name']}</h3>
                    <div>
                        <img alt='image' src='$img_src'></img>
                    </div>
                    <div class="data-container">
                        <span>{$gal->nb_images()} Images<br></span>
                        <span>Author :  $name<br></span>
                        <span>Creation date : {$gal['created_at']}</span>
                    </div>
                </div>
            </a>
            {$image_controls}
        </article>
        EOT;
        return $res;
    }

    public static function renderImage($image, $root, $url_image)
    {
        $img_src = $root . '/img/thumbnails/' . $image->id . '.jpg';
        $res = <<<EOT
        <article class='image-article'>
            <a href=$url_image>
                <div>
                    <img alt="" src=$img_src>
                </div>
            </a>
        </article>
        EOT;
        return $res;
    }
}
