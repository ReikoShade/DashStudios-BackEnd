<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    public const ID_USER = 1;
    public const ID_ADMIN = 2;

    public function users(): BelongsToMany
    {
        return $this->belongsToMany(User::class);

    }
}
