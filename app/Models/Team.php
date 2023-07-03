<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Team extends Model
{
    protected $fillable = [
        'name',
        'description',
        'email',
        'image',
        'imgPath',
        'imgURL'
    ];


    use HasFactory;

    public function games(): BelongsToMany
    {
        return $this->belongsToMany(Game::class);
    }
}
