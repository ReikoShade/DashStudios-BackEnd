<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Game extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'releaseDate',
        'rating',
        'price',
        'remain',
        'link',
    ];


    public function genres(): BelongsToMany
    {
        return $this->belongsToMany(Genre::class);
    }
    public function platforms(): BelongsToMany
    {
        return $this->belongsToMany(Platform::class);
    }
    public function teams(): BelongsToMany
    {
        return $this->belongsToMany(Team::class);
    }
    public function comments(): HasMany
    {
        return $this->hasMany(Comment::class);
    }
    public function images(): HasMany
    {
        return $this->hasMany(Image::class);
    }
}
