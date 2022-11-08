<?php

namespace iutnc\mediaApp\model;

class Image extends \Illuminate\Database\Eloquent\Model
{
    protected $table = 'atelier1__image';
    protected $primaryKey = 'id';
    protected $fillable = ['title', 'description', 'galery_id', 'altitude', 'longitude', 'latitude', 'photo_date'];
    public $timestamps = true;

    public static function getById(int $id): ?Image
    {
        return Image::where('id', '=', $id)->first();
    }

    public static function addNew($title, $description, $galery_id, $altitude, $longitude, $latitude, $photo_date): Image
    {
        return Image::create(['title' => $title, 'description' => $description, 'galery_id' => $galery_id, 'altitude' => $altitude, 'longitude' => $longitude, 'latitude' => $latitude, 'photo_date' => $photo_date]);
    }
}
