<?php

namespace iutnc\mediaApp\auth;

use iutnc\mediaApp\model\User;
use iutnc\mf\auth\AbstractAuthentification;
use iutnc\mf\exceptions\AuthentificationException;

class Authentification extends AbstractAuthentification
{
    const ACCESS_LEVEL_USER = 1;
    const ACCESS_LEVEL_ADMIN = 10;

    public static function register(string $username, string $fullname, string $password, $level = self::ACCESS_LEVEL_USER): void
    {
        $user = User::where('username', '=', $username)->first();

        if ($user) {
            throw new AuthentificationException("Username already used");
            return;
        }

        $user = User::create(['username' => $username, 'fullname' => $fullname, 'password' => self::makePassword($password), 'user_level' => $level]);
    }

    public static function login(string $username, string $password): void
    {
        $user = User::where('username', '=', $username)->first();

        if (!$user) {
            throw new AuthentificationException("Username not found");
            return;
        }

        self::checkPassword($password, $user->password, $user->id, $user->user_level);
    }
}
