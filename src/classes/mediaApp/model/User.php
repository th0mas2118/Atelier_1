<?php

namespace iutnc\mediaApp\model;

class User extends \Illuminate\Database\Eloquent\Model{
    protected $table='user';
    protected $primarykey='id';
    public $timestamps=false;


    public function galeries(){
        return $this->hasMany('\iutnc\meadiaApp\model\Gallery','author');
    }
}