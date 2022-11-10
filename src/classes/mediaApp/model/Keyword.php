<?php

namespace iutnc\mediaApp\model;

class Keyword extends \Illuminate\Database\Eloquent\Model
{
    protected $table = 'atelier1__keyword';
    protected $fillable = ['content', 'gallery_id', 'image_id'];
    public $timestamps = false;
}
