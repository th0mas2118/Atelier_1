<?php

namespace iutnc\mediaApp\model;

class User extends \Illuminate\Database\Eloquent\Model
{
    protected $table = 'atelier1__user';
    protected $primaryKey = 'id';
    protected $fillable = ['username', 'fullname', 'password', 'user_level'];
    public $timestamps = false;


    public function galleries()
    {
        return $this->hasMany(Gallery::class, 'author', 'id');
    }
}
