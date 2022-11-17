<?php

namespace iutnc\mediaApp\model;

class Image extends \Illuminate\Database\Eloquent\Model
{
    protected $table = 'atelier1__image';
    protected $primaryKey = 'id';
    protected $fillable = ['title', 'description', 'gallery_id', 'altitude', 'longitude', 'latitude', 'photo_date', 'author'];
    public $timestamps = true;

    public static function getById(int $id): ?Image
    {
        return Image::where('id', '=', $id)->first();
    }

    public function keywords()
    {
        return $this->hasMany(Keyword::class, 'image_id');
    }

    public static function addNew($title, $description, $galery_id, $altitude, $longitude, $latitude, $photo_date, $author): Image
    {
        return Image::create(['title' => $title, 'description' => $description, 'gallery_id' => $galery_id, 'altitude' => $altitude, 'longitude' => $longitude, 'latitude' => $latitude, 'photo_date' => $photo_date, 'author' => $author]);
    }
    public function galleryName()
    {
        return $this->belongsTo(Gallery::class, 'gallery_id');
    }
}
