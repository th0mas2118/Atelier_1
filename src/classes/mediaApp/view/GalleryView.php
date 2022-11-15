<?php

namespace iutnc\mediaApp\view;

use iutnc\mediaApp\view\MainView;
use iutnc\mf\view\Renderer;
use \iutnc\mediaApp\utils\RenderFunction;

class GalleryView extends MainView implements Renderer
{
    public function render(): string
    {
        $url_gallery = $_GET['gallery_id'];
        $title = $this->data['gallery']->name;
        $keyword = "";
        $url_user=$this->router->urlFor('user',[['id', $this->data['gallery']->author]]);
        $html = "<div id='gallery-info'><h1>{$title}</h1>";
        $html.="<h4>Author : <a href='{$url_user}'>{$this->data['gallery']->name()->first()['username']}</a></h4>";
        $html .= "<p>Description : {$this->data['gallery']->description}</p>";
        foreach ($this->data['gallery']->keywords as $key) {
            $keyword .= $key->content . ' ';
        }
        $html .= "<span>Keywords: $keyword</span></div>";
        $html .= "<div class='modify-image-gallery-button'><a href='{$thi->data['url_modify']}' >Modify</a></div>";
        $html .= '<section id="gallery-list">';
        $root = $this->request->root;
        foreach ($this->data['images'] as $image) {
            $url_image = $this->router->urlFor('image', [['id', $image->id]]);
            $html .= RenderFunction::renderImage($image, $root, $url_image);
        }
        $html .= "</section>";


        $page = isset($this->request->get['page']) && !empty($this->request->get['page']) ? $this->request->get['page'] : 1;
        $previousPage = $page - 1;
        $nextPage = $page + 1;
        $nbrePage = 20;
        $pageInit = 0;
        $p = ceil($this->data["nombreArticle"] / $nbrePage);
        $btnP = $page > 1 ? "<a href='?action=gallery&gallery_id={$url_gallery}&page={$pageInit}'><i class='fa-solid fa-angles-left'></i></a>
                <a href='?action=gallery&gallery_id={$url_gallery}&page={$previousPage}'><i class='fa-solid fa-chevron-left'></i></a>" : '';

        $btnN = $page < $p ? "<a href='?action=gallery&gallery_id={$url_gallery}&page={$nextPage}'><i class='fa-solid fa-chevron-right'></i></a>
        <a href='?action=gallery&gallery_id={$url_gallery}&page={$p}'><i class='fa-solid fa-angles-right'></i></a>" : '';
            $html .= "<section id='gallery'>
            <div class='pagination'>
                {$btnP}
                <a>$page</a>
                {$btnN}
            </div>";
        $html .= "</section>";
        return $html;
    }
}
