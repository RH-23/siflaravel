<?php

namespace App\Http\Controllers;

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Ingredient extends Model
{
    use HasFactory;
    protected $fillable = ['kode_erp', 'nama', 'kategori_id', 'grade_id', 'uom_id', 'kuantiti'];

    public function kategori()
    {
        return $this->hasOne(Kategorilevel::class, "id", "kategori_id");
    }

    public function grade()
    {
        return $this->hasOne(Gradelevel::class, "id", "grade_id");
    }

    public function uom()
    {
        return $this->hasOne(Uomlevel::class, "id", "uom_id");
    }
}
