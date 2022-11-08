<?php
namespace iutnc\mediaApp\model;

class Gallery extends \Illuminate\Database\Eloquent\Model {

    protected $table      = 'atelier1__galery';  /* le nom de la table */
    protected $primaryKey = 'id';     /* le nom de la clé primaire */
    public    $timestamps = true;    /* si vrai la table doit contenir
                                        les deux colonnes updated_at,
                                        created_at */

    public function images(){
        return $this->hasMany('Image', 'galery_id');
        /* 'Image'     : le nom de la classe du modèle lié   */
            /* 'galery_id' : la clé étrangère dans la table liée */
    }
}
