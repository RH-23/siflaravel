<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable = ['kode', 'product'];

    // public function ingredient()
    // {
    //     return $this->hasOne(Ingredient::class, "id", "ingredients_id");
    // }
}
