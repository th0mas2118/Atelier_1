<?php

namespace iutnc\mediaApp\model;

class Access extends \Illuminate\Database\Eloquent\Model
{
    protected $table = 'atelier1__access';
    protected $fillable = ['gallery_id', 'user_id'];
    public $timestamps = false;
}
