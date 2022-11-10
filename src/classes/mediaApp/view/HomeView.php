<?php

namespace iutnc\mediaApp\view;

use \iutnc\mf\view\Renderer;
use \iutnc\meadiaApp\model\Image;
use \iutnc\mediaApp\utils\RenderFunction;

class Homeview extends MainView implements Renderer
{
    public function render(): string
    {
        $res = "<section id='home-list'>";

        foreach ($this->data["galleryList"] as $g) {
            $name = $g->name()->first()['fullname'];
            $nb_image = $g->nb_images();
            $image_list = $g->images()->get();
            $count = count($image_list);
            $random = rand(0, $count - 1);
            $url_gallery = $this->router->urlFor('gallery', [['gallery_id', $g->id]]);

            if ($count > 0) {
                $index = $image_list[$random]->id;
                $img_src = $this->request->root . '/img/thumbnails/' . $index . '.jpg';
                $res .= <<<EOT
                    <article class='gallery-article'>
                        <a href={$url_gallery}>
                        <div>
                        <h3>{$g['name']}</h3>
                        <div>
                            <img alt='image' src=$img_src></img>
                        </div>
                        <div>
                            <span>{$nb_image}</span>
                            <span>$name</span>
                            <span>{$g['created_at']}</span>
                        </div>
                        </div>
                        </a>
                    </article>
            EOT;
            }
        }
        $res.="</section>";
        $page = isset($this->request->get['page']) && !empty($this->request->get['page']) ? $this->request->get['page'] : 1;
        $previousPage = $page-1;
        $nextPage = $page + 1;
        $nbrePage = 20;
        $p = ceil($this->data["nombreArticle"]/$nbrePage);
        $btnP = $page>1 ? "<a href='#'><i class='fa-solid fa-angles-left'></i></a>
                <a href='?action=home&page={$previousPage}'><i class='fa-solid fa-chevron-left'></i></a>" : '';
        $btnN = 
        $res .= "<section id='gallery'>
            <div class='pagination'>
                {$btnP}
                <a>$page</a>
                <a href='?action=home&page={$nextPage}'><i class='fa-solid fa-chevron-right'></i></a>
                <a href='?action=home&page={$p}''><i class='fa-solid fa-angles-right'></i></a>
            </div>
        </section>";
        
        return $res;
    }
}