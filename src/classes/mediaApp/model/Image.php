<?php

namespace iutnc\mediaApp\model;

class Image extends \Illuminate\Database\Eloquent\Model
{
    protected $table = 'atelier1__image';
    protected $primaryKey = 'id';
    public $timestamps = true;

    public static function getById(int $id): ?Image
    {
        return Image::where('id', '=', $id)->first();
    }
}
