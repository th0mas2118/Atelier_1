<?php

namespace iutnc\mediaApp\Control;

use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\model\Gallery;
use iutnc\mediaApp\model\Image;
use iutnc\mediaApp\model\Keyword;
use \iutnc\mediaApp\view\HomeView;
use iutnc\mediaApp\view\SearchView;
use iutnc\mf\router\Router;

class SearchController extends AbstractController
{
    public function execute(): void
    {
        if ($this->request->method === 'GET') {
            if (!isset($this->request->get['keywords']) || empty($this->request->get['keywords'])) {
                Router::executeRoute('home');
                return;
            }

            $searchKeywords = explode(" ", $this->request->get['keywords']);
            $imageIds = [];
            $galleryIds = [];

            foreach ($searchKeywords as $keyword) {
                $result = Keyword::where('content', '=', $keyword)->get();

                foreach ($result as $i) {
                    if ($i->gallery_id !== null) {
                        array_push($galleryIds, $i->gallery_id);
                    }

                    if ($i->image_id !== null) {
                        array_push($imageIds, $i->image_id);
                    }
                }
            }

            $images = Image::whereIn('id', $imageIds)->get();
            $galleries = Gallery::whereIn('id', $galleryIds)->get();

            $searchView = new SearchView(['images' => $images, 'galleries' => $galleries]);
            $searchView->makePage();
        }
    }
}
