<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Image extends Model
{
    use HasFactory;

    protected $fillable = [
        'images',
        'imgPath',
        'imgURL',
        'game_id'
    ];

    public function game(): BelongsTo
    {
        return $this->belongsTo(Game::class);
    }
}
