<?php

namespace iutnc\media\model;

class Comment extends \Illuminate\Database\Eloquent\Model{

    protected $table      = 'comment';  /* le nom de la table */
    protected $primaryKey = 'id';     /* le nom de la clé primaire */
    public    $timestamps = true;    /* si vrai la table doit contenir
                                         les deux colonnes updated_at,
                                         created_at */

    public function user() {
    return $this->belongsTo('\iutnc\tweeterapp\model\user', 'user_id');
    }
}