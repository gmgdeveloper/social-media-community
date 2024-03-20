<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
use Image;

class FileUploader extends Model
{
    use HasFactory;
    public static function upload(UploadedFile $uploaded_file, $upload_to, $width = null, $height = null, $optimized_width = 250, $optimized_height = null)
    {
        // Check if the uploaded file is valid
        if (!$uploaded_file->isValid()) {
            return "The uploaded file is not valid.";
        }
    
        // Ensure that the upload directory exists
        if (!is_dir($upload_to)) {
            return "The upload directory doesn't exist.";
        }
    
        // Generate a unique file name
        $file_name = time() . '-' . uniqid() . '.' . $uploaded_file->getClientOriginalExtension();
    
        // Move the uploaded file to the specified location
        try {
            // Image optimization
            $image = Image::make($uploaded_file->path())->orientate()->resize($width, $height, function ($constraint) {
                $constraint->upsize();
                $constraint->aspectRatio();
            });
    
            // Save the image based on the provided conditions
            if ($width === null) {
                $image->save($upload_to . '/' . $file_name);
            } else {
                // Ultra Image optimization
                $optimized_path = $upload_to . '/optimized';
                if (!is_dir($optimized_path)) {
                    mkdir($optimized_path, 0755, true); // Create the optimized directory if it doesn't exist
                }
                $image->resize($optimized_width, $optimized_height, function ($constraint) {
                    $constraint->upsize();
                    $constraint->aspectRatio();
                });
                $image->save($optimized_path . '/' . $file_name);
            }
        } catch (\Exception $e) {
            // Log the error or handle it accordingly
            return "Error uploading file: " . $e->getMessage();
        }
    
        return $file_name;
    }
    
    
}
