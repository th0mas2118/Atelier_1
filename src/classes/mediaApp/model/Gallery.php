<?php

namespace iutnc\mediaApp\model;

class Gallery extends \Illuminate\Database\Eloquent\Model
{

    protected $table      = 'atelier1__gallery';  /* le nom de la table */
    protected $primaryKey = 'id';     /* le nom de la clé primaire */
    protected $fillable = ['name', 'description', 'author', 'isPrivate'];
    public    $timestamps = true;    /* si vrai la table doit contenir
                                        les deux colonnes updated_at,
                                        created_at */

    public function images()
    {
        return $this->hasMany(Image::class, 'gallery_id');
        /* 'Image'     : le nom de la classe du modèle lié   */
        /* 'galery_id' : la clé étrangère dans la table liée */
    }

    public function nb_images()
    {
        $res = 0;
        foreach ($this->images as $img) {
            $res++;
        }
        return $res;
    }

    public function name()
    {
        return $this->belongsTo(User::class, 'author');
    }

    public static function addNew($title, $descriprion, $author, $isPrivate)
    {
        return Gallery::create(['name' => $title, 'description' => $descriprion, 'author' => $author, 'isPrivate' => $isPrivate]);
    }

    public function keywords()
    {
        return $this->hasMany(Keyword::class, 'gallery_id');
    }

    public function usersWithAccess()
    {
        return $this->belongsToMany(User::class, Access::class, 'gallery_id', 'user_id');
    }

    public function canUserAccess($id): bool
    {
        $access = $this->belongsToMany(User::class, Access::class, 'gallery_id', 'user_id')->pluck('user_id')->toArray();

        if (in_array($id, $access) || $this->author === $id) {
            return true;
        }

        return false;
    }
}
