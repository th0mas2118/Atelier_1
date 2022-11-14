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
        $keyword="";
        $html = "<h1>{$title}</h1>";
        $html .= "<h3>Description : {$this->data['gallery']->description}</h3>";
        foreach ($this->data['gallery']->keywords as $key) {
            $keyword .= $key->content . ' ';
        }
        $html .="<span>Keywords :$keyword</span>";
        $html .= "";
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
        $p = ceil($this->data["nbreArticle"] / $nbrePage);
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
