<?php

namespace iutnc\mediaApp\Control;

use iutnc\mediaApp\auth\Authentification;
use \iutnc\mf\control\AbstractController;
use \iutnc\mediaApp\model\Gallery;
use iutnc\mediaApp\model\Image;
use iutnc\mediaApp\model\Keyword;
use iutnc\mediaApp\model\User;
use \iutnc\mediaApp\view\HomeView;
use iutnc\mediaApp\view\SearchView;
use iutnc\mf\router\Router;

class SearchController extends AbstractController
{
    public function execute($error = null): void
    {
        if ($this->request->method === 'GET') {
            if (!isset($this->request->get['keywords']) || empty($this->request->get['keywords'])) {
                Router::executeRoute('home');
                return;
            }

            $galleries = Gallery::where('hasImage', '=', true);

            if (!Authentification::connectedUser()) {
                $galleries = $galleries->where('isPrivate', '=', false);
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

            if (Authentification::connectedUser()) {
                $userAccess = User::where('id', '=', Authentification::connectedUser())->first()->access()->pluck('gallery_id')->toArray();

                $galleries = $galleries->filter(function ($k) use ($userAccess) {
                    return ($k['isPrivate'] == 0) || ($k['isPrivate'] == 1 && in_array($k['id'], $userAccess)) || ($k['author'] == Authentification::connectedUser());
                });
            }

            $searchView = new SearchView(['images' => $images, 'galleries' => $galleries]);
            $searchView->makePage();
        }
    }
}
