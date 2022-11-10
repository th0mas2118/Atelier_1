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

    public function hasAccessTo(int $gallery_id)
    {
        $access = $this->hasMany(Access::class, "user_id")->where('gallery_id', '=', $gallery_id)->first();

        if ($access) {
            return true;
        } else {
            return false;
        }
    }
}
