<?php
namespace iutnc\mediaApp\model;

class Gallery extends \Illuminate\Database\Eloquent\Model {

    protected $table      = 'atelier1__gallery';  /* le nom de la table */
    protected $primaryKey = 'id';     /* le nom de la clé primaire */
    protected $fillable=['name', 'description', 'author'];
    public    $timestamps = true;    /* si vrai la table doit contenir
                                        les deux colonnes updated_at,
                                        created_at */

    public function images(){
        return $this->hasMany(Image::class, 'gallery_id');
        /* 'Image'     : le nom de la classe du modèle lié   */
            /* 'galery_id' : la clé étrangère dans la table liée */
    }
    public function nb_images(){
        $res=0;
        foreach($this->images as $img){
            $res++;
        }
        return $res;
    }
    public function name(){
        return $this->belongsTo(User::class,'author');
    }
}
