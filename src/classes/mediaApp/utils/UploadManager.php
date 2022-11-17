<?php

namespace iutnc\mediaApp\utils;

use iutnc\mediaApp\model\Image;

class UploadManager
{
    public static function saveImage($file, int $id): bool
    {
        try {
            $errors = array();
            $file_name = $file['name'];
            $file_size = $file['size'];
            $file_tmp = $file['tmp_name'];
            $file_type = $file['type'];
            $file_ext = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));
            $extensions = array("jpeg", "jpg", "png");

            if (in_array($file_ext, $extensions) === false) {
                $errors[] = "extension not allowed, please choose a JPEG or PNG file.";
            }

            if (empty($errors) == true) {
                move_uploaded_file($file_tmp, realpath(".") . "/img/full_size/" . $id . ".jpg");
                self::createThumb(realpath(".") . "/img/full_size/" . $id . ".jpg", realpath(".") . "/img/thumbnails/" . $id . ".jpg");
            } else {
               return false;
            }

            if (is_file(realpath(".") . "/img/full_size/" . $id . ".jpg")) {
                return true;
            } else {
                return false;
            }
            return true;
        } catch (\Throwable $th) {
            return false;
        }
    }

    public static function createThumb($src, $destImagePath)
    {
        try {
            if (is_file($src)) {
                $sourceImage = imagecreatefromjpeg($src);
                $orgWidth = imagesx($sourceImage);
                $orgHeight = imagesy($sourceImage);
                $thumbWidth = floor($orgWidth / 2);
                $thumbHeight = floor($orgHeight * ($thumbWidth / $orgWidth));
                $destImage = imagecreatetruecolor($thumbWidth, $thumbHeight);
                imagecopyresampled($destImage, $sourceImage, 0, 0, 0, 0, $thumbWidth, $thumbHeight, $orgWidth, $orgHeight);
                imagejpeg($destImage, $destImagePath);
                imagedestroy($sourceImage);
                imagedestroy($destImage);
            }
        } catch (\Throwable $th) {
            return false;
        }
        
    }
}
