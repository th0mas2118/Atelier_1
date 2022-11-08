<?php

namespace iutnc\mediaApp\model;

class Comment extends \Illuminate\Database\Eloquent\Model
{

    protected $table      = 'atelier1__comment';  /* le nom de la table */
    protected $primaryKey = 'id';     /* le nom de la clé primaire */
    protected $fillable = ['content', 'image_id', 'user_id'];
    public    $timestamps = true;    /* si vrai la table doit contenir
                                         les deux colonnes updated_at,
                                         created_at */

    public function user()
    {
        return $this->belongsTo('\iutnc\tweeterapp\model\User', 'user_id');
    }
}
